/**
 * @assertion E reduce(E combine(E value, E element))
 * Reduces a collection to a single value by iteratively combining elements of
 * the collection using the provided function.
 * @description Checks that the result is correct for simple functions.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function reduce_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (
        a: IIterable<any>,
        combine: (value: any, element: any) => number,
        expected: number
    ) => {
        const actual = a.reduce(combine);
        assert(expected == actual);
    };

    check(
        create(List.from([1, 2, -3] as any, {})),
        (value, element) => value + element,
        0
    );
    check(
        create(List.from([1, 2, -3] as any, {})),
        (value, element) => value * element,
        -6
    );
    check(
        create(List.from([0, 2, -3] as any, {})),
        (value, element) => value * element,
        0
    );
    check(
        create(List.from([1, 2, -5, -6] as any, {})),
        (value, element) => Math.max(value, element),
        2
    );
}
