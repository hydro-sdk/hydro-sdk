/**
 * @assertion Iterable expand(Iterable f(E element))
 * Expands each element of this Iterable into zero or more elements.
 * The resulting Iterable runs through the elements returned by f for each
 * element of this, in iteration order.
 * The returned Iterable is lazy, and calls f for each element of this every
 * time it's iterated.
 * @description Checks that the function [f] is called for every element of the
 * list.
 * Checks that resulting Iterable will run through the elements returned by f
 * for each element of this
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function expand_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const checkCount = (a: IIterable<any>) => {
        let count = 0;
        const expanded = a.expand((element: any) => {
            assert(a.elementAt(count) == element);
            count++;
            return List.from<any>([element, element] as any, {});
        });

        assert(a.getLength() * 2 == expanded.getLength());
        assert(count == a.getLength());
    };

    checkCount(create(undefined));
    checkCount(create(List.from<number>([1] as any, {})));
    checkCount(create(List.from<number>([1, 2] as any, {})));
    checkCount(create(List.from<number>([1, 2, 2] as any, {})));
    checkCount(create(List.from<number>([1, 2, 2, 3] as any, {})));
}
