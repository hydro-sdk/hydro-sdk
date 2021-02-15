/**
 * @assertion Iterable<E> where(bool f(E element))
 * Returns a lazy Iterable with all elements that satisfy the predicate f.
 * @description Checks that all elements of the returned Iterable satisfy the
 * predicate [f].
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A01_t01(
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
        assert(expected.getLength() == ret.getLength());
        for (let i = 0; i != expected.getLength(); i++) {
            assert(expected.elementAt(i) == ret.elementAt(i));
        }
    };

    const f = (e: any) => e > 1;
    check(
        List.from([-1, 0, 1, 2, 3, 4] as any, {}),
        f,
        List.from([2, 3, 4] as any, {})
    );

    const f2 = (e: any) => e == -123;
    const l = List.filled(100, 0, {});
    l.setAll(99, List.from([-123] as any, {}));
    check(l, f2, List.from([-123] as any, {}));

    const f3 = (e: any) => e < 0;
    check(List.from([1, 2, 3] as any, {}), f3, List.from([] as any, {}));
}
