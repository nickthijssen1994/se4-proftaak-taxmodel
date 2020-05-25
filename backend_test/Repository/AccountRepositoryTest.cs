using backend.Controllers;
using backend.DAL;
using backend.DAL.Repositories;
using backend.Models.DTOs.Accounts;
using backend.Services;
using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Text;

namespace backend_test.Repository
{
    class AccountRepositoryTest
    {
        /// <summary>
        /// Registers user.
        /// </summary>
        [Test]
        public void Register()
        {
            // Arrange
            var mock = new Mock<IAccountService>();
            RegisterDto user = new RegisterDto();
            user.Email = "testemail";
            user.Name = "testUser";
            user.Password = "TestPass1";
            mock.Setup(AccountService => AccountService.Register(user)).Returns(user);

            // Act
            RegisterDto result = mock.Object.Register(user);

            // Assert
            Assert.AreEqual(user.Name, result.Name);
        }

        [Test]
        public void Login()
        {
            // Arrange
            var mock = new Mock<IAccountService>();
            LoginDto user = new LoginDto();
            user.Name = "testUser";
            user.Password = "TestPass1";
            string token = "token";
            mock.Setup(AccountService => AccountService.Login(user.Name)).Returns(token);

            // Act
            string result = mock.Object.Login(user.Name);

            // Assert
            Assert.IsNotNull(result);
        }

        [Test]
        public void GetById()
        {
            // Arrange
            var mock = new Mock<IAccountService>();
            AccountDto user = new AccountDto();
            user.Id = 1;
            mock.Setup(AccountService => AccountService.GetById(user.Id)).Returns(user);

            // Act
            AccountDto result = mock.Object.GetById(user.Id);

            // Assert
            Assert.AreEqual(user.Id, result.Id);
        }
    }
}
