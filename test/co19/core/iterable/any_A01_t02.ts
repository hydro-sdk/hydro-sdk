/**
 * @assertion bool any(bool f(E element))
 * Checks whether any element of this iterable satisfies test.
 * Checks every element in iteration order, and returns true if any of them make
 * test return true, otherwise returns false.
 * @description Checks that if test always returns false, then it is called for
 * each element of this iteratable
 */

import { IIterable, List, Set } from "../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function any_A01_t02(
    create: (
        content: IIterable<any> | undefined,
        props: { isSet: boolean }
    ) => IIterable<any>,
    props: { isSet: boolean }
) {
    const s = create(List.from<number>([1, -3, 10, 17] as any, {}), {
        isSet: props.isSet,
    });

    const outer = new Set();
    s.any((x) => {
        outer.add(x);
        return false;
    });

    assert(outer.containsAll(s) == true);
}
