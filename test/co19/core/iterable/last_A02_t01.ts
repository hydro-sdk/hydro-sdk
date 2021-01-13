/**
 * @assertion E last
 * Returns the last element.
 * Throws a StateError if this is empty. Otherwise may iterate through the
 * elements and returns the last one seen. Some iterables may have more
 * efficient ways to find the last element (for example a list can directly
 * access the last element, without iterating through the previous ones).
 * @description Checks that StateError is thrown if this Iteratable is empty.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function last_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>,
) {
    const check = (a: IIterable<any>) => {
        let threw = false;
        try {
            a.getLast();
        } catch (err) {
            assert((err as string) == "Bad state: No element");
            threw = true;
        }
        assert(threw == true);
    };

    check(create(undefined));
    check(create(List.from([] as any, {})));
}