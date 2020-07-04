import { Type } from "./../dart/core/type";

class StaticRuntimeType {
    public static runtimeType: Type;
}

export interface BuildContext {
    ancestorInheritedElementForWidgetOfExactType: <T extends StaticRuntimeType>(targetType: Type) => T | undefined;
}