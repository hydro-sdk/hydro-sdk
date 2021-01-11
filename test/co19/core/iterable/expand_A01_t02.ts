/**
 * @assertion Iterable expand(Iterable f(E element))
 * Expands each element of this Iterable into zero or more elements.
 * The resulting Iterable runs through the elements returned by f for each
 * element of this, in iteration order.
 * The returned Iterable is lazy, and calls f for each element of this every
 * time it's iterated.
 * @description Checks that the length of resulting Iterable equals  the total
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "./../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function expand_A01_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {

    const check = (a: IIterable<any>) => {
        let count = 0;
        const expanded = a.expand((element: any) => {
            const res = List.empty({ growable: true });
            for (let k = 0; k < element; k++) {
                res.add(k);
                count++;
            }
            return res;
        });
        let expandedLength = expanded.getLength();
        assert(count == expandedLength);
    };

    check(create(undefined));
    check(create(List.from<number>([1] as any, {})));
    check(create(List.from<number>([1, 2] as any, {})));
    check(create(List.from<number>([1, 2, 2] as any, {})));
    check(create(List.from<number>([1, 2, 2, 3] as any, {})));
}