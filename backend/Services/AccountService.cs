using AutoMapper;
using backend.DAL.Repositories;
using backend.Helpers;
using backend.Models;
using backend.Models.DTOs.Accounts;
using backend.Security;
using Microsoft.AspNetCore.Mvc.Formatters.Xml;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Services
{
    public class AccountService : IAccountService
    {
        private readonly AccountRepository repository;
        private readonly IMapper mapper;
        private TokenHandler tokenHandler;
        public AccountService(AccountRepository repository, IMapper mapper, IOptions<AppSettings> appSettings)
        {
            this.mapper = mapper;
            this.repository = repository;
            tokenHandler = new TokenHandler(appSettings);
        }

        public AccountDto GetByName(string name)
        {
            Account account = repository.GetEntities<Account>(a => a.Name == name).Single();
            return mapper.Map<AccountDto>(account);
        }

        public bool CheckNameExists(string name)
        {
            try
            {
                Account account = repository.GetEntities<Account>(a => a.Name == name).Single();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool CheckEmailExists(string email)
        {
            try
            {
                Account account = repository.GetEntities<Account>(a => a.Email == email).Single();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public RegisterDto Register(RegisterDto registerDto)
        {
            Account account = mapper.Map<Account>(registerDto);

            // Generate jwt.
            registerDto.token = tokenHandler.GenerateToken(registerDto.Name);

            // Save to storage.
            repository.InsertEntity(account);
            repository.Save();

            return registerDto;
        }

        public string Login(string name)
        {
            // Generate jwt.
            return tokenHandler.GenerateToken(name);
        }

        public void Delete(AccountDto dto)
        {
            Account account = mapper.Map<Account>(dto);
            repository.DeleteEntity(account);
            repository.Save();
        }

        public IEnumerable<AccountDto> GetAll()
        {
            IEnumerable<Account> accounts = repository.GetEntities<Account>();
            return mapper.Map<IEnumerable<AccountDto>>(accounts);
        }

        public AccountDto GetById(long id)
        {
            Account account = repository.GetEntityById(id);
            return mapper.Map<AccountDto>(account);
        }

        public EditAccountDto Update(EditAccountDto editAccountDto)
        {
            Account account = mapper.Map<Account>(editAccountDto);
            repository.UpdateEntity(account);
            repository.Save();
            return editAccountDto;
        }
    }
}