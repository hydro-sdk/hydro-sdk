/**
 * @assertion E firstWhere(bool test(E element), {E orElse()})
 * Returns the first element that satisfies the given predicate test.
 * Iterates through elements and returns the first to satsify test.
 * If no element satisfies test, the result of invoking the orElse function
 * is returned. If orElse is omitted, it defaults to throwing a StateError.
 * @description Checks that the first element that satisfies the given predicate
 * test is returned
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

class C {
    public val: number;
    public constructor(val: number) {
        this.val = val;
    }
}

export function firstWhere_A04_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>,
    props: { isSet: boolean }
) {
    const c1 = new C(42);
    const c2 = new C(42);

    const a: IIterable<C> = create(List.from([c1, c2] as any, {}));
    let found = a.firstWhere((value) => value.val == 42, { orElse: () => undefined });

    if (props.isSet) {
        assert(found != undefined);
    } else {
        if (found != undefined) {
            assert(c1 == found);
            assert(c2 != found);
        }
    }
}