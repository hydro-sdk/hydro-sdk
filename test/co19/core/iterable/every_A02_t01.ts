/**
 * @assertion bool every(bool f(E element))
 * Checks whether every element of this iterable satisfies test.
 * Checks every element in iteration order, and returns false if any of them
 * make test return false, otherwise returns true.
 * @description Checks that method always returns true on an empty list.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function every_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    assert(create(undefined).every(() => false) == true);
}
