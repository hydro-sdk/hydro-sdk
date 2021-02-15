/**
 * @assertion E lastWhere(bool test(E value), {E orElse()})
 * Returns the last element that satisfies the given predicate f.
 * If none matches, the result of invoking the orElse function is returned.
 * By default, when orElse is null, a StateError is thrown.
 * @description Checks that the correct value is returned, if the element is
 * present in the list.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function lastWhere_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, element: any) => {
        assert(element == a.lastWhere((value: any) => value == element, {}));
    };

    const a = create(List.from([42, 0, -1, 42, -1, 6031769, 0] as any, {}));
    check(a, 42);
    check(a, 0);
    check(a, -1);
    check(a, 6031769);
}
