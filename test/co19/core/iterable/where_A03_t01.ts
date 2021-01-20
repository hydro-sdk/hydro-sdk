/**
 * @assertion Iterable<E> where(bool f(E element))
 * ...
 * This method returns a view of the mapped elements. As long as the returned
 * Iterable is not iterated over, the supplied function test will not be invoked
 * @description Checks that as long as the returned Iterable is not iterated
 * over, the supplied function test will not be invoked
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const f = (value: any) => {
        throw "Called";
    };

    create(List.from([] as any, {})).where(f);
    create(List.from([1] as any, {})).where(f);
    create(List.from([1, 3, 7, 4, 5, 6] as any, {})).where(f);
}