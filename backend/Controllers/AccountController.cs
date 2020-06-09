using backend.Helpers;
using backend.Models.DTOs.Accounts;
using backend.Services;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace backend.Controllers
{
	//[Authorize]
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

        [HttpGet("{name}")]
        public ActionResult<AccountDto> GetAccountByName(string name)
        {
            AccountDto account = service.GetByName(name); 
            if (account == null)
            {
                return NotFound();
            }

            return Ok(account);
        }

		[AllowAnonymous]
		[HttpPost("login")]
		public IActionResult Login(LoginDto loginDto)
		{
			if (!ModelState.IsValid) // Check modelstate.
			{
				return BadRequest(new Exception(ResponseConstants.InvalidInput));
			}

			if (!service.CheckNameExists(loginDto.Name)) // Check if user exists.  
			{
				return BadRequest(new Exception(ResponseConstants.InvalidCredentials));
			}

			string hash = service.GetByName(loginDto.Name).Password;

			if (!VerifyPassword(loginDto.Password, hash)) // Check password against password in database.
			{
				return BadRequest(new Exception(ResponseConstants.InvalidCredentials));
			}

			return Ok(service.Login(loginDto.Name));
		}

		[AllowAnonymous]
		[HttpPost("register")]
		public IActionResult Register(RegisterDto registerDto)
		{
			string password = registerDto.Password;

			if (!ModelState.IsValid) // Check modelstate.
			{
				return BadRequest(ResponseConstants.InvalidInput);
			}

			if (!password.Any(char.IsDigit)) // Check for at least one digit in password.
			{
				return BadRequest(new Exception(ResponseConstants.PasswordMissingNumber));
			}

			if (!password.Any(char.IsUpper)) // Check for at least one capital in password;
			{
				return BadRequest(new Exception(ResponseConstants.PasswordMissingCapital));
			}

			if (service.CheckNameExists(registerDto.Name)) // Throw badrequest if name is already taken.
			{
				return BadRequest(new Exception(ResponseConstants.UsernameTaken));
			}

			if (service.CheckEmailExists(registerDto.Email)) // Throw badrequest if email is already in use.
			{
				return BadRequest(error: new Exception(ResponseConstants.EmailTaken));
			}

			return Ok(service.Register(registerDto));
		}

		private bool VerifyPassword(string input, string hash)
		{
			return hasher.VerifyHash(input, hash);
		}
	}
}
