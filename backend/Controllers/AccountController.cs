using backend.DAL.Repositories;
using backend.Helpers;
using backend.Models.DTOs.Accounts;
using backend.Security;
using backend.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace backend.Controllers
{
    [Authorize]
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

        [AllowAnonymous]
        [HttpPost("login")]
        public ActionResult<string> Login(LoginDto loginDto)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest();
            }

            service.Login(loginDto);

            return Ok(loginDto);
        }

        [AllowAnonymous]
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

                    PasswordHasher hasher = new PasswordHasher();
                    registerDto.Password = hasher.GenerateHash(registerDto.Password);
                    service.Register(registerDto);
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