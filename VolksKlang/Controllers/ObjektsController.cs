using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
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
        public async Task<IActionResult> Index()
        {
            return View(await _context.Objekt.Include(o=>o.Herkunft).ToListAsync());
        }



        // GET: Objekts/Create
        public async Task<IActionResult> Create()
        {
            Objekt objekt= new Objekt();
            _context.Add(objekt);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Edit),new { id = objekt.ID });

        }



        // GET: Objekts/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            
            ViewBag.Herkunfts = await _context.Herkunft.ToListAsync();
            var objekt = await _context.Objekt.Include(o=>o.Herkunft).FirstOrDefaultAsync(o => o.ID==id);
 

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
        public async Task<IActionResult> Edit(int id, [Bind("ID,Objektbezeichnung,Beschreibung,Material,Abmessungen,Zustand,Objektbeschriftung")] Objekt objekt, int Herkunft)
        {
            if (id != objekt.ID)
            {
                return NotFound();
            }

            objekt.Herkunft = await _context.Herkunft.AnyAsync(m => m.ID == Herkunft) ? await _context.Herkunft.FirstAsync(m => m.ID == Herkunft) : null;
            _context.Entry(objekt).Reference(p => p.Herkunft).IsModified = true;

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
            return View(objekt);
        }

 

        private bool ObjektExists(int id)
        {
            return _context.Objekt.Any(e => e.ID == id);
        }
    }
}
