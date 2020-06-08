func @_backend.Services.AccountService.GetById$long$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :25 :2) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :25 :28)
cbde.store %_id, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :25 :28)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :27 :21) // Not a variable of known type: repository
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :27 :46) // Not a variable of known type: id
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :27 :21) // repository.GetEntityById(id) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :28 :10) // Not a variable of known type: mapper
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :28 :33) // Not a variable of known type: account
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :28 :10) // mapper.Map<AccountDto>(account) (InvocationExpression)
return %7 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :28 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetByName(none), it contains poisonous unsupported syntaxes

// Skipping function CheckNameExists(none), it contains poisonous unsupported syntaxes

// Skipping function CheckEmailExists(none), it contains poisonous unsupported syntaxes

func @_backend.Services.AccountService.Register$backend.Models.DTOs.Accounts.RegisterDto$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :63 :2) {
^entry (%_registerDto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :63 :31)
cbde.store %_registerDto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :63 :31)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :66 :18) // Not a variable of known type: tokenHandler
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :66 :45) // Not a variable of known type: registerDto
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :66 :45) // registerDto.Name (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :66 :18) // tokenHandler.GenerateToken(registerDto.Name) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :68 :27) // new PasswordHasher() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :69 :3) // Not a variable of known type: registerDto
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :69 :3) // registerDto.Password (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :69 :26) // Not a variable of known type: hasher
%11 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :69 :46) // Not a variable of known type: registerDto
%12 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :69 :46) // registerDto.Password (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :69 :26) // hasher.GenerateHash(registerDto.Password) (InvocationExpression)
%14 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :72 :21) // Not a variable of known type: mapper
%15 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :72 :41) // Not a variable of known type: registerDto
%16 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :72 :21) // mapper.Map<Account>(registerDto) (InvocationExpression)
%18 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :73 :3) // Not a variable of known type: repository
%19 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :73 :27) // Not a variable of known type: account
%20 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :73 :3) // repository.InsertEntity(account) (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :74 :3) // Not a variable of known type: repository
%22 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :74 :3) // repository.Save() (InvocationExpression)
%23 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :76 :27) // Not a variable of known type: registerDto
%24 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :76 :27) // registerDto.Email (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :76 :46) // Not a variable of known type: registerDto
%26 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :76 :46) // registerDto.Name (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :76 :64) // Not a variable of known type: token
%28 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :76 :10) // new Registration(registerDto.Email, registerDto.Name, token) (ObjectCreationExpression)
return %28 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :76 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Services.AccountService.Login$string$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :79 :2) {
^entry (%_name : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :79 :24)
cbde.store %_name, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :79 :24)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :82 :23) // Not a variable of known type: tokenHandler
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :82 :50) // Not a variable of known type: name
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :82 :23) // tokenHandler.GenerateToken(name) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :82 :10) // new JwtToken(tokenHandler.GenerateToken(name)) (ObjectCreationExpression)
return %4 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :82 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Services.AccountService.Delete$backend.Models.DTOs.Accounts.AccountDto$(none) -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :85 :2) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :85 :21)
cbde.store %_dto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :85 :21)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :87 :21) // Not a variable of known type: mapper
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :87 :41) // Not a variable of known type: dto
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :87 :21) // mapper.Map<Account>(dto) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :88 :3) // Not a variable of known type: repository
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :88 :27) // Not a variable of known type: account
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :88 :3) // repository.DeleteEntity(account) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :89 :3) // Not a variable of known type: repository
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :89 :3) // repository.Save() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_backend.Services.AccountService.GetAll$$() -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :92 :2) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :94 :35) // Not a variable of known type: repository
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :94 :35) // repository.GetEntities<Account>() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :95 :10) // Not a variable of known type: mapper
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :95 :46) // Not a variable of known type: accounts
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :95 :10) // mapper.Map<IEnumerable<AccountDto>>(accounts) (InvocationExpression)
return %5 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :95 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Services.AccountService.Update$backend.Models.DTOs.Accounts.EditAccountDto$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :98 :2) {
^entry (%_editAccountDto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :98 :31)
cbde.store %_editAccountDto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :98 :31)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :100 :21) // Not a variable of known type: mapper
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :100 :41) // Not a variable of known type: editAccountDto
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :100 :21) // mapper.Map<Account>(editAccountDto) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :101 :3) // Not a variable of known type: repository
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :101 :27) // Not a variable of known type: account
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :101 :3) // repository.UpdateEntity(account) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :102 :3) // Not a variable of known type: repository
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :102 :3) // repository.Save() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :103 :10) // Not a variable of known type: editAccountDto
return %10 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Services\\AccountService.cs" :103 :3)

^1: // ExitBlock
cbde.unreachable

}
