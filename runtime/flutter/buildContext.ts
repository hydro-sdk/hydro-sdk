import { Type } from "./../dart/core/type";

export interface BuildContext {
    ancestorInheritedElementForWidgetOfExactType: <
        T extends { runtimeType: Type }
    >(
        targetType: Type
    ) => T | undefined;
}
