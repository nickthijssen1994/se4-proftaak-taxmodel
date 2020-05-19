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
            else
            {
                return BadRequest();
            }
        }

        [AllowAnonymous]
        [HttpPost("register")]
        public IActionResult Register(RegisterDto registerDto)
        {
            if (ModelState.IsValid)
            {
                string password = registerDto.Password;
                if (password.Any(char.IsDigit))
                {
                    if (password.Any(char.IsUpper))
                    {
                        if (!service.CheckNameExists(registerDto.Name))
                        {
                            if (!service.CheckEmailExists(registerDto.Email))
                            {
                                registerDto.Password = hasher.GenerateHash(password); // Hash password before registration.
                                service.Register(registerDto);
                                return Ok(registerDto);
                            }
                            else
                            {
                                return BadRequest(new Exception("This email is already in use."));
                            }
                        }
                        else
                        {
                            return BadRequest(new Exception("This username is already taken."));
                        }
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
            else
            {
                return BadRequest();
            }
        }

        private bool VerifyPassword(string input, string hash)
        {
            return hasher.VerifyHash(input, hash);
        }
    }
}