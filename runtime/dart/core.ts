import {RuntimeType} from "../runtimeTypes";

export declare function print(this: void, arg: string): void;

export interface Object {
    runtimeType: RuntimeType;
}