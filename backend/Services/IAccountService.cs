using backend.Models;
using backend.Models.DTOs.Accounts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Services
{
    public interface IAccountService
    {
        AccountDto GetById(long id);
        AccountDto GetByName(string name);
        bool CheckNameExists(string name);
        bool CheckEmailExists(string email);
        IEnumerable<AccountDto> GetAll();
        Registration Register(RegisterDto registerDto);
        Jwt Login(string name);
        EditAccountDto Update(EditAccountDto editAccountDto);
        void Delete(AccountDto accountDto);
    }
}