/**
 * @assertion Iterable<E> takeWhile(bool test(E value))
 * Returns a lazy iterable of the leading elements satisfying test
 * @description Checks that all first elements that satisfy test are retained,
 * and elements after that, are skipped.
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function takeWhile_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a0: IIterable<any>, tst: (element: any) => boolean) => {
        const it0 = a0.getIterator();
        const a = a0.takeWhile(tst);
        const it = a.getIterator();

        let hasNext0 = it0.moveNext();
        let len = 0;
        for (;;) {
            let hasNext = it.moveNext();
            if (!hasNext) {
                break;
            }

            assert(tst(it0.getCurrent()) == true);
            assert(it0.getCurrent() == it.getCurrent());
            len++;
            hasNext0 = it0.moveNext();
        }
        assert(a.getLength() == len);

        let skipcount = 0;
        while (hasNext0) {
            skipcount++;
            hasNext0 = it0.moveNext();
        }
        assert(a0.getLength() == len + skipcount);
    };
    const a0 = create(List.from([1, 3, 7, 4, 5, 6] as any, {}));
    check(a0, (element) => element == 1);
    check(a0, (element) => true);
    check(a0, (element) => false);
    check(a0, (element) => element > 4);
    check(a0, (element) => element < 4);
    check(a0, (element) => element == 4);
}
