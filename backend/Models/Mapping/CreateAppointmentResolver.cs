using AutoMapper;
using backend.DAL.Repositories;
using backend.Models.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace backend.Models.Mapping
{
    public class CreateAppointmentResolver : IValueResolver<CreateAppointmentDto, Appointment, Account>
    {
        AccountRepository accountRepository;
        public CreateAppointmentResolver(AccountRepository accountRepo)
        {
            accountRepository = accountRepo;
        }
        public Account Resolve(CreateAppointmentDto source, Appointment destination, Account destMember, ResolutionContext context)
        {
            return accountRepository.GetEntityById(source.Organiser);
        }
    }
}
