/**
 * @assertion E lastWhere(bool test(E element), {E orElse()})
 * Returns the last element that satisfies the given predicate test
 * @description Checks that the last element that satisfies the given predicate
 * test is returned
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

class C {
    public val: number;
    public constructor(val: number) {
        this.val = val;
    }
}

export function lastWhere_A04_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>,
    props: { isSet: boolean }
) {
    const c1 = new C(42);
    const c2 = new C(42);

    const a: IIterable<C> = create(List.from([c1, c2] as any, {}));
    const found = a.lastWhere((value) => value.val == 42, {
        orElse: () => undefined,
    });

    if (!props.isSet) {
        if (found == undefined) {
            assert(c2 == found);
            expect(c1 != found);
        }
    } else {
        assert(found != undefined);
    }
}
