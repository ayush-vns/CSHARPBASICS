
using API.Entities;
using Microsoft.EntityFrameworkCore;

namespace API.Data
{
    public class LibraryContext: DbContext
    {
         public LibraryContext(DbContextOptions options) : base(options)
        {
        }
               public DbSet<Book> Books { get; set;}
               
    }
}