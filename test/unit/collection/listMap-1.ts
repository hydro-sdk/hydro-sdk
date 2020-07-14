import { List } from "../../../runtime/dart/collection/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

let arr: Array<number> = [0, 1, 2];
let list: List<number> = List.fromArray(arr);

assert(list.elementAt(0) != undefined);
assert(list.elementAt(0) == arr[0]);
assert(list.elementAt(2) != undefined);
assert(list.elementAt(1) == arr[1]);
assert(list.elementAt(2) != undefined);
assert(list.elementAt(2) == arr[2]);

list = list.map((e) => e + 1);

assert(list.elementAt(0) != undefined);
assert(list.elementAt(0) == 1);
assert(list.elementAt(1) != undefined);
assert(list.elementAt(1) == 2);
assert(list.elementAt(2) != undefined);
assert(list.elementAt(2) == 3);

