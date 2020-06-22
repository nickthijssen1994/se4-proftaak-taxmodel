using Org.BouncyCastle.Asn1.Pkcs;
using System;
using System.Security.Cryptography;
using System.Text;

namespace backend.Helpers
{
	/// <summary>
	/// Source: https://medium.com/@mehanix/lets-talk-security-salted-password-hashing-in-c-5460be5c3aae
	/// </summary>
	public class PasswordHasher
	{
		byte[] salt;
		public string GenerateHash(string password)
		{
			new RNGCryptoServiceProvider().GetBytes(salt = new byte[16]);

			// Hash and salt password using PBKDF2.
			var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000);

			// Place the string in the byte array.
			byte[] hash = pbkdf2.GetBytes(20);

			// New byte array to store hash.
			byte[] hashBytes = new byte[36];

			// Place the hash and salt in their respective places.
			Array.Copy(salt, 0, hashBytes, 0, 16);
			Array.Copy(hash, 0, hashBytes, 16, 20);

			return Convert.ToBase64String(hashBytes);
		}

		public bool VerifyHash(string input, string hash)
		{
			byte[] hashBytes = Convert.FromBase64String(hash);

			// Take the salt out of the string.
			byte[] salt = new byte[16];
			Array.Copy(hashBytes, 0, salt, 0, 16);

			// Hash the user input.
			var pbkdf2 = new Rfc2898DeriveBytes(input, salt, 10000);
			byte[] hashedInput = pbkdf2.GetBytes(20);

			// Compare results.
			bool ok = true;
			for (int i = 0; i < 20; i++)
			{
				if(hashBytes[i + 16] != hashedInput[i])
				{
					ok = false;
				}
			}

			return ok;
		}
	}
}