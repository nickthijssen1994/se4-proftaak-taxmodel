using backend.DAL.Repositories;
using backend.Models.DTOs.Accounts;
using backend.Services;
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
        private readonly IAccountService service;

        //Inject UserService
        public AccountController(IAccountService service)
        {
            this.service = service;
        }

        [HttpGet]
        public ActionResult<IEnumerable<AccountDto>> GetAccounts()
        {
            return service.GetAll().ToList();
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
        public IActionResult Register(RegisterDto registerDto)
        {
            if (registerDto.Password.Any(char.IsDigit))
            {

                if (registerDto.Password.Any(char.IsUpper))
                {
                    if (!ModelState.IsValid)
                    {
                        return BadRequest();
                    }

                    service.Create(registerDto);
                    return Ok(registerDto);
                }
                else
                {
                    return BadRequest(new Exception("Password must contain at least one capital."));
                }
            }
            else
            {
                return BadRequest(new Exception("Password must contain at least one number."));
            }
        }
    }
}