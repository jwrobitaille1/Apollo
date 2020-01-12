using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Apollo.Areas.Core.Models.Database;
using Apollo.Areas.Core.Models.ViewModel;

namespace Apollo.Areas.Core.Controllers
{
    public class Corporation_CatalogController : Controller
    {
        private edmCore db = new edmCore();

        // GET: Core/Corporation_Catalog
        public ActionResult Index()
        {
            return View(db.Corporation_Catalog.ToList());
        }

        // GET: Core/Corporation_Catalog/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Corporation_Catalog corporation_Catalog = db.Corporation_Catalog.Find(id);
            if (corporation_Catalog == null)
            {
                return HttpNotFound();
            }
            return View(corporation_Catalog);
        }

        // GET: Core/Corporation_Catalog/Create
        public ActionResult Create()
        {
            return View(new vmCreateCorporationCatalog());
        }

        // POST: Core/Corporation_Catalog/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Corporation_Name,Corporation_Description,Industry,Corporation_Type,Date_of_Incorpration,Fiscal_Year_Start,Number_of_Employees,Address,City,State,Zip_Code,Area_Code,Phone_Number,Extensions_Name,Extension,Effective_Start_Date,Effective_End_Date,Created_Date,Created_By,Updated_Date,Updated_By,Is_Active,Corporation_Code,Corporation_Catalog_ID")] Corporation_Catalog corporation_Catalog)
        {
            if (ModelState.IsValid)
            {
                corporation_Catalog.Created_By = "Web";
                corporation_Catalog.Created_Date = DateTime.Now;
                corporation_Catalog.Updated_By = corporation_Catalog.Created_By;
                corporation_Catalog.Updated_Date = corporation_Catalog.Created_Date.Value;
                db.Corporation_Catalog.Add(corporation_Catalog);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View( new vmCreateCorporationCatalog());
        }

        // GET: Core/Corporation_Catalog/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Corporation_Catalog corporation_Catalog = db.Corporation_Catalog.Find(id);
            if (corporation_Catalog == null)
            {
                return HttpNotFound();
            }
            return View(corporation_Catalog);
        }

        // POST: Core/Corporation_Catalog/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Corporation_Name,Corporation_Description,Industry,Corporation_Type,Date_of_Incorpration,Fiscal_Year_Start,Number_of_Employees,Address,City,State,Zip_Code,Area_Code,Phone_Number,Extensions_Name,Extension,Effective_Start_Date,Effective_End_Date,Created_Date,Created_By,Updated_Date,Updated_By,Is_Active,Corporation_Code,Corporation_Catalog_ID")] Corporation_Catalog corporation_Catalog)
        {
            if (ModelState.IsValid)
            {
                db.Entry(corporation_Catalog).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(corporation_Catalog);
        }

        // GET: Core/Corporation_Catalog/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Corporation_Catalog corporation_Catalog = db.Corporation_Catalog.Find(id);
            if (corporation_Catalog == null)
            {
                return HttpNotFound();
            }
            return View(corporation_Catalog);
        }

        // POST: Core/Corporation_Catalog/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Corporation_Catalog corporation_Catalog = db.Corporation_Catalog.Find(id);
            db.Corporation_Catalog.Remove(corporation_Catalog);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
