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
    public class BezeichnungsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public BezeichnungsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Bezeichnungs
        public async Task<IActionResult> Index()
        {
            return View(await _context.Bezeichnung.ToListAsync());
        }

        // GET: Bezeichnungs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bezeichnung = await _context.Bezeichnung
                .FirstOrDefaultAsync(m => m.ID == id);
            if (bezeichnung == null)
            {
                return NotFound();
            }

            return View(bezeichnung);
        }

        // GET: Bezeichnungs/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Bezeichnungs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ID,Name,Kuerzel")] Bezeichnung bezeichnung)
        {
            if (ModelState.IsValid)
            {
                _context.Add(bezeichnung);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(bezeichnung);
        }

        // GET: Bezeichnungs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bezeichnung = await _context.Bezeichnung.FindAsync(id);
            if (bezeichnung == null)
            {
                return NotFound();
            }
            return View(bezeichnung);
        }

        // POST: Bezeichnungs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ID,Name,Kuerzel")] Bezeichnung bezeichnung)
        {
            if (id != bezeichnung.ID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bezeichnung);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BezeichnungExists(bezeichnung.ID))
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
            return View(bezeichnung);
        }

        // GET: Bezeichnungs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bezeichnung = await _context.Bezeichnung
                .FirstOrDefaultAsync(m => m.ID == id);
            if (bezeichnung == null)
            {
                return NotFound();
            }

            return View(bezeichnung);
        }

        // POST: Bezeichnungs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var bezeichnung = await _context.Bezeichnung.FindAsync(id);
            _context.Bezeichnung.Remove(bezeichnung);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BezeichnungExists(int id)
        {
            return _context.Bezeichnung.Any(e => e.ID == id);
        }
    }
}
