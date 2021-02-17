/**
 * @assertion Iterable expand(Iterable f(E element))
 * Expands each element of this Iterable into zero or more elements.
 * The resulting Iterable runs through the elements returned by f for each
 * element of this, in iteration order.
 * The returned Iterable is lazy, and calls f for each element of this every
 * time it's iterated.
 * @description Checks that the returned Iterable is lazy. Function f is not
 * called if returned Iterable has no elements
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function expand_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>) => {
        const expanded = a.expand((element: any) => {
            throw new Error("Should not be called");
        });
    };

    check(create(undefined));
    check(create(List.from<number>([1] as any, {})));
    check(create(List.from<number>([1, 2] as any, {})));
    check(create(List.from<number>([1, 2, 2] as any, {})));
    check(create(List.from<number>([1, 2, 2, 3] as any, {})));
}
