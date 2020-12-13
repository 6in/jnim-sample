import jnim

# 利用するJavaクラスの定義(をいちいち定義しないといけない)
jclass java.util.UUID* of JVMObject:
  proc toString*: string

jclass com.fasterxml.uuid.impl.RandomBasedGenerator* of JVMObject:
  proc generate*: UUID

jclass com.fasterxml.uuid.impl.NameBasedGenerator*  of JVMObject:
  proc generate*(name: string): UUID

jclass com.fasterxml.uuid.Generators* of JVMObject:
  proc randomBasedGenerator*(): RandomBasedGenerator {.`static`.}
  proc nameBasedGenerator*(): NameBasedGenerator {.`static`.}
