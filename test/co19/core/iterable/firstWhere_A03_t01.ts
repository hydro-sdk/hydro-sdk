/**
 * @assertion E firstWhere(bool test(E element), {E orElse()})
 * Returns the first element that satisfies the given predicate test.
 * Iterates through elements and returns the first to satsify test.
 * If no element satisfies test, the result of invoking the orElse function
 * is returned. If orElse is omitted, it defaults to throwing a StateError.
 * @description Checks that a StateError is thrown when orElse is null and
 * none matches.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function firstWhere_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (list: IIterable<any>) => {
        let threw = false;
        try {
            list.firstWhere((value) => false, {});
        } catch (err) {
            threw = true;
            assert((err as string) == "Bad state: No element");
        }
        assert(threw == true);
    };

    check(create(undefined));
    check(create(List.from([] as any, {})));
    check(create(List.from([1, 2, 3] as any, {})));
}