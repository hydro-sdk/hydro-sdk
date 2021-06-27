/**
 * @assertion Iterable<E> where(bool f(E element))
 * ...
 * Iterating will not cache results, and thus iterating multiple times over the
 * returned Iterable will invoke the supplied function test multiple times on
 * the same element.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function where_A04_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a0: IIterable<any>, test0: (element: any) => boolean) => {
        let copy = List.empty({ growable: true });
        const tst = (el: any): boolean => {
            copy.add(el);
            return test0(el);
        };

        const itbl = a0.where(tst);
        for (let k = 0; k < 5; k++) {
            assert(0 == copy.getLength());
            const it = itbl.getIterator();
            while (it.moveNext()) {}
            assert(a0.getLength() == copy.getLength());
            for (let i = 0; i != a0.getLength(); i++) {
                assert(a0.elementAt(i) == copy.elementAt(i));
            }
            copy = List.from([] as any, {});
        }
    };
    const a0 = create(List.from([1, 3, 7, 4, 5, 6] as any, {}));
    check(a0, (element) => element == 1);
    check(a0, (element) => true);
    check(a0, (element) => false);
    check(a0, (element) => element > 4);
    check(a0, (element) => element < 4);
    check(a0, (element) => element == 4);
}
