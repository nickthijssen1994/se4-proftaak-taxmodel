func @_backend.Controllers.AccountController.GetAccounts$$() -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :26 :2) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :29 :10) // Not a variable of known type: service
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :29 :10) // service.GetAll() (InvocationExpression)
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :29 :10) // service.GetAll().ToList() (InvocationExpression)
return %2 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :29 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.AccountController.Login$backend.Models.DTOs.Accounts.LoginDto$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :32 :2) {
^entry (%_loginDto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :34 :29)
cbde.store %_loginDto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :34 :29)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :36 :8) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :36 :8) // ModelState.IsValid (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :36 :7) // !ModelState.IsValid (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :36 :7)

^1: // JumpBlock
// Entity from another assembly: BadRequest
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ResponseConstants
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :38 :36) // ResponseConstants.InvalidInput (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :38 :22) // new Exception(ResponseConstants.InvalidInput) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :38 :11) // BadRequest(new Exception(ResponseConstants.InvalidInput)) (InvocationExpression)
return %6 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :38 :4)

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :41 :8) // Not a variable of known type: service
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :41 :32) // Not a variable of known type: loginDto
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :41 :32) // loginDto.Name (SimpleMemberAccessExpression)
%10 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :41 :8) // service.CheckNameExists(loginDto.Name) (InvocationExpression)
%11 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :41 :7) // !service.CheckNameExists(loginDto.Name) (LogicalNotExpression)
cond_br %11, ^3, ^4 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :41 :7)

^3: // JumpBlock
// Entity from another assembly: BadRequest
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ResponseConstants
%12 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :43 :36) // ResponseConstants.InvalidCredentials (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :43 :22) // new Exception(ResponseConstants.InvalidCredentials) (ObjectCreationExpression)
%14 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :43 :11) // BadRequest(new Exception(ResponseConstants.InvalidCredentials)) (InvocationExpression)
return %14 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :43 :4)

^4: // BinaryBranchBlock
%15 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :46 :17) // Not a variable of known type: service
%16 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :46 :35) // Not a variable of known type: loginDto
%17 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :46 :35) // loginDto.Name (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :46 :17) // service.GetByName(loginDto.Name) (InvocationExpression)
%19 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :46 :17) // service.GetByName(loginDto.Name).Password (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: VerifyPassword
%21 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :48 :23) // Not a variable of known type: loginDto
%22 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :48 :23) // loginDto.Password (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :48 :42) // Not a variable of known type: hash
%24 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :48 :8) // VerifyPassword(loginDto.Password, hash) (InvocationExpression)
%25 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :48 :7) // !VerifyPassword(loginDto.Password, hash) (LogicalNotExpression)
cond_br %25, ^5, ^6 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :48 :7)

^5: // JumpBlock
// Entity from another assembly: BadRequest
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ResponseConstants
%26 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :50 :36) // ResponseConstants.InvalidCredentials (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :50 :22) // new Exception(ResponseConstants.InvalidCredentials) (ObjectCreationExpression)
%28 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :50 :11) // BadRequest(new Exception(ResponseConstants.InvalidCredentials)) (InvocationExpression)
return %28 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :50 :4)

^6: // JumpBlock
// Entity from another assembly: Ok
%29 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :53 :13) // Not a variable of known type: service
%30 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :53 :27) // Not a variable of known type: loginDto
%31 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :53 :27) // loginDto.Name (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :53 :13) // service.Login(loginDto.Name) (InvocationExpression)
%33 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :53 :10) // Ok(service.Login(loginDto.Name)) (InvocationExpression)
return %33 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :53 :3)

^7: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.AccountController.Register$backend.Models.DTOs.Accounts.RegisterDto$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :56 :2) {
^entry (%_registerDto : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :58 :32)
cbde.store %_registerDto, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :58 :32)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :60 :21) // Not a variable of known type: registerDto
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :60 :21) // registerDto.Password (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :62 :8) // Identifier from another assembly: ModelState
%5 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :62 :8) // ModelState.IsValid (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :62 :7) // !ModelState.IsValid (LogicalNotExpression)
cond_br %6, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :62 :7)

^1: // JumpBlock
// Entity from another assembly: BadRequest
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ResponseConstants
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :64 :22) // ResponseConstants.InvalidInput (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :64 :11) // BadRequest(ResponseConstants.InvalidInput) (InvocationExpression)
return %8 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :64 :4)

