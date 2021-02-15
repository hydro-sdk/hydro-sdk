/**
 * @assertion Iterable<E> take(int count)
 * Returns a lazy iterable of the count first elements of this iterable.
 * @description Checks that an Iterable that contains the first n elements is
 * returned.
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function take_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, n: number) => {
        const it = a.take(n);
        assert(Math.min(a.getLength(), n) == it.getLength());
        let k = 0;
        it.forEach((el) => {
            assert(a.elementAt(k++) == el);
        });
    };

    check(create(List.from([1, 2, -3, 4] as any, {})), 4);
    check(create(List.from([1, 2, -3, 4] as any, {})), 0);
    check(create(List.from([11, 2, -3, 4] as any, {})), 2);
    check(create(List.from([1, 22, -3, 4] as any, {})), 4);
    check(create(List.from([1, 2, -5, -6, 100] as any, {})), 0);
    check(create(List.from([1, -1, 2, -5, -6] as any, {})), 1);
    check(create(List.from([0, 0, 1, 2, -5, -6] as any, {})), 2);
    check(create(List.from([0, 0, 1, 2, -5, -6] as any, {})), 6);
}
