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
    public class ErfassersController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ErfassersController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Erfassers
        public async Task<IActionResult> Index()
        {
            return View(await _context.Erfasser.ToListAsync());
        }

        // GET: Erfassers/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var erfasser = await _context.Erfasser
                .FirstOrDefaultAsync(m => m.ID == id);
            if (erfasser == null)
            {
                return NotFound();
            }

            return View(erfasser);
        }

        // GET: Erfassers/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Erfassers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ID,Name")] Erfasser erfasser)
        {
            if (ModelState.IsValid)
            {
                _context.Add(erfasser);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(erfasser);
        }

        // GET: Erfassers/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var erfasser = await _context.Erfasser.FindAsync(id);
            if (erfasser == null)
            {
                return NotFound();
            }
            return View(erfasser);
        }

        // POST: Erfassers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ID,Name")] Erfasser erfasser)
        {
            if (id != erfasser.ID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(erfasser);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ErfasserExists(erfasser.ID))
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
            return View(erfasser);
        }

        // GET: Erfassers/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var erfasser = await _context.Erfasser
                .FirstOrDefaultAsync(m => m.ID == id);
            if (erfasser == null)
            {
                return NotFound();
            }

            return View(erfasser);
        }

        // POST: Erfassers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var erfasser = await _context.Erfasser.FindAsync(id);
            _context.Erfasser.Remove(erfasser);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ErfasserExists(int id)
        {
            return _context.Erfasser.Any(e => e.ID == id);
        }
    }
}
