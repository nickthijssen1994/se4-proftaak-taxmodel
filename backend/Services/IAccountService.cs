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
        RegisterDto Register(RegisterDto registerDto);
        string Login(string name);
        EditAccountDto Update(EditAccountDto editAccountDto);
        void Delete(AccountDto accountDto);
    }
}