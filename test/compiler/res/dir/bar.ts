import { FooClass } from "./fooClass";

export function bar(): FooClass {
    return new FooClass("FooClass from bar");
}
