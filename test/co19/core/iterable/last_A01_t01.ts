/**
 * @assertion E last
 * Returns the last element.
 * Throws a StateError if this is empty. Otherwise may iterate through the
 * elements and returns the last one seen. Some iterables may have more
 * efficient ways to find the last element (for example a list can directly
 * access the last element, without iterating through the previous ones).
 * @description Checks that the last element of the list is returned.
 */

import { IIterable, IList, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function last_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>,
    props: { isSet: boolean }
) {
    const check = (source: IIterable<any>) => {
        if (props.isSet) {
            assert(source.contains(create(source).getLast()));
        } else {
            assert(source.getLast() == create(source).getLast());
        }
    };

    let a: IList<any> = List.empty({ growable: true });
    a.add(0);
    check(a);

    a.add(1);
    check(a);

    a.add(1);
    check(a);

    let b: IList<any> = List.filled(1000, undefined, {});
    b.setAll(999, List.from([999] as any, {}));
    a.addAll(b);
    check(b);

    a.setLength(2001);
    a.setAll(2000, List.from([2001] as any, {}));
    check(a);

    a = List.filled(10, undefined, {});
    a.setAll(9, List.from([9] as any, {}));
    check(a);

    a = List.from([undefined, 0, 0, false, -1] as any, {});
    check(a);

    a = List.from([undefined, 0, 0, false, 100] as any, {});
    check(a);
}
