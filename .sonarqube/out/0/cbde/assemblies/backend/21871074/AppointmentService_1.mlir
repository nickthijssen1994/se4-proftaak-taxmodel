// Skipping function GetById(none), it contains poisonous unsupported syntaxes

func @_backend.Services.AppointmentService.GetAll$$() -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :35 :2) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :37 :43) // Not a variable of known type: _repo
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :37 :71) // Not a variable of known type: includes
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :37 :43) // _repo.GetEntities(includes: includes) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :39 :10) // Not a variable of known type: _mapper
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :39 :51) // Not a variable of known type: appointments
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :39 :10) // _mapper.Map<IEnumerable<AppointmentDto>>(appointments) (InvocationExpression)
return %6 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :39 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetWithinTimeSpan(none), it contains poisonous unsupported syntaxes

// Skipping function RegisterForAppointment(none), it contains poisonous unsupported syntaxes

func @_backend.Services.AppointmentService.Create$backend.Models.DTOs.CreateAppointmentDto$(none) -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :72 :2) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :72 :21)
cbde.store %_dto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :72 :21)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :74 :29) // Not a variable of known type: _mapper
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :74 :54) // Not a variable of known type: dto
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :74 :29) // _mapper.Map<Appointment>(dto) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :75 :3) // Not a variable of known type: _repo
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :75 :22) // Not a variable of known type: appointment
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :75 :3) // _repo.InsertEntity(appointment) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :76 :3) // Not a variable of known type: _repo
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :76 :3) // _repo.Save() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_backend.Services.AppointmentService.Update$backend.Models.DTOs.UpdateAppointmentDto$(none) -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :79 :2) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :79 :21)
cbde.store %_dto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :79 :21)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :81 :29) // Not a variable of known type: _mapper
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :81 :54) // Not a variable of known type: dto
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :81 :29) // _mapper.Map<Appointment>(dto) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :82 :3) // Not a variable of known type: _repo
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :82 :22) // Not a variable of known type: appointment
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :82 :3) // _repo.UpdateEntity(appointment) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :83 :3) // Not a variable of known type: _repo
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :83 :3) // _repo.Save() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_backend.Services.AppointmentService.Delete$backend.Models.DTOs.AppointmentDto$(none) -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :86 :2) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :86 :21)
cbde.store %_dto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :86 :21)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :88 :29) // Not a variable of known type: _mapper
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :88 :54) // Not a variable of known type: dto
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :88 :29) // _mapper.Map<Appointment>(dto) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :89 :3) // Not a variable of known type: _repo
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :89 :22) // Not a variable of known type: appointment
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :89 :3) // _repo.DeleteEntity(appointment) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :90 :3) // Not a variable of known type: _repo
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AppointmentService.cs" :90 :3) // _repo.Save() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Unsubscribe(none), it contains poisonous unsupported syntaxes

// Skipping function IsRegisteredForAppointment(none), it contains poisonous unsupported syntaxes

