/**
 * @assertion Iterable<E> skip(int count)
 * If this has fewer than count elements, then the resulting Iterable is empty.
 * @description if this has fewer than n elements, then the resulting Iterable
 * is empty.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function skip_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, n: number) => {
        const it = a.skip(n);
        assert(0 == it.getLength());
    };

    check(create(List.from([] as any, {})), 1);
    check(create(List.from([1, 2, -3, 4] as any, {})), 5);
    check(create(List.from([11, 2, -3, 4] as any, {})), 200);
    check(create(List.from([1, 22, -3, 4] as any, {})), 400000);
    check(create(List.from([1, 2, -5, -6, 100] as any, {})), 5);
    check(create(List.from([1, -1, 2, -5, -6] as any, {})), 5);
    check(create(List.from([0, 0, 1, 2, -5, -6] as any, {})), 25);
    check(create(List.from([0, 0, 1, 2, -5, -6] as any, {})), 60000);
}
