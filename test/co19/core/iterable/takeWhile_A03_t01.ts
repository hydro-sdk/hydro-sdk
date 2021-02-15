/**
 * @assertion Iterable<E> takeWhile(bool test(E value))
 * Every new Iterator of the returned Iterable  will start iterating over the
 * elements of this.
 * @description Checks that every new iterator starts iterating over the
 * elements of this.
 */

import { IIterable ,List} from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function takeWhile_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a0: IIterable<any>, test0: (element: any) => boolean) => {
        let el: any;
        const tst = (element: any): boolean => {
            let res = test0(element);
            if (res) {
                el = element;
            }
            return res;
        };

        const itbl = a0.takeWhile(tst);
        for (let k = 0; k < 5; k++) {
            const it = itbl.getIterator();
            let i = 0;
            while (it.moveNext()) {
                assert(a0.elementAt(i) == el);
                assert(el == it.getCurrent());
                i++;
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
