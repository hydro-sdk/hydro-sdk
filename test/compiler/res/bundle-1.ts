import { bar } from "./dir/bar";
import {FooClass} from "./dir/fooClass";

const fooClass = bar();
const foo2 = new FooClass("");

console.log(fooClass.foo);