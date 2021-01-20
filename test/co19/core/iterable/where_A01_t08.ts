/**
 * @assertion Iterable<E> where(bool f(E element))
 * Returns a lazy Iterable with all elements that satisfy the predicate f.
 * @description Checks that nested invocations of where() on the same collection
 * does not cause any errors.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A01_t08(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const l = create(List.from([1, -3, 10, 17] as any, {}));

    const l1 = List.empty({ growable: true });
    const outer = l.where((x: any) => {
        l1.add(x);
        const l2 = List.empty({ growable: true });
        const inner = l.where((y: any) => {
            l2.add(y);
            return true;
        });
        const it = inner.getIterator();
        while (it.moveNext()) {}

        assert(l.getLength() == l2.getLength());
        for (let i = 0; i != l.getLength(); i++) {
            assert(l.elementAt(i) == l2.elementAt(i));
        }
        return true;
    });

    const it = outer.getIterator();
    while (it.moveNext()) {}
    assert(l.getLength() == l1.getLength());
    for (let i = 0; i != l.getLength(); i++) {
        assert(l.elementAt(i) == l1.elementAt(i));
    }
}
