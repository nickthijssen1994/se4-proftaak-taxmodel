func @_backend.Controllers.AppointmentController.GetAppointments$$() -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :22 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :25 :19) // Not a variable of known type: _service
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :25 :19) // _service.GetAll() (InvocationExpression)
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :25 :19) // _service.GetAll().ToList() (InvocationExpression)
return %2 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.AppointmentController.GetAppointmentById$long$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :29 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :30 :63)
cbde.store %_id, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :30 :63)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :32 :30) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :32 :47) // Not a variable of known type: id
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :32 :30) // _service.GetById(id) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :34 :16) // Not a variable of known type: appointment
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :34 :31) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :34 :16) // comparison of unknown type: appointment == null
cond_br %7, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :34 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :34 :44) // NotFound() (InvocationExpression)
return %8 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :34 :37)

^2: // JumpBlock
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :36 :19) // Not a variable of known type: appointment
return %9 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :36 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetAppointmentsInTimeSpan(none), it contains poisonous unsupported syntaxes

// Skipping function PutAppointment(none, none), it contains poisonous unsupported syntaxes

func @_backend.Controllers.AppointmentController.RegisterForAppointment$backend.Models.DTOs.RegisterForAppointmentDto$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :63 :8) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :64 :78)
cbde.store %_dto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :64 :78)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :66 :17) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :66 :17) // ModelState.IsValid (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :66 :16) // !ModelState.IsValid (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :66 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :66 :44) // BadRequest() (InvocationExpression)
return %4 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :66 :37)

^2: // JumpBlock
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :68 :12) // Not a variable of known type: _service
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :68 :44) // Not a variable of known type: dto
%7 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :68 :12) // _service.RegisterForAppointment(dto) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :70 :19) // Not a variable of known type: dto
return %8 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :70 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.AppointmentController.PostAppointment$backend.Models.DTOs.CreateAppointmentDto$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :73 :8) {
^entry (%_appointment : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :74 :66)
cbde.store %_appointment, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :74 :66)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :76 :17) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :76 :17) // ModelState.IsValid (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :76 :16) // !ModelState.IsValid (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :76 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :76 :44) // BadRequest() (InvocationExpression)
return %4 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :76 :37)

^2: // JumpBlock
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :78 :12) // Not a variable of known type: _service
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :78 :28) // Not a variable of known type: appointment
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :78 :12) // _service.Create(appointment) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :80 :19) // Not a variable of known type: appointment
return %8 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :80 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.AppointmentController.DeleteAppointment$long$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :83 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :84 :62)
cbde.store %_id, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :84 :62)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :86 :30) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :86 :47) // Not a variable of known type: id
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :86 :30) // _service.GetById(id) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :87 :16) // Not a variable of known type: appointment
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :87 :31) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :87 :16) // comparison of unknown type: appointment == null
cond_br %7, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :87 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :87 :44) // NotFound() (InvocationExpression)
return %8 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :87 :37)

^2: // JumpBlock
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :89 :12) // Not a variable of known type: _service
%10 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :89 :28) // Not a variable of known type: appointment
%11 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :89 :12) // _service.Delete(appointment) (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :91 :19) // Not a variable of known type: appointment
return %12 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :91 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function AppointmentExists(none), it contains poisonous unsupported syntaxes

func @_backend.Controllers.AppointmentController.Unsubscribe$backend.Models.DTOs.RegisterForAppointmentDto$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :99 :8) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :100 :67)
cbde.store %_dto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :100 :67)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :102 :17) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :102 :17) // ModelState.IsValid (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :102 :16) // !ModelState.IsValid (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :102 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :102 :44) // BadRequest() (InvocationExpression)
return %4 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :102 :37)

^2: // JumpBlock
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :104 :12) // Not a variable of known type: _service
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :104 :33) // Not a variable of known type: dto
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :104 :12) // _service.Unsubscribe(dto) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :106 :19) // Not a variable of known type: dto
return %8 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :106 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.AppointmentController.IsRegisteredForAppointment$backend.Models.DTOs.RegisterForAppointmentDto$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :109 :8) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :110 :55)
cbde.store %_dto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :110 :55)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :112 :8) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :112 :8) // ModelState.IsValid (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :112 :7) // !ModelState.IsValid (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :112 :7)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :114 :11) // BadRequest() (InvocationExpression)
return %4 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :114 :4)

^2: // JumpBlock
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :117 :10) // Not a variable of known type: _service
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :117 :46) // Not a variable of known type: dto
%7 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :117 :10) // _service.IsRegisteredForAppointment(dto) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :117 :10) // Dummy variable because type of %7 is incompatible
return %8 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AppointmentController.cs" :117 :3)

^3: // ExitBlock
cbde.unreachable

}
