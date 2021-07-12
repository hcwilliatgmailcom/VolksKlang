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
    public class VorlagesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public VorlagesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Objekts
        public IActionResult Index()
        {

            var list = new List<VolksKlang.Models.Objekt>();

            try
            {
                list = _context.Objekt.Where(o => o.Vorlage == true).Include(o => o.Herkunft).ToList();


            }
            catch (Exception ex)
            {
                ViewBag.Alert = ex.Message;
            }

            return View(list);

        }

        public IActionResult Templates()
        {

            var list = new List<VolksKlang.Models.Objekt>();

            try
            {
                list = _context.Objekt.Where(o => o.Vorlage == true).Include(o => o.Herkunft).ToList();


            }
            catch (Exception ex)
            {
                ViewBag.Alert = ex.Message;
            }

            return View(list);

        }



        // GET: Objekts/Create
        public async Task<IActionResult> Create()
        {
            Objekt objekt = new Objekt();
            objekt.Vorlage = true;
            _context.Add(objekt);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Edit), new { id = objekt.ID });

        }


        public async Task<IActionResult> Copy(int? id)
        {

            var quellobjekt = await _context.Objekt.Include(o => o.Herkunft).Include(o => o.Kategorie).Include(o => o.Bezeichnung).FirstOrDefaultAsync(o => o.ID == id);


            Objekt neuesobjekt = new Objekt()
            {
                Herkunft = quellobjekt.Herkunft,
                Standort = quellobjekt.Standort,
                Objektbezeichnung = quellobjekt.Objektbezeichnung,
                Kategorie = quellobjekt.Kategorie,
                Beschreibung = quellobjekt.Beschreibung,
                Material = quellobjekt.Material,
                Abmessungen = quellobjekt.Abmessungen,
                Zustand = quellobjekt.Zustand,
                Objektbeschriftung = quellobjekt.Objektbeschriftung,
                Bezeichnung = quellobjekt.Bezeichnung,
                Vorlage = false,
                Name = quellobjekt.Name,
                Datum = quellobjekt.Datum,
                Euro = quellobjekt.Euro
            };


            var usr = User.Identity.Name;
            if (usr == "p_rath@gmx.at")
            {
                neuesobjekt.Kuerzel = "PR";
            }
            else if (usr == "a.wiesenhofer@volksklang.at")
            {
                neuesobjekt.Kuerzel = "AW";
            }
            else if (usr == "erwald@gmx.at")
            {
                neuesobjekt.Kuerzel = "EK";
            }


            _context.Add(neuesobjekt);
            await _context.SaveChangesAsync();


            return RedirectToAction(nameof(Edit), "Objekts", new { neuesobjekt.ID});
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
            var objekt = await _context.Objekt.Include(o => o.Herkunft).Include(o => o.Kategorie).Include(o => o.Bezeichnung).FirstOrDefaultAsync(o => o.ID == id);


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
        public async Task<IActionResult> Edit(int id, [Bind("ID,Objektbezeichnung,Beschreibung,Material,Abmessungen,Zustand,Objektbeschriftung,Name,Euro,Datum")] Objekt objekt, int Herkunft, int Kategorie, int Bezeichnung, string button)
        {
            if (id != objekt.ID)
            {
                return NotFound();
            }


            if (_context.File.Any(e => e.Serial == id))
            {
                ViewBag.image = true;
            }

            objekt.Herkunft = await _context.Herkunft.AnyAsync(m => m.ID == Herkunft) ? await _context.Herkunft.FirstAsync(m => m.ID == Herkunft) : null;
            _context.Entry(objekt).Reference(p => p.Herkunft).IsModified = true;

            objekt.Bezeichnung = await _context.Bezeichnung.AnyAsync(m => m.ID == Bezeichnung) ? await _context.Bezeichnung.FirstAsync(m => m.ID == Bezeichnung) : null;
            _context.Entry(objekt).Reference(p => p.Bezeichnung).IsModified = true;

            objekt.Kategorie = await _context.Kategorie.AnyAsync(m => m.ID == Kategorie) ? await _context.Kategorie.FirstAsync(m => m.ID == Kategorie) : null;
            _context.Entry(objekt).Reference(p => p.Kategorie).IsModified = true;

            objekt.Vorlage = true;

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


                return RedirectToAction(nameof(Index));



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
    }




}
