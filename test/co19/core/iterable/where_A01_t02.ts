/**
 * @assertion Iterable<E> where(bool f(E element))
 * Returns a lazy Iterable with all elements that satisfy the predicate f.
 * @description Checks that the predicate method is called for all elements of
 * the list as long as the resulting iterable is iterated over to the end.
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A01_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, f: (e: any) => boolean) => {
        const copy = List.empty({ growable: true });
        const tst = (e: any): boolean => {
            copy.add(e);
            return f(e);
        };

        const ret = a.where(tst);
        const it = ret.getIterator();
        while (it.moveNext()) {}

        let count = 0;
        const ait = a.getIterator();
        while (ait.moveNext()) {
            assert(ait.getCurrent() == copy.elementAt(count++));
        }
    };

    check(
        create(List.from([1, 2, 3, 4, 5, 4, 3, 2, 1] as any, {})),
        (e) => e > 1
    );
    check(
        create(List.from([1, 2, 3, 4, 5, 4, 3, 2, 1] as any, {})),
        (e) => e > 2
    );
    check(
        create(List.from([1, 2, 3, 4, 5, 4, 3, 2, 1] as any, {})),
        (e) => e < 0
    );
}
