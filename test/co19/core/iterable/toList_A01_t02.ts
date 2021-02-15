/**
 * @assertion List<E> toList({bool growable: true})
 * Creates a List containing the elements of this Iterable.
 * The elements will be in iteration order. The list is fixed-length if growable
 * is false.
 * @description Checks that the list created with growable==true can change
 * it's size.
 */

import { IIterable,List,IList } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function toList_A01_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (l: IList<any>) => {
        let len = l.getLength();
        l.add(0);
        assert(len + 1 == l.getLength());

        l.clear();
        assert(0 == l.getLength());
    };

    const l = create(List.from([1, 2, 3, 4, 5] as any, {}));
    let a = l.toList({ growable: true });
    check(a);
    a = l.toList({ growable: true });
    check(a);
}
