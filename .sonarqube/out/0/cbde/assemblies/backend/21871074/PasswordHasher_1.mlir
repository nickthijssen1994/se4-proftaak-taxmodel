func @_backend.Helpers.PasswordHasher.GenerateHash$string$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :13 :2) {
^entry (%_input : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :13 :29)
cbde.store %_input, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :13 :29)
br ^0

^0: // ForInitializerBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :16 :17) // Not a variable of known type: sha256Hash
// Entity from another assembly: Encoding
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :16 :40) // Encoding.UTF8 (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :16 :63) // Not a variable of known type: input
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :16 :40) // Encoding.UTF8.GetBytes(input) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :16 :17) // sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(input)) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :20 :18) // new StringBuilder() (ObjectCreationExpression)
%9 = constant 0 : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :16)
%10 = cbde.alloca i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :12) // i
cbde.store %9, %10 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :12)
br ^1

^1: // BinaryBranchBlock
%11 = cbde.load %10 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :19)
%12 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :23) // Not a variable of known type: data
%13 = cbde.unknown : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :23) // data.Length (SimpleMemberAccessExpression)
%14 = cmpi "slt", %11, %13 : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :19)
cond_br %14, ^2, ^3 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :19)

^2: // SimpleBlock
%15 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :26 :4) // Not a variable of known type: sBuilder
%16 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :26 :20) // Not a variable of known type: data
%17 = cbde.load %10 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :26 :25)
%18 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :26 :20) // data[i] (ElementAccessExpression)
%19 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :26 :37) // "x2" (StringLiteralExpression)
%20 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :26 :20) // data[i].ToString("x2") (InvocationExpression)
%21 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :26 :4) // sBuilder.Append(data[i].ToString("x2")) (InvocationExpression)
br ^4

^4: // SimpleBlock
%22 = cbde.load %10 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :36)
%23 = constant 1 : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :36)
%24 = addi %22, %23 : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :36)
cbde.store %24, %10 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :24 :36)
br ^1

^3: // JumpBlock
%25 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :30 :10) // Not a variable of known type: sBuilder
%26 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :30 :10) // sBuilder.ToString() (InvocationExpression)
return %26 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :30 :3)

^5: // ExitBlock
cbde.unreachable

}
func @_backend.Helpers.PasswordHasher.VerifyHash$string.string$(none, none) -> i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :33 :2) {
^entry (%_input : none, %_hash : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :33 :25)
cbde.store %_input, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :33 :25)
%1 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :33 :39)
cbde.store %_hash, %1 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :33 :39)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateHash
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :36 :34) // Not a variable of known type: input
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :36 :21) // GenerateHash(input) (InvocationExpression)
// Entity from another assembly: StringComparer
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :39 :29) // StringComparer.OrdinalIgnoreCase (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :41 :10) // Not a variable of known type: comparer
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :41 :27) // Not a variable of known type: hashOfInput
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :41 :40) // Not a variable of known type: hash
%10 = cbde.unknown : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :41 :10) // comparer.Compare(hashOfInput, hash) (InvocationExpression)
%11 = constant 0 : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :41 :49)
%12 = cmpi "eq", %10, %11 : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :41 :10)
return %12 : i1 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Security\\PasswordHasher.cs" :41 :3)

^1: // ExitBlock
cbde.unreachable

}
