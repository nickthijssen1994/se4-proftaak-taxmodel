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
        IEnumerable<AccountDto> GetAll();
        RegisterDto Register(RegisterDto registerDto);
        LoginDto Login(LoginDto loginDto);
        EditAccountDto Update(EditAccountDto editAccountDto);
        void Delete(AccountDto accountDto);
    }
}