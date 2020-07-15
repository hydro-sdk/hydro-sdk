import { List } from "../../../runtime/dart/collection/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

let arr: Array<number> = [0, 1, 2];
let list: List<number> = List.fromArray(arr);

assert(list.elementAt(0) != undefined);
assert(list.elementAt(0) == arr[0]);
assert(list.first() == arr[0]);
assert(list.elementAt(1) != undefined);
assert(list.elementAt(1) == arr[1]);
assert(list.elementAt(2) != undefined);
assert(list.elementAt(2) == arr[2]);
assert(list.last() == arr[2]);
assert(list.length() == 3);
assert(list.isNotEmpty());
assert(!list.isEmpty());

list = list.map((e) => e + 1);

assert(list.elementAt(0) != undefined);
assert(list.elementAt(0) == 1);
assert(list.first() == 1);
assert(list.elementAt(1) != undefined);
assert(list.elementAt(1) == 2);
assert(list.elementAt(2) != undefined);
assert(list.elementAt(2) == 3);
assert(list.last() == 3);
assert(list.length() == 3);
assert(list.isNotEmpty());
assert(!list.isEmpty());

let listArr = list.unwrap();

assert(listArr[0] != undefined);
assert(listArr[0] == list.elementAt(0));
assert(listArr[1] != undefined);
assert(listArr[1] == list.elementAt(1));
assert(listArr[2] != undefined);
assert(listArr[2] == list.elementAt(2));