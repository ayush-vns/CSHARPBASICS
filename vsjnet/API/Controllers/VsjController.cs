using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers

{
    [ApiController]
    [Route("api/[controller]")]
    public class VsjController : ControllerBase
    {
          [HttpGet]
        public string SayHello()
        {
            return "Hello ";
        }

        [HttpGet("{name}"), HttpPost("{name}")]
        public string SayHello(string name)
        {
            return "Hello " + name;
        }
    }
}