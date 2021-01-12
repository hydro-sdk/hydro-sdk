/**
 * @assertion E firstWhere(bool test(E element), {E orElse()})
 * Returns the first element that satisfies the given predicate test.
 * Iterates through elements and returns the first to satsify test.
 * If no element satisfies test, the result of invoking the orElse function
 * is returned. If orElse is omitted, it defaults to throwing a StateError.
 * @description Checks that the first element that satisfies the given predicate
 * test is returned
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function fold_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, init: number, combine: any, expected: number) => {
        const actual = a.fold(init, combine);
        assert(expected == actual);

    };

    check(create(List.from([1, 2, -3] as any, {})),
        0, (value: number, element: number) => value + element, 0);
    check(create(List.from([1, 2, -3] as any, {})),
        1, (value: number, element: number) => value * element, -6);
    check(create(List.from([0, 2, -3] as any, {})),
        1, (value: number, element: number) => value + element, 0);
    check(create(List.from([1, 2, -5, -6] as any, {})),
        -1000, (value: number, element: number) => Math.max(value, element), 2);
}