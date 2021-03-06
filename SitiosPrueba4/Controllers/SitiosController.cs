﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using SitiosPrueba4.Models;

namespace SitiosPrueba4.Controllers
{
    public class SitiosController : Controller
    {
        private Model1Container db = new Model1Container();

        // GET: Sitios
        public ActionResult Index()
        {
            return View(db.SitiosSet.ToList());
        }

        // GET: Sitios/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sitios sitios = db.SitiosSet.Find(id);
            if (sitios == null)
            {
                return HttpNotFound();
            }
            return View(sitios);
        }

        // GET: Sitios/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Sitios/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id_Sitio,CodigoSitio,X,Y,Altitud,Propiedad,Antecedentes,RelatoAcontecimientos,FechaEvento,FechaInhumacion,NumeroVictimas,ExhumacionAnterior,MaterialesAdicionales")] Sitios sitios)
        {
            if (ModelState.IsValid)
            {
                db.SitiosSet.Add(sitios);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(sitios);
        }

        // GET: Sitios/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sitios sitios = db.SitiosSet.Find(id);
            if (sitios == null)
            {
                return HttpNotFound();
            }
            return View(sitios);
        }

        // POST: Sitios/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id_Sitio,CodigoSitio,X,Y,Altitud,Propiedad,Antecedentes,RelatoAcontecimientos,FechaEvento,FechaInhumacion,NumeroVictimas,ExhumacionAnterior,MaterialesAdicionales")] Sitios sitios)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sitios).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(sitios);
        }

        // GET: Sitios/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sitios sitios = db.SitiosSet.Find(id);
            if (sitios == null)
            {
                return HttpNotFound();
            }
            return View(sitios);
        }

        // POST: Sitios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Sitios sitios = db.SitiosSet.Find(id);
            db.SitiosSet.Remove(sitios);
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
