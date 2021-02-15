/**
 * @assertion Iterable<E> where(bool f(E element))
 * Returns a lazy Iterable with all elements that satisfy the predicate f.
 * @description Checks that if predicate function always returns true then
 * resulting collection equals to the initial one
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A01_t06(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const list = List.empty({ growable: true });

    for (let i = 0; i < 100; i++) {
        list.add(i);
    }

    let res = create(list).where(() => true);

    assert(res.getLength() == 100);
    let i = 0;
    let it = res.getIterator();
    while (it.moveNext()) {
        assert(i == it.getCurrent());
        i++;
    }
}