^2: // BinaryBranchBlock
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :67 :8) // Not a variable of known type: password
%10 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :67 :21) // char (PredefinedType)
%11 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :67 :8) // password.Any(char.IsDigit) (InvocationExpression)
%12 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :67 :7) // !password.Any(char.IsDigit) (LogicalNotExpression)
cond_br %12, ^3, ^4 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :67 :7)

^3: // JumpBlock
// Entity from another assembly: BadRequest
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ResponseConstants
%13 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :69 :36) // ResponseConstants.PasswordMissingNumber (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :69 :22) // new Exception(ResponseConstants.PasswordMissingNumber) (ObjectCreationExpression)
%15 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :69 :11) // BadRequest(new Exception(ResponseConstants.PasswordMissingNumber)) (InvocationExpression)
return %15 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :69 :4)

^4: // BinaryBranchBlock
%16 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :72 :8) // Not a variable of known type: password
%17 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :72 :21) // char (PredefinedType)
%18 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :72 :8) // password.Any(char.IsUpper) (InvocationExpression)
%19 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :72 :7) // !password.Any(char.IsUpper) (LogicalNotExpression)
cond_br %19, ^5, ^6 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :72 :7)

^5: // JumpBlock
// Entity from another assembly: BadRequest
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ResponseConstants
%20 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :74 :36) // ResponseConstants.PasswordMissingCapital (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :74 :22) // new Exception(ResponseConstants.PasswordMissingCapital) (ObjectCreationExpression)
%22 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :74 :11) // BadRequest(new Exception(ResponseConstants.PasswordMissingCapital)) (InvocationExpression)
return %22 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :74 :4)

^6: // BinaryBranchBlock
%23 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :77 :7) // Not a variable of known type: service
%24 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :77 :31) // Not a variable of known type: registerDto
%25 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :77 :31) // registerDto.Name (SimpleMemberAccessExpression)
%26 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :77 :7) // service.CheckNameExists(registerDto.Name) (InvocationExpression)
cond_br %26, ^7, ^8 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :77 :7)

^7: // JumpBlock
// Entity from another assembly: BadRequest
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ResponseConstants
%27 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :79 :36) // ResponseConstants.UsernameTaken (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :79 :22) // new Exception(ResponseConstants.UsernameTaken) (ObjectCreationExpression)
%29 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :79 :11) // BadRequest(new Exception(ResponseConstants.UsernameTaken)) (InvocationExpression)
return %29 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :79 :4)

^8: // BinaryBranchBlock
%30 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :82 :7) // Not a variable of known type: service
%31 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :82 :32) // Not a variable of known type: registerDto
%32 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :82 :32) // registerDto.Email (SimpleMemberAccessExpression)
%33 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :82 :7) // service.CheckEmailExists(registerDto.Email) (InvocationExpression)
cond_br %33, ^9, ^10 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :82 :7)

^9: // JumpBlock
// Entity from another assembly: BadRequest
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ResponseConstants
%34 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :84 :43) // ResponseConstants.EmailTaken (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :84 :29) // new Exception(ResponseConstants.EmailTaken) (ObjectCreationExpression)
%36 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :84 :11) // BadRequest(error: new Exception(ResponseConstants.EmailTaken)) (InvocationExpression)
return %36 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :84 :4)

^10: // JumpBlock
// Entity from another assembly: Ok
%37 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :87 :13) // Not a variable of known type: service
%38 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :87 :30) // Not a variable of known type: registerDto
%39 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :87 :13) // service.Register(registerDto) (InvocationExpression)
%40 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :87 :10) // Ok(service.Register(registerDto)) (InvocationExpression)
return %40 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :87 :3)

^11: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.AccountController.VerifyPassword$string.string$(none, none) -> i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :90 :2) {
^entry (%_input : none, %_hash : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :90 :30)
cbde.store %_input, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :90 :30)
%1 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :90 :44)
cbde.store %_hash, %1 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :90 :44)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :92 :10) // Not a variable of known type: hasher
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :92 :28) // Not a variable of known type: input
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :92 :35) // Not a variable of known type: hash
%5 = cbde.unknown : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :92 :10) // hasher.VerifyHash(input, hash) (InvocationExpression)
return %5 : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\AccountController.cs" :92 :3)

^1: // ExitBlock
cbde.unreachable

}
