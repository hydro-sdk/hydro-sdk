import { IList, List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

let arr: Array<number> = [0, 1, 2];
let list: IList<number> = List.fromArray(arr);

assert(list.elementAt(0) != undefined);
assert(list.elementAt(0) == arr[0]);
assert(list.getFirst() == arr[0]);
assert(list.elementAt(1) != undefined);
assert(list.elementAt(1) == arr[1]);
assert(list.elementAt(2) != undefined);
assert(list.elementAt(2) == arr[2]);
assert(list.getLast() == arr[2]);
assert(list.getLength() == 3);
assert(list.getIsNotEmpty());
assert(!list.getIsEmpty());

list = list.map((e) => e + 1).toList({ growable: true });

assert(list.elementAt(0) != undefined);
assert(list.elementAt(0) == 1);
assert(list.getFirst() == 1);
assert(list.elementAt(1) != undefined);
assert(list.elementAt(1) == 2);
assert(list.elementAt(2) != undefined);
assert(list.elementAt(2) == 3);
assert(list.getLast() == 3);
assert(list.getLength() == 3);
assert(list.getIsNotEmpty());
assert(!list.getIsEmpty());
