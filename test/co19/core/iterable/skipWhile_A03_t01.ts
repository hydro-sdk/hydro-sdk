/**
 * @assertion Iterable<E> skipWhile(bool test(E value))
 * Every new Iterator of the returned Iterable iterates over all elements of
 * this.
 * @description Checks that for every new iterator, all elements either are
 * tested and satisfy the test, or are returned by the iterator .
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function skipwhile_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a0: IIterable<any>, test0: (element: any) => boolean) => {
        let all = List.empty({ growable: true });
        const tst = (element: any): boolean => {
            let res = test0(element);
            if (res) {
                all.add(element);
            }
            return res;
        }

        const itbl = a0.skipWhile(tst);
        for (let k = 0; k < 5; k++) {
            all = List.from([] as any, {});
            const it = itbl.getIterator();
            while (it.moveNext()) {
                all.add(it.getCurrent());
            }

            assert(a0.getLength() == all.getLength());
            for (let i = 0; i != a0.getLength(); ++i) {
                assert(a0.elementAt(i) == all.elementAt(i));
            }
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