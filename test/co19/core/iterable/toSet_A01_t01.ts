/**
 * @assertion Set<E> toSet()
 * Creates a Set containing the elements of this Iterable.
 * @description Checks that proper Set is created.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
import { ISet, Set } from "../../../../runtime/dart/core/set";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function toSet_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const checkEquals = (expected: IIterable<any>, actual: ISet<any>) => {
        const set0 = new Set<any>();
        expected.forEach((el) => set0.add(el));

        assert(set0.containsAll(actual) == true);
        assert(actual.containsAll(set0) == true);
    };

    let l = create(undefined);
    let a = l.toSet();
    assert(0 == a.getLength());
    assert(0 == l.getLength());

    l = create(List.from([1, 2, 3, 4, 5, 1] as any, {}));
    a = l.toSet();
    checkEquals(l, a);

    let src = create(
        List.from(
            [
                undefined,
                List.from([undefined] as any, {}),
                List.from([] as any, {}),
                List.from([1, 2, 3] as any, {}),
                List.from([List.from([undefined] as any, {})] as any, {}),
            ] as any,
            {}
        )
    );
    a = src.toSet();
    checkEquals(src, a);

    let lst = List.filled(34, 0, {});
    lst.setAll(32, List.from([-111111111] as any, {}));
    src = create(lst);
    a = src.toSet();
    checkEquals(src, a);
}
