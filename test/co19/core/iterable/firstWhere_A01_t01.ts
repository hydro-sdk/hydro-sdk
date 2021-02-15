/**
 * @assertion E firstWhere(bool test(E element), {E orElse()})
 * Returns the first element that satisfies the given predicate test.
 * Iterates through elements and returns the first to satsify test.
 * If no element satisfies test, the result of invoking the orElse function
 * is returned. If orElse is omitted, it defaults to throwing a StateError.
 * @description Checks that the first element that satisfies the test
 * is returned.
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function firstWhere_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>,
    props: { isSet: boolean }
) {
    const check = (
        a: IIterable<any>,
        test: (value: any) => boolean,
        expected: any
    ) => {
        const actual = a.firstWhere(test, {});
        assert(expected == actual);
    };

    if (props.isSet) {
        check(
            create(List.from([1, 2, -3, 4] as any, {})),
            (value) => value > 2,
            4
        );
        check(
            create(List.from([1, 2, -7, -5] as any, {})),
            (value) => value < -5,
            -7
        );
    } else {
        check(
            create(List.from([1, 2, -3, 4] as any, {})),
            (value) => value > 1,
            2
        );
        check(
            create(List.from([1, 2, -5, -6] as any, {})),
            (value) => value < 0,
            -5
        );
    }
}
