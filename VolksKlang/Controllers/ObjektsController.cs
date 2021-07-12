using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mime;
using System.Text.Encodings.Web;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using VolksKlang.Data;
using VolksKlang.Models;
 
namespace VolksKlang.Controllers
{
    public class ObjektsController : Controller
    {
        private readonly ApplicationDbContext _context;
        public ObjektsController(ApplicationDbContext context)
        {
            _context = context;
        }
        // GET: Objekts
        public IActionResult Index(string searchstring)
        {
            ViewBag.search = searchstring;
                
            var list = new List<VolksKlang.Models.Objekt>();
            try
            {

                if (!String.IsNullOrEmpty(searchstring))
                {
                    list = _context.Objekt.Where(o => o.Vorlage == false && (o.Beschreibung).Contains(searchstring)).Include(o => o.Bezeichnung).ToList();  
                    foreach(var item in list)
                    {
                        string highlighted = "";
                        for (int index = 0; ; index += searchstring.Length)
                        {
                            int preindex = index;
                            index = item.Beschreibung.IndexOf(searchstring, index,StringComparison.OrdinalIgnoreCase);
                            if (index == -1)
                            {
                                highlighted = highlighted + HtmlEncoder.Default.Encode(item.Beschreibung.Substring(preindex, item.Beschreibung.Length- preindex));
                                break;
                            }
                            highlighted = highlighted + HtmlEncoder.Default.Encode(item.Beschreibung.Substring(preindex, index - preindex));
                            highlighted = highlighted + "<span style='background-color:yellow;'>";
                            highlighted = highlighted + HtmlEncoder.Default.Encode(item.Beschreibung.Substring(index, searchstring.Length));
                            highlighted = highlighted + "</span>";
                        }
                        item.Beschreibung = highlighted;
                    }
                } else
                {
                    list = _context.Objekt.Where(o => o.Vorlage == false).Include(o => o.Bezeichnung).ToList();
                }
            } catch (Exception ex)
            {
                ViewBag.Alert = ex.Message;
            }
            ViewBag.usr= User.Identity.Name;   
            return View(list);
        
        }
        // GET: Objekts/Create
        public async Task<IActionResult> Create()
        {
            Objekt objekt= new Objekt();
            var usr= User.Identity.Name;
            if(usr == "p_rath@gmx.at")
            {
                objekt.Kuerzel = "PR";
            } else if (usr == "a.wiesenhofer@volksklang.at")
            {
                objekt.Kuerzel = "AW";
            }
            else if (usr == "erwald@gmx.at")
            {
                objekt.Kuerzel = "EK";
            }
       
                 
            _context.Add(objekt);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Edit),new { id = objekt.ID });
        }
        [BindProperty]
        public FileUpload FileUpload { get; set; }
        public IActionResult Upload()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Upload(int id)
        {
            try
            {
                using (var memoryStream = new MemoryStream())
                {
                    await FileUpload.FormFile.CopyToAsync(memoryStream);
                    // Upload the file if less than 5 MB
                    if (memoryStream.Length < 5097152)
                    {
                        var watermarkedStream = new MemoryStream();
                        using (var img = Image.FromStream(memoryStream))
                        {
                            using (var graphic = Graphics.FromImage(img))
                            {
                                var font = new Font(FontFamily.GenericSansSerif, img.Width/6, FontStyle.Bold, GraphicsUnit.Pixel);
                                var color = Color.FromArgb(16, 255, 255, 255);
                                var brush = new SolidBrush(color);
                                var point = new Point(0,0);
                                graphic.DrawString("Volksklang", font, brush, point);

                                color = Color.FromArgb(16, 0, 0, 0);
                                brush = new SolidBrush(color);
                                point = new Point(0, img.Height/2);
                                graphic.DrawString("Volksklang", font, brush, point);


                                img.Save(watermarkedStream, ImageFormat.Png);
                            }
                        }
                        var file = new AppFile()
                        {
                            Content = watermarkedStream.ToArray(),
                            Serial = id
                        };
                        _context.File.Add(file);
                        await _context.SaveChangesAsync();
                        return RedirectToAction(nameof(Edit), new { id });
                    }
                    else
                    {
                        // ModelState.AddModelError("File", "The file is too large.");
                        ViewBag.Alert = "Die Datei ist zu groß";
                    }
                }
            } catch(Exception ex)
            {
                ViewBag.Alert += ex.Message;
            }
            return View();
        }
        public async Task<IActionResult> Download(int id)
        {
            var requestFile = await _context.File.SingleOrDefaultAsync(f=>f.Id==id);
            if (requestFile == null)
            {
                return View();
            }
            // Don't display the untrusted file name in the UI. HTML-encode the value.
            return File(requestFile.Content, MediaTypeNames.Application.Octet, WebUtility.HtmlEncode(requestFile.UntrustedName));
        }

 
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ID,Objektbezeichnung,Beschreibung,Material,Abmessungen,Zustand,Objektbeschriftung,Name,Euro,Datum,Vorlage,Kuerzel")] Objekt objekt, int Herkunft, int Kategorie, int Bezeichnung ,string button)
        {
            if (button == null)
            {
                 objekt = await _context.Objekt.Include(o => o.Herkunft).Include(o => o.Kategorie).Include(o => o.Bezeichnung).FirstOrDefaultAsync(o => o.ID == id);
               
            } else { 
    
 
            objekt.Herkunft = await _context.Herkunft.AnyAsync(m => m.ID == Herkunft) ? await _context.Herkunft.FirstAsync(m => m.ID == Herkunft) : null;
            _context.Entry(objekt).Reference(p => p.Herkunft).IsModified = true;
            
            objekt.Bezeichnung = await _context.Bezeichnung.AnyAsync(m => m.ID == Bezeichnung) ? await _context.Bezeichnung.FirstAsync(m => m.ID == Bezeichnung) : null;
            _context.Entry(objekt).Reference(p => p.Bezeichnung).IsModified = true;
                                      
    
            objekt.Kategorie = await _context.Kategorie.AnyAsync(m => m.ID == Kategorie) ? await _context.Kategorie.FirstAsync(m => m.ID == Kategorie) : null;
            _context.Entry(objekt).Reference(p => p.Kategorie).IsModified = true;
                if (ModelState.IsValid)
                {
                    try
                    {
                        _context.Update(objekt);
                        await _context.SaveChangesAsync();
                    }
                    catch (DbUpdateConcurrencyException)
                    {
                        if (!ObjektExists(objekt.ID))
                        {
                            return NotFound();
                        }
                        else
                        {
                            throw;
                        }
                    }
                    if (button == "Speichern")
                    {
                        return RedirectToAction(nameof(Index));
                    }
                    else if (button == "OK")
                    {
                        return RedirectToAction(nameof(Edit), new { id });
                    }
                    else
                    {
                        return RedirectToAction(nameof(Upload), new { id });
                    }
                }
                
            }
            ViewBag.usr = User.Identity.Name;
            ViewBag.images = _context.File.Where(f => f.Serial == id).ToList();
            ViewBag.Herkunfts = await _context.Herkunft.ToListAsync();
            ViewBag.Kategories = await _context.Kategorie.ToListAsync();
            if (objekt.Bezeichnung == null)
            {
                ViewBag.Bezeichnungs=await _context.Bezeichnung.ToListAsync();
            } else if (objekt.Bezeichnung.ID==23 || objekt.Bezeichnung.Parent == 23)
            {
                ViewBag.Bezeichnungs = await _context.Bezeichnung.Where(b=>b.ID==23 || b.Parent==23).ToListAsync();
            } else
            {
                ViewBag.Bezeichnungs = await _context.Bezeichnung.ToListAsync();
            }
                
            return View(objekt);
        }
 
        private bool ObjektExists(int id)
        {
            return _context.Objekt.Any(e => e.ID == id);
        }
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var objekt = await _context.Objekt
                .FirstOrDefaultAsync(m => m.ID == id);
            if (objekt == null)
            {
                return NotFound();
            }
            return View(objekt);
        }
        // POST: Objekts1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var objekt = await _context.Objekt.FindAsync(id);
            _context.Objekt.Remove(objekt);
            if(HttpContext.User.Identity.Name == "p_rath@gmx.at")
            {
                await _context.SaveChangesAsync();
            }
           
            return RedirectToAction(nameof(Index));
        }
    }
    public class FileUpload
    {
      
        [Display(Name = "File")]
        public IFormFile FormFile { get; set; }
    }
 

}
