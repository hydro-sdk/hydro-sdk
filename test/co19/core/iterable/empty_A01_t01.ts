/**
 * @assertion const Iterable.empty()
 * Creates an empty iterable.
 * The empty iterable has no elements, and iterating it always stops
 * immediately.
 * @description Checks that Iterator created by the Iterable.empty() has no
 * elements
 */
import { Iterable } from "./../../../../runtime/dart/index";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function empty_A01_t01() {
    const i = Iterable.empty();
    assert(i.getLength() == 0);
    assert(i.getIsEmpty() == true);
}
