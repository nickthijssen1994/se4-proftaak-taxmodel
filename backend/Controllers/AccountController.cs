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
        private PasswordHasher hasher;
        private readonly IAccountService service;

        //Inject UserService
        public AccountController(IAccountService service)
        {
            hasher = new PasswordHasher();
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
            if (ModelState.IsValid)
            {
                string hash;
                // Check if user exists.
                try
                {
                    hash = service.GetByName(loginDto.Name).Password;
                }
                catch (Exception e)
                {
                    return Unauthorized(e.Message);
                }

                // Check password against password in database.
                if (VerifyPassword(loginDto.Password, hash))
                {
                    loginDto.token = service.Login(loginDto.Name);
                    return Ok(loginDto);
                }
                else
                {
                    return Unauthorized();
                }
            }
            return BadRequest();
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

        private bool VerifyPassword(string input, string hash)
        {
            return hasher.VerifyHash(input, hash);
        }
    }
}