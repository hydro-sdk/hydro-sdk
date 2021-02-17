/**
 * @assertion List<E> toList({bool growable: true})
 * Creates a List containing the elements of this Iterable.
 * The elements will be in iteration order. The list is fixed-length if growable
 * is false.
 * @description Checks that proper list with correct element order is created.
 */

import { IIterable, IList, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function toList_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const checkEquals = (expected: IIterable<any>, actual: IList<any>) => {
        assert(expected.getLength() == actual.getLength());
        const it = expected.getIterator();
        let i = 0;
        while (it.moveNext()) {
            const o = it.getCurrent();
            assert(actual.elementAt(i) == o);
            i++;
        }
    };

    let l = create(undefined);
    let a = l.toList({ growable: true });
    assert(0 == a.getLength());
    assert(0 == l.getLength());

    l = create(List.from([1, 2, 3, 4, 5] as any, {}));
    a = l.toList({ growable: true });
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
    a = src.toList({ growable: true });
    checkEquals(src, a);

    let lst = List.filled(34567, 0, {});
    lst.setAll(34566, List.from([-111111111] as any, {}));
    src = create(lst);
    a = src.toList({ growable: true });
    checkEquals(src, a);
}
