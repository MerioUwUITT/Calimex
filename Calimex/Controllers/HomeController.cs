using Calimex.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Calimex.Controllers
{
    public class HomeController : Controller
    {
        CalimexContext db = new CalimexContext();
        public ActionResult Index()
        {
            var list = db.Products.ToList();
            return View(list);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
        public ActionResult Tickets()
        {
            var ventas = db.Ventas.ToList();
            return View(ventas);
        }
        public JsonResult RealizarVenta(int[] ids, int[] cantidades)
        {
            //los id hacen referencia los productos comprados
            //las cantidades hacen referencia a la cantidad de productos comprados
            Venta venta = new Venta();
            //agregar fecha y hora y segundo de la venta
            venta.fecha_venta = DateTime.Now;
            db.Ventas.Add(venta);
            db.SaveChanges();
            for (int i = 0; i < ids.Length; i++)
            {
                VentaProducto detalle = new VentaProducto();
                detalle.id_producto = ids[i];
                detalle.id_venta = venta.id_venta;
                detalle.cantidad = cantidades[i];
                db.VentaProductoes.Add(detalle);
                db.SaveChanges();
            }
            return Json("");
        }

    }
}