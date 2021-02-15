/**
 * @assertion Iterable<E> skipWhile(bool test(E value))
 * The filtering happens lazily.
 * @description Checks that the test method is not called when the skipWhile is
 * executed.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function skipwhile_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const f = (value: any) => {
        throw "Called f";
    };

    create(List.from([] as any, {})).skipWhile(f);
    create(List.from([1] as any, {})).skipWhile(f);
    create(List.from([1, 3, 7, 4, 5, 6] as any, {})).skipWhile(f);
}
