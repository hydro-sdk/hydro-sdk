class "dart:core"::List {
  static "dart:core"::class::List<type::T> fromArray<T extends "dart:core"::class::Object?>([
    [[ ignoreTransform(@"referenceRewriting") ]]
    [[ ignoreAnalysis(@"referenceCollection")]]
    class::Array<type::T>? array,
  ]) -> {
    @"dartStaticMethodNamespaceSymbolDeclaration" : false,
    @"tsClassVmDeclaration" : false,
    @"tsClassStaticMethodImplementation" : @"if(array!==undefined){return List.from<T>(array as any,{}) as List<T>;}return List.from<T>([] as any,{}) as List<T>;",
  };
}