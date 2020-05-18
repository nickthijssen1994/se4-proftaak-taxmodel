using backend.Models.DTOs.Accounts;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
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
            if (Regex.Match(dto.Password, ".*\\d.*").Success)
            {

                if (Regex.Match(dto.Password, ".*[A - Z].* ").Success)
                {
                    return BadRequest(new Exception("Password must contain at least one capital."));
                }
            }
            else
            {
                return BadRequest(new Exception("Password must contain at least one number."));

            }

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
