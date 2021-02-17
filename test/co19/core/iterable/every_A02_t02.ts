/**
 * @assertion bool every(bool f(E element))
 * Checks whether every element of this iterable satisfies test.
 * Checks every element in iteration order, and returns false if any of them
 * make test return false, otherwise returns true.
 * @description Checks that [f] is not called if list is empty
 */

import { IIterable } from "./../../../../runtime/dart/index";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function every_A02_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const a = create(undefined);
    let actualCount = 0;

    a.every((e) => {
        actualCount++;
        return e;
    });

    assert(0 == actualCount);
}
