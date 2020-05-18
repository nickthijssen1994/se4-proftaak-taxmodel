using backend.Models.DTOs.Accounts;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Controllers
{
    [ApiController]
    [Route("taxbreak/api/[controller]")]
    public class AccountController : ControllerBase
    {
        //Inject UserService
        public AccountController()
        {
        }

        [HttpPost("login")]
        public ActionResult<bool> Login(LoginDto dto)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            // Auth with identity

            bool loginFailed = false;

            if (!loginFailed)
            {
                //TODO: Return something useful
                return true;
            }
            else
            {
                return Unauthorized();
            }
        }

        [HttpPost("register")]
        public IActionResult Register(RegisterDto dto)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            // Register with identity

            bool registerFailed = false;

            if (!registerFailed)
            {
                // TODO: return something useful
                return Ok();
            }
            else
            {
                return Unauthorized();
            }
        }
    }
}
