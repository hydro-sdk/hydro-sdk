import {RuntimeType} from "../runtimeTypes";

declare const dart: {
    core: {
        print: (this: void, args: string) => void;
    };
};

export function print(this: void, args: string): void 
{
    dart.core.print(args);
}

export interface DartObject {
    runtimeType: RuntimeType;
}