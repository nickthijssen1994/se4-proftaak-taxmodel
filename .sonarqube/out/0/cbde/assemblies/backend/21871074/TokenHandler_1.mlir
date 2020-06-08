func @_backend.Security.TokenHandler.GenerateToken$string$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :24 :2) {
^entry (%_name : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :24 :30)
cbde.store %_name, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :24 :30)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :26 :18) // new JwtSecurityTokenHandler() (ObjectCreationExpression)
// Entity from another assembly: Encoding
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :27 :9) // Encoding.ASCII (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :27 :33) // Not a variable of known type: appSettings
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :27 :33) // appSettings.Secret (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :27 :9) // Encoding.ASCII.GetBytes(appSettings.Secret) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :28 :45) // new SecurityTokenDescriptor     {      Subject = new ClaimsIdentity(new Claim[]      {       new Claim(ClaimTypes.Name, name)      }),      Expires = DateTime.UtcNow.AddDays(7),      SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key),       SecurityAlgorithms.HmacSha256Signature)     } (ObjectCreationExpression)
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :30 :43) //  (OmittedArraySizeExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :30 :37) // Claim[] (ArrayType)
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :30 :33) // new Claim[]      {       new Claim(ClaimTypes.Name, name)      } (ArrayCreationExpression)
// Entity from another assembly: ClaimTypes
%10 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :32 :15) // ClaimTypes.Name (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :32 :32) // Not a variable of known type: name
%12 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :32 :5) // new Claim(ClaimTypes.Name, name) (ObjectCreationExpression)
%13 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :30 :14) // new ClaimsIdentity(new Claim[]      {       new Claim(ClaimTypes.Name, name)      }) (ObjectCreationExpression)
// Entity from another assembly: DateTime
%14 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :34 :14) // DateTime.UtcNow (SimpleMemberAccessExpression)
%15 = constant 7 : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :34 :38)
%16 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :34 :14) // DateTime.UtcNow.AddDays(7) (InvocationExpression)
%17 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :35 :73) // Not a variable of known type: key
%18 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :35 :48) // new SymmetricSecurityKey(key) (ObjectCreationExpression)
// Entity from another assembly: SecurityAlgorithms
%19 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :36 :5) // SecurityAlgorithms.HmacSha256Signature (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :35 :25) // new SigningCredentials(new SymmetricSecurityKey(key),       SecurityAlgorithms.HmacSha256Signature) (ObjectCreationExpression)
%22 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :39 :33) // Not a variable of known type: tokenHandler
%23 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :39 :58) // Not a variable of known type: tokenDescriptor
%24 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :39 :33) // tokenHandler.CreateToken(tokenDescriptor) (InvocationExpression)
%26 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :40 :10) // Not a variable of known type: tokenHandler
%27 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :40 :34) // Not a variable of known type: securityToken
%28 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :40 :10) // tokenHandler.WriteToken(securityToken) (InvocationExpression)
return %28 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\TokenHandler.cs" :40 :3)

^1: // ExitBlock
cbde.unreachable

}
