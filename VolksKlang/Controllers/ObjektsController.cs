using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mime;
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
                } else
                {

                    list = _context.Objekt.Where(o => o.Vorlage == false).Include(o => o.Bezeichnung).ToList();
                }


            } catch (Exception ex)
            {
                ViewBag.Alert = ex.Message;
            }


            ViewBag.usr= HttpContext.User.Identity.Name;   


            return View(list);
        
        }



        // GET: Objekts/Create
        public async Task<IActionResult> Create()
        {
            Objekt objekt= new Objekt();
            _context.Add(objekt);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Edit),new { id = objekt.ID });

        }


        [BindProperty]
        public FileUpload FileUpload { get; set; }


        public async Task<IActionResult> Upload()
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

                    // Upload the file if less than 2 MB
                    if (memoryStream.Length < 2097152)
                    {
                        var file = new AppFile()
                        {
                            Content = memoryStream.ToArray(),
                            Serial = id
                        };


                        if (_context.File.Any(e => e.Serial == id))
                        {
                            var oldfile = await _context.File.FirstAsync(f => f.Serial == id);

                            _context.File.Remove(oldfile);
                            await _context.SaveChangesAsync();
                        }

                        _context.File.Add(file);

                        await _context.SaveChangesAsync();
                        return RedirectToAction(nameof(Edit), new { id });


                    }
                    else
                    {
                        ModelState.AddModelError("File", "The file is too large.");
                    }
                }
            } catch(Exception ex)
            {

            }

            return View();
        }

        public async Task<IActionResult> Download(int id)
        {

            var requestFile = await _context.File.SingleOrDefaultAsync(f=>f.Serial==id);

            if (requestFile == null)
            {
                return View();
            }


            // Don't display the untrusted file name in the UI. HTML-encode the value.
            return File(requestFile.Content, MediaTypeNames.Application.Octet, WebUtility.HtmlEncode(requestFile.UntrustedName));

        }






    // GET: Objekts/Edit/5
    public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            
            ViewBag.Herkunfts = await _context.Herkunft.ToListAsync();

            ViewBag.Bezeichnungs = await _context.Bezeichnung.ToListAsync();

            ViewBag.Kategories = await _context.Kategorie.ToListAsync();
            var objekt = await _context.Objekt.Include(o=>o.Herkunft).Include(o => o.Kategorie).Include(o => o.Bezeichnung).FirstOrDefaultAsync(o => o.ID==id);


            if (_context.File.Any(e => e.Serial == id))
            {
                ViewBag.image = true;
            }


            if (objekt == null)
            {
                return NotFound();
            }
            return View(objekt);
        }

        // POST: Objekts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ID,Objektbezeichnung,Beschreibung,Material,Abmessungen,Zustand,Objektbeschriftung,Name,Euro,Datum,Vorlage")] Objekt objekt, int Herkunft, int Kategorie, int Bezeichnung ,string button)
        {
            if (id != objekt.ID)
            {
                return NotFound();
            }


            if (_context.File.Any(e => e.Serial == id))
            {
                ViewBag.image =true;
            }

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

                if (button == "Speichern") {
                    return RedirectToAction(nameof(Index));
                } else
                {
                    return RedirectToAction(nameof(Upload),new { id });
                }

                
            }


            ViewBag.Herkunfts = await _context.Herkunft.ToListAsync();
            ViewBag.Kategories = await _context.Kategorie.ToListAsync();
            ViewBag.Bezeichnungs = await _context.Bezeichnung.ToListAsync();


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
