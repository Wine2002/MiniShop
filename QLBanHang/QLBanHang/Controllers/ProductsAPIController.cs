using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using QLBanHang.Models;
using QLBanHang.Models.APIModels;

namespace Database.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsAPIController : ControllerBase
    {
        QlbanHang1Context db = new QlbanHang1Context();
        [HttpGet]
        public IEnumerable<Product> GetAllProducts()
        {
            IList<Product> products = new List<Product>();
            var sanPham = db.TDanhMucSps.ToList();
            foreach (var s in sanPham)
            {
                products.Add(new Product
                {
                    MaSp = s.MaSp,
                    TenSp = s.TenSp,
                    MaLoai = s.MaLoai,
                    AnhDaiDien = s.AnhDaiDien,
                    GiaNhoNhat = s.GiaNhoNhat
                });
            }
            return products;
        }
        [HttpGet("{maloai}")]
        public IEnumerable<Product> GetProductsByCategory(string maLoai)
        {
            IList<Product> products = new List<Product>();
            var sanPham = db.TDanhMucSps.Where(x =>x.MaLoai == maLoai).ToList();
            foreach (var s in sanPham)
            {
                products.Add(new Product
                {
                    MaSp = s.MaSp,
                    TenSp = s.TenSp,
                    MaLoai = s.MaLoai,
                    AnhDaiDien = s.AnhDaiDien,
                    GiaNhoNhat = s.GiaNhoNhat
                });
            }
            return products;
        }
    }
}
