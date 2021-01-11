/**
 * @assertion E first
 * Returns the first element.
 * Throws a StateError if this is empty. Otherwise returs the first element
 * in the iteration order, equivalent to (iterator..moveNext())..current.
 * @description Checks that the method returns the first element.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "./../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function first_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (create: (content: IIterable<any> | undefined) => IIterable<any>, source: IIterable<any>) => {
        assert(source.getFirst() == create(source).getFirst());
    };

    check(create, List.from([0] as any, {}));
    check(create, List.from([1] as any, {}));
    check(create, List.from([1, 2, 3] as any, {}));
}