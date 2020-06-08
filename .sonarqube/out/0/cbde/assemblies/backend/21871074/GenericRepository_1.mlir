func @_backend.DAL.Repositories.GenericRepository$TEntity$.GetEntities$TProperty$$$() -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :20 :2) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :22 :31) // Not a variable of known type: SetEntity
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :23 :10) // Not a variable of known type: query
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :23 :10) // query.ToList() (InvocationExpression)
return %3 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :23 :3)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetEntities(none, none), it contains poisonous unsupported syntaxes

func @_backend.DAL.Repositories.GenericRepository$TEntity$.GetEntityById$object$(none) -> none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :45 :2) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :45 :39)
cbde.store %_id, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :45 :39)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :47 :10) // Not a variable of known type: SetEntity
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :47 :25) // Not a variable of known type: id
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :47 :10) // SetEntity.Find(id) (InvocationExpression)
return %3 : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :47 :3)

^1: // ExitBlock
cbde.unreachable

}
func @_backend.DAL.Repositories.GenericRepository$TEntity$.InsertEntity$TEntity$(none) -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :50 :2) {
^entry (%_entity : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :50 :35)
cbde.store %_entity, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :50 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :52 :3) // Not a variable of known type: SetEntity
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :52 :17) // Not a variable of known type: entity
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :52 :3) // SetEntity.Add(entity) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_backend.DAL.Repositories.GenericRepository$TEntity$.DeleteEntityById$object$(none) -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :55 :2) {
^entry (%_id : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :55 :39)
cbde.store %_id, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :55 :39)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :57 :24) // Not a variable of known type: SetEntity
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :57 :39) // Not a variable of known type: id
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :57 :24) // SetEntity.Find(id) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DeleteEntity
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :58 :16) // Not a variable of known type: entityToDelete
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :58 :3) // DeleteEntity(entityToDelete) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_backend.DAL.Repositories.GenericRepository$TEntity$.DeleteEntity$TEntity$(none) -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :61 :2) {
^entry (%_entityToDelete : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :61 :35)
cbde.store %_entityToDelete, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :61 :35)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :7) // Not a variable of known type: _context
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :22) // Not a variable of known type: entityToDelete
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :7) // _context.Entry(entityToDelete) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :7) // _context.Entry(entityToDelete).State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :47) // EntityState.Detached (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1  loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :7) // comparison of unknown type: _context.Entry(entityToDelete).State == EntityState.Detached
cond_br %6, ^1, ^2 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :7)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :69) // Not a variable of known type: SetEntity
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :86) // Not a variable of known type: entityToDelete
%9 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :63 :69) // SetEntity.Attach(entityToDelete) (InvocationExpression)
br ^2

^2: // SimpleBlock
%10 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :64 :3) // Not a variable of known type: SetEntity
%11 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :64 :20) // Not a variable of known type: entityToDelete
%12 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :64 :3) // SetEntity.Remove(entityToDelete) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_backend.DAL.Repositories.GenericRepository$TEntity$.UpdateEntity$TEntity$(none) -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :67 :2) {
^entry (%_entityToUpdate : none):
%0 = cbde.alloca none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :67 :35)
cbde.store %_entityToUpdate, %0 : memref<none> loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :67 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :69 :3) // Not a variable of known type: SetEntity
%2 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :69 :20) // Not a variable of known type: entityToUpdate
%3 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :69 :3) // SetEntity.Attach(entityToUpdate) (InvocationExpression)
%4 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :70 :3) // Not a variable of known type: _context
%5 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :70 :18) // Not a variable of known type: entityToUpdate
%6 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :70 :3) // _context.Entry(entityToUpdate) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :70 :3) // _context.Entry(entityToUpdate).State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%8 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :70 :42) // EntityState.Modified (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_backend.DAL.Repositories.GenericRepository$TEntity$.Save$$() -> () loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :73 :2) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :75 :3) // Not a variable of known type: _context
%1 = cbde.unknown : i32 loc("D:\\Files\\Delta\\Proftaak\\proftaak-se4-taxmodel\\backend\\DAL\\Repositories\\GenericRepository.cs" :75 :3) // _context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
