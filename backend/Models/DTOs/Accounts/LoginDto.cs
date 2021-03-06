﻿using System.ComponentModel.DataAnnotations;

namespace backend.Models.DTOs.Accounts
{
	public class LoginDto
	{
		[Required] public string Name { get; set; }
		[Required] public string Password { get; set; }
		public string Token { get; set; }
	}
}
