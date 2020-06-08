func @_backend.Controllers.ExampleController.GetAll$$() -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :19 :2) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :22 :10) // Not a variable of known type: _repo
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :22 :50) // null (NullLiteralExpression)
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :22 :56) // null (NullLiteralExpression)
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :22 :10) // _repo.GetEntities<IEnumerable<Example>>(null, null) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :22 :10) // _repo.GetEntities<IEnumerable<Example>>(null, null).ToList() (InvocationExpression)
return %4 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :22 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.ExampleController.Get$int$(i32) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :25 :2) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :26 :35)
cbde.store %_id, %0 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :26 :35)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :28 :10) // Not a variable of known type: _repo
%2 = cbde.load %0 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :28 :30)
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :28 :10) // _repo.GetEntityById(id) (InvocationExpression)
return %3 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :28 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.ExampleController.Add$backend.Models.Example$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :31 :2) {
^entry (%_example : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :32 :35)
cbde.store %_example, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :32 :35)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :34 :3) // Not a variable of known type: _repo
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :34 :22) // Not a variable of known type: example
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :34 :3) // _repo.InsertEntity(example) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :35 :3) // Not a variable of known type: _repo
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :35 :3) // _repo.Save() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :36 :10) // Not a variable of known type: example
return %6 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :36 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.ExampleController.Update$backend.Models.Example$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :39 :2) {
^entry (%_example : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :40 :38)
cbde.store %_example, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :40 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :42 :3) // Not a variable of known type: _repo
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :42 :22) // Not a variable of known type: example
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :42 :3) // _repo.UpdateEntity(example) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :43 :3) // Not a variable of known type: _repo
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :43 :3) // _repo.Save() (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :44 :10) // Not a variable of known type: example
return %6 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :44 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.Controllers.ExampleController.Delete$int$(i32) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :47 :2) {
^entry (%_id : i32):
%0 = cbde.alloca i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :48 :38)
cbde.store %_id, %0 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :48 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :50 :17) // Not a variable of known type: _repo
%2 = cbde.load %0 : memref<i32> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :50 :37)
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :50 :17) // _repo.GetEntityById(id) (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :51 :3) // Not a variable of known type: _repo
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :51 :22) // Not a variable of known type: example
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :51 :3) // _repo.DeleteEntity(example) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :52 :3) // Not a variable of known type: _repo
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :52 :3) // _repo.Save() (InvocationExpression)
%10 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :53 :10) // Not a variable of known type: example
return %10 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\Controllers\\ExampleController.cs" :53 :3)

^1: // ExitBlock
cbde.unreachable

}
