//Adapted from https://github.com/dart-lang/co19/blob/master/LibTest/core/Iterable/Iterable.empty_A01_t01.dart
import { Iterable } from "./../../../../runtime/dart/core/iterable";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function empty_A01_t01() {
    const i = Iterable.empty();
    assert(i.getLength() == 0);
    assert(i.getIsEmpty() == true);
}
