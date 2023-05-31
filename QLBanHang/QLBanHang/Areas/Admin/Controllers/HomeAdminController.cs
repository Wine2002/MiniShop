using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using QLBanHang.Models;
using System.Net.WebSockets;
using X.PagedList;

namespace DataBase.Areas.Admin.Controllers
{
	[Area("admin")]
	[Route("admin")]
	[Route("admin/homeadmin")]
	public class HomeAdminController : Controller
	{
		QlbanHang1Context db = new QlbanHang1Context();
		[Route("")]
		[Route("index")]
		public IActionResult Index()
		{
			return View();
		}
		[Route("danhmucsanpham")]
		public IActionResult DanhMucSanPham(int? page)
		{
			int pageSize = 12;
			int pageNumber = page == null || page < 0 ? 1 : page.Value;
			var lstsanpham = db.TDanhMucSps.AsNoTracking().OrderBy(x => x.TenSp);
			PagedList<TDanhMucSp> lst = new PagedList<TDanhMucSp>(lstsanpham, pageNumber, pageSize);
			return View(lst);
		}
		[Route("ThemSanPhamMoi")]
		[HttpGet]
		public IActionResult ThemSanPhamMoi()
		{
			ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
            return View();
		}
		[Route("ThemSanPhamMoi")]
		[HttpPost]
		[ValidateAntiForgeryToken]
		public IActionResult ThemSanPhamMoi(TDanhMucSp sanPham)
		{
			if(ModelState.IsValid)
			{
				db.TDanhMucSps.Add(sanPham);
				db.SaveChanges();
				return RedirectToAction("DanhMucSanPham");
			}
			return View();
		}
        [Route("SuaSanPham")]
        [HttpGet]
        public IActionResult SuaSanPham(string maSanPham)
        {
            ViewBag.MaLoai = new SelectList(db.TLoaiSps.ToList(), "MaLoai", "Loai");
			var sanPham=db.TDanhMucSps.Find(maSanPham);
            return View(sanPham);
        }
        [Route("SuaSanPham")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SuaSanPham(TDanhMucSp sanPham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("DanhMucSanPham","HomeAdmin");
            }
            return View(sanPham);
        }
		[Route("XoaSanPham")]
		[HttpGet]
		public IActionResult XoaSanPham(string maSanPham)
		{
			TempData["Message"] = "";
			var chiTietSanPhams=db.TChiTietSanPhams.Where(x=>x.MaSp==maSanPham).ToList();
			if (chiTietSanPhams.Count() > 0 )
			{
				TempData["Message"] = "Không xóa được sản phầm này";
				return RedirectToAction("DanhMucSanPham", "HomeAdmin");
			}
			db.Remove(db.TDanhMucSps.Find(maSanPham));
			db.SaveChanges();
			TempData["Message"] = "Sản phẩm đã được xóa";
			return RedirectToAction("DanhMucSanPham", "HomeAdmin");
		}
    }
}
