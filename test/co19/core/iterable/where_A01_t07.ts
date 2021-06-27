/**
 * @assertion Iterable<E> where(bool f(E element))
 * Returns a lazy Iterable with all elements that satisfy the predicate f.
 * @description Checks that this method returns correct collection for various
 * predicates.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A01_t07(
    create: (content: IIterable<any> | undefined) => IIterable<any>,
    props: { isSet: boolean }
) {
    const list = List.empty({ growable: true });

    for (let i = 0; i < 101; i++) {
        list.add(i - 50);
    }

    let a = create(list).where((element) => element > 0);
    assert(a.getLength() == 50);
    let range = list.getRange(51, 101);
    assert(range.getLength() == a.getLength());
    for (let i = 0; i != range.getLength(); i++) {
        assert(range.elementAt(i) == a.elementAt(i));
    }

    a = create(list).where((element) => element == 0);
    assert(a.getLength() == 1);
    assert(a.getFirst() == 0);

    a = create(list).where(() => true);
    assert(a.getLength() == 101);
    if (!props.isSet) {
        assert(list.getLength() == a.getLength());
        for (let i = 0; i != list.getLength(); i++) {}
    }
}
