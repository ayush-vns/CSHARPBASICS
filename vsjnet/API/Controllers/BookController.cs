using Microsoft.AspNetCore.Mvc;
using API.Data;
using API.Entities;
using Microsoft.EntityFrameworkCore;

namespace API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]

    public class BookController : ControllerBase
    {
        private readonly LibraryContext context;
        public  BookController(LibraryContext context)
         {
            this.context = context;

        }
        [HttpGet]
        public  async Task<ActionResult<List<Book>>> GetBooks()
        {
        var books= await context.Books.ToListAsync();
        return books;
        }
    }
}