/**
 * @assertion E elementAt(int index)
 * Returns the indexth element.
 * The index must be non-negative and less than length. Index zero represents
 * the first element (so iterable.elementAt(0) is equivalent to iterable.first).
 * May iterate through the elements in iteration order, skipping the first index
 * elements and returning the next. Some iterable may have more efficient ways
 * to find the element.
 * @description Checks that a RangeError is thrown if this list  has fewer than
 * index elements.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

let v: any;
function check(a: IIterable<any>, index: number) {
    let didThrow = false;

    try {
        v = a.elementAt(index);
    } catch (err) {
        didThrow = true;
        assert(
            (err as string).substr(0, 38) ==
                "RangeError (index): Index out of range"
        );
    }
    assert(didThrow == true);
}

export function elementAt_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const a = List.from([5, 4, 3, 2, 1, 0] as any, {});

    check(create(a), -1);
    check(create(a), a.getLength());
    check(create(a), a.getLength() + 1);
    check(create(a), a.getLength() * 2);
    check(create(a), 1000000000);
}
