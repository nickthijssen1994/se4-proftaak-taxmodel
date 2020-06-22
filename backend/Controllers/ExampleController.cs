using System.Collections.Generic;
using System.Linq;
using backend.DAL.Repositories;
using backend.Models;
using Microsoft.AspNetCore.Mvc;

namespace backend.Controllers
{
    [ApiController]
    [Route("taxbreak/api/[controller]")]
    public class ExampleController : ControllerBase
    {
        private readonly ExampleRepository _repo;

        public ExampleController(ExampleRepository repo)
        {
            _repo = repo;
        }

        [HttpGet]
        public ActionResult<IEnumerable<Example>> GetAll()
        {
            return _repo.GetEntities<IEnumerable<Example>>(null).ToList();
        }

        [HttpGet("{id}")]
        public ActionResult<Example> Get(int id)
        {
            return _repo.GetEntityById(id);
        }

        [HttpPost]
        public ActionResult<Example> Add(Example example)
        {
            _repo.InsertEntity(example);
            _repo.Save();
            return example;
        }

        [HttpPut("{id}")]
        public ActionResult<Example> Update(Example example)
        {
            _repo.UpdateEntity(example);
            _repo.Save();
            return example;
        }

        [HttpDelete("{id}")]
        public ActionResult<Example> Delete(int id)
        {
            var example = _repo.GetEntityById(id);
            _repo.DeleteEntity(example);
            _repo.Save();
            return example;
        }
    }
}