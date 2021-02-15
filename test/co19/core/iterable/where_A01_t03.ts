/**
 * @assertion Iterable<E> where(bool f(E element))
 * Returns a lazy Iterable with all elements that satisfy the predicate f.
 * @description Checks that the given function is not executed and an empty
 * collection is returned if this Iterable is empty.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A01_t03(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    let a = create(List.from([] as any, {})).where(() => true);
    let it = a.getIterator();
    while (it.moveNext()) {}
    assert(a.getIsEmpty());

    a = create(List.from([] as any, {})).where(() => {
        throw "Should not be called";
    });
    it = a.getIterator();
    while (it.moveNext()) {}
    assert(a.getIsEmpty());
}
