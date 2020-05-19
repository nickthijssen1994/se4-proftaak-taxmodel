using AutoMapper;
using backend.DAL.Repositories;
using backend.Helpers;
using backend.Models;
using backend.Models.DTOs.Accounts;
using backend.Security;
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

        public LoginDto Login(LoginDto loginDto)
        {
            // logic to authenticate

            // Generate jwt.
            loginDto.token = tokenHandler.GenerateToken(loginDto.Name);

            return loginDto;
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