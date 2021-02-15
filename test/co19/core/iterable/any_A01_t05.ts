/**
 * @assertion bool any(bool f(E element))
 * Checks whether any element of this iterable satisfies test.
 * Checks every element in iteration order, and returns true if any of them make
 * test return true, otherwise returns false.
 * @description Checks that method is called for each element until the first
 * true result
 */

import { IIterable, List } from "../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

function check(a: IIterable<any>, tst: (e: any) => boolean, count: number) {
    let actualCount = 0;
    a.any((e) => {
        actualCount++;
        return tst(e);
    });
    assert(count == actualCount);
}

export function any_A01_t05(
    create: (
        content: IIterable<any> | undefined,
        props: { isSet: boolean }
    ) => IIterable<any>,
    props: { isSet: boolean }
) {
    const s = create(List.from<number>([1, 2, 3, 4, 5] as any, {}), {
        isSet: props.isSet,
    });

    const allTrue = (e: any) => true;
    check(s, allTrue, 1);

    const allFalse = (e: any) => false;
    check(s, allFalse, 5);

    const greaterThan3 = (e: any) => e > 3;
    check(s, greaterThan3, 4);
}
