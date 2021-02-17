/**
 * @assertion Iterable<E> take(int count)
 * The count must not be negative.
 * @description Checks that an error is thrown if n is negative.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function take_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, n: number) => {
        let threw = false;
        try {
            a.take(n);
        } catch (err) {
            threw = true;
        }
        assert(threw == true);
    };

    check(create(List.from([1, 2, -3, 4] as any, {})), -1);
    check(create(List.from([1, 2, -5, -6, 100] as any, {})), -1);
    check(create(List.from([undefined, 2, -5, -6, 100] as any, {})), -1000);
}
