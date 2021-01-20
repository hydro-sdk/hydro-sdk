/**
 * @assertion Iterable<E> where(bool f(E element))
 * ...
 * The matching elements have the same order in the returned iterable as they
 * have in iterator.
 * @description Checks that all elements of the returned have the same order as
 * they have in iterator
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (
        source: IIterable<any>,
        f: (element: any) => boolean,
        expected: IIterable<any>
    ) => {
        const ret = create(source).where(f);
        const it = ret.getIterator();
        while (it.moveNext()) {
            assert(f(it.getCurrent()) == true);
        }
        const l = create(expected);
        assert(l.getLength() == ret.getLength());
        for (let i = 0; i != l.getLength(); i++) {
            assert(l.elementAt(i) == ret.elementAt(i));
        }
    };

    const f = (e: any) => e >= 0;
    check(
        List.from([-1, 0, 1, 2, 3, 4] as any, {}),
        f,
        List.from([0, 1, 2, 3, 4] as any, {})
    );
    check(
        List.from([-1, 0, 1, -2, 3, 4] as any, {}),
        f,
        List.from([0, 1, 3, 4] as any, {})
    );
    check(
        List.from([1, 0, -1, 2, -3, 4] as any, {}),
        f,
        List.from([1, 0, 2, 4] as any, {})
    );
}
