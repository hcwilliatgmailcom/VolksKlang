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
    public class TypsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public TypsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Typs
        public async Task<IActionResult> Index()
        {
            return View(await _context.Typ.ToListAsync());
        }

        // GET: Typs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var typ = await _context.Typ
                .FirstOrDefaultAsync(m => m.ID == id);
            if (typ == null)
            {
                return NotFound();
            }

            return View(typ);
        }

        // GET: Typs/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Typs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ID,Name")] Typ typ)
        {
            if (ModelState.IsValid)
            {
                _context.Add(typ);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(typ);
        }

        // GET: Typs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var typ = await _context.Typ.FindAsync(id);
            if (typ == null)
            {
                return NotFound();
            }
            return View(typ);
        }

        // POST: Typs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ID,Name")] Typ typ)
        {
            if (id != typ.ID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(typ);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TypExists(typ.ID))
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
            return View(typ);
        }

        // GET: Typs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var typ = await _context.Typ
                .FirstOrDefaultAsync(m => m.ID == id);
            if (typ == null)
            {
                return NotFound();
            }

            return View(typ);
        }

        // POST: Typs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var typ = await _context.Typ.FindAsync(id);
            _context.Typ.Remove(typ);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TypExists(int id)
        {
            return _context.Typ.Any(e => e.ID == id);
        }
    }
}
