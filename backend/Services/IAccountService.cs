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
        void Create(RegisterDto dto);
        void Update(RegisterDto dto);
        void Delete(AccountDto dto);
    }
}
