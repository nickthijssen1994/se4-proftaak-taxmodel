using System.Collections.Generic;
using backend.DAL;
using backend.Models;
using Microsoft.AspNetCore.Mvc;

namespace backend.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class TestController : ControllerBase
    {
        MySqlContext _context;

        public TestController(MySqlContext context)
        {
            _context = context;
        }
        
        [HttpGet("{id}")]
        public ActionResult<Test> GetTest(int id)
        {
            return _context.Tests.Find(id);
        }

        [HttpPost]
        public ActionResult<Test> AddTest(Test test)
        {
            _context.Tests.Add(test);
            _context.SaveChanges();
            return test;
        }

        [HttpPut("{id}")]
        public ActionResult<Test> UpdateTest(string id, Test test)
        {
            _context.Tests.Update(test);
            _context.SaveChanges();
            return test;
        }

        [HttpDelete("{id}")]
        public ActionResult<Test> DeleteTest(int id)
        {
            Test test = _context.Tests.Find(id);
            _context.Tests.Remove(test);
            _context.SaveChanges();
            return test;
        }
    }
}
