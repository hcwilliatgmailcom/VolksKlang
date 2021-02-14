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
    public class HerkunftsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public HerkunftsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Herkunfts
        public async Task<IActionResult> Index()
        {
            return View(await _context.Herkunft.ToListAsync());
        }

        // GET: Herkunfts/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var herkunft = await _context.Herkunft
                .FirstOrDefaultAsync(m => m.ID == id);
            if (herkunft == null)
            {
                return NotFound();
            }

            return View(herkunft);
        }

        // GET: Herkunfts/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Herkunfts/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ID,Name")] Herkunft herkunft)
        {
            if (ModelState.IsValid)
            {
                _context.Add(herkunft);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(herkunft);
        }

        // GET: Herkunfts/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var herkunft = await _context.Herkunft.FindAsync(id);
            if (herkunft == null)
            {
                return NotFound();
            }
            return View(herkunft);
        }

        // POST: Herkunfts/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ID,Name")] Herkunft herkunft)
        {
            if (id != herkunft.ID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(herkunft);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!HerkunftExists(herkunft.ID))
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
            return View(herkunft);
        }

        // GET: Herkunfts/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var herkunft = await _context.Herkunft
                .FirstOrDefaultAsync(m => m.ID == id);
            if (herkunft == null)
            {
                return NotFound();
            }

            return View(herkunft);
        }

        // POST: Herkunfts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {

            var herkunft = await _context.Herkunft.FindAsync(id);
            try
            {
            
                _context.Herkunft.Remove(herkunft);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {

                ViewBag.Alert = ex.InnerException.Message;

            }

 
            return View(herkunft);

        }

        private bool HerkunftExists(int id)
        {
            return _context.Herkunft.Any(e => e.ID == id);
        }
    }
}
