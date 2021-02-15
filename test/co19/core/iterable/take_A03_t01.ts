/**
 * @assertion Iterable<E> take(int count)
 * The returned Iterable may contain fewer than count elements, if this contains
 * fewer than count elements.
 * @description Checks that if Iterable contains fewer than count elements then
 * resulting Iterable contain fever than n elements
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function take_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>) => {
        const it = a.take(a.getLength() + 1);
        assert(a.getLength() == it.getLength());
    };

    check(create(List.from([] as any, {})));
    check(create(List.from([1] as any, {})));
    check(create(List.from([11, 2] as any, {})));
    check(create(List.from([1, 22, -3, 4] as any, {})));
    check(create(List.from([0, 0, 1, 2] as any, {})));
    check(create(List.from([0, 0, 1, 2, -5, -6] as any, {})));
}
