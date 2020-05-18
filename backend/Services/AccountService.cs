using AutoMapper;
using backend.DAL.Repositories;
using backend.Models;
using backend.Models.DTOs.Accounts;
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
        public AccountService(AccountRepository repository, IMapper mapper)
        {
            this.mapper = mapper;
            this.repository = repository;
        }

        public void Create(RegisterDto dto)
        {
            Account account = mapper.Map<Account>(dto);
            repository.InsertEntity(account);
            repository.Save();
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

        public void Update(RegisterDto dto)
        {
            Account account = mapper.Map<Account>(dto);
            repository.UpdateEntity(account);
            repository.Save();
        }
    }
}
