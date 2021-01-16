/**
 * @assertion Iterable<E> skip(int count)
 * Returns an Iterable that provides all but the first count elements.
 * @description checks that an Iterable that skips the first n elements is
 * returned.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function skip_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, n: number) => {
        const it = a.skip(n);
        assert((a.getLength() - n < 0 ? 0 : a.getLength()) == it.getLength());
        let k = 0;
        it.forEach((el) => {
            assert(a.elementAt(n + k++) == el);
        });

        check(
            create(List.from([1, 2, -3, 4] as any, {})), 4);
        check(
            create(List.from([1, 2, -3, 4] as any, {})), 0);
        check(
            create(List.from([11, 2, -3, 4] as any, {})), 2);
        check(
            create(List.from([1, 22, -3, 4] as any, {})), 4);
        check(
            create(List.from([1, 2, -5, -6, 100] as any, {})), 0);
        check(
            create(List.from([1, -1, 2, -5, -6] as any, {})), 1);
        check(
            create(List.from([0, 0, 1, 2, -5, -6] as any, {})), 2);
        check(create(List.from([0, 0, 1, 2, -5, -6] as any, {})), 6);
    };
}