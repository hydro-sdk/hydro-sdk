/**
 * @assertion E singleWhere(bool test(E element))
 * Returns the single element that satisfies f.
 * @description Checks that the single element that satisfies the given
 * predicate f is returned.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function singleWhere_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (
        a: IIterable<any>,
        f: (value: any) => boolean,
        expected: number
    ) => {
        const actual = a.singleWhere(f, {});
        assert(expected == actual);
    };

    check(create(List.from([1, 2, -3, 0] as any, {})), (value) => value > 1, 2);
    check(
        create(List.from([1, 2, -5, -6] as any, {})),
        (value) => value == 1,
        1
    );
}
