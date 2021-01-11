/**
 * @assertion E first
 * Returns the first element.
 * Throws a StateError if this is empty. Otherwise returs the first element
 * in the iteration order, equivalent to (iterator..moveNext())..current.
 * @description Checks that first is equivalent to
 * (iterator..moveNext())..current
 */

import { List } from "../../../../runtime/dart/core/list";
import { IIterable } from "./../../../../runtime/dart/core/iterable";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function first_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const a = create(List.from([1, 2, 3, 4, 5] as any, {}));
    const i = a.getIterator();

    i.moveNext();
    const v = i.getCurrent();
    assert(v == a.getFirst());
}