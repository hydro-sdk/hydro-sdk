/**
 * @assertion Iterable<E> skip(int count)
 * The count must not be negative
 * @description checks that a RangeError is thrown if n is negative.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function skip_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, n: number) => {
        let threw = false;
        try {
            const it = a.skip(n);
        } catch (err) {
            threw = true;
        }
        assert(threw == true);
    };

    check(create(List.from([1, 2, -3, 4] as any, {})), -1);
    check(create(List.from([1, 2, -5, -6, 100] as any, {})), -1);
    check(create(List.from([undefined, 2, -5, -6, 100] as any, {})), -1000);
}
