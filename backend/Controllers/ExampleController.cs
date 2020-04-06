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
		protected readonly ExampleRepository _repo;

		public ExampleController(ExampleRepository repo)
		{
			_repo = repo;
		}

		[HttpGet]
		public ActionResult<IEnumerable<Example>> GetAll()
		{
			return _repo.Get(null, null, a => a).ToList();
		}

		[HttpGet("{id}")]
		public ActionResult<Example> Get(int id)
		{
			return _repo.GetByID(id);
		}

		[HttpPost]
		public ActionResult<Example> Add(Example example)
		{
			_repo.Insert(example);
			_repo.Save();
			return example;
		}

		[HttpPut("{id}")]
		public ActionResult<Example> Update(string id, Example example)
		{
			_repo.Update(example);
			_repo.Save();
			return example;
		}

		[HttpDelete("{id}")]
		public ActionResult<Example> Delete(int id)
		{
			var example = _repo.GetByID(id);
			_repo.Delete(example);
			_repo.Save();
			return example;
		}
	}
}