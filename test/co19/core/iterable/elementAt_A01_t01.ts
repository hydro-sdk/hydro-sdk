/**
 * @assertion E elementAt(int index)
 * Returns the indexth element.
 * The index must be non-negative and less than length. Index zero represents
 * the first element (so iterable.elementAt(0) is equivalent to iterable.first).
 * May iterate through the elements in iteration order, skipping the first index
 * elements and returning the next. Some iterable may have more efficient ways
 * to find the element.
 * @description Checks that the indexth element is returned.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { IList, List } from "./../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function elementAt_A01_t01(
    create: (
        content: IIterable<any> | undefined,
        props: { isSet: boolean }
    ) => IIterable<any>,
    props: { isSet: boolean }
) {
    const b: IList<number> = List.from([5, 4, 3, 2, 1, 0, 6] as any, {});
    const a = create(b, { isSet: props.isSet });

    if (props.isSet) {
        for (let i = 0; i < a.getLength(); i++) {
            for (let j = 0; j < a.getLength(); j++) {
                if (i != j) {
                    assert(a.elementAt(i) != a.elementAt(j));
                }
            }
        }
    } else {
        for (let i = 0; i < a.getLength(); i++) {
            assert(b.elementAt(i) == a.elementAt(i));
        }
    }
}
