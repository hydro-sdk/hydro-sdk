/**
 * @assertion Iterable<E> takeWhile(bool test(E value))
 * The filtering happens lazily. Every new iterator of the returned iterable
 * starts iterating over the elements of this.
 * @description Checks that the test method is not called when the takeWhile is
 * executed.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "./../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function takeWhile_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const f = (value: any): boolean => {
        throw new Error("Should not be called");
    };

    create(List.from([] as any, {})).takeWhile(f);
    create(List.from([1] as any, {})).takeWhile(f);
    create(List.from([1, 3, 7, 4, 5, 6] as any, {})).takeWhile(f);
}