/**
 * @assertion Iterable<E> skipWhile(bool test(E value))
 * Returns an Iterable that skips elements while test is satisfied.
 * @description Checks that all first elements that satisfy test are skipped,
 * and elements after then are iterated.
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function skipwhile_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a0: IIterable<any>, f: (element: any) => boolean) => {
        const it0 = a0.getIterator();
        const a = a0.skipWhile(f);
        const it = a.getIterator();
        let skipCount = 0;

        let hasNext0: boolean | undefined = undefined;
        while ((hasNext0 = it0.moveNext()) && f(it0.getCurrent())) {
            skipCount++;
        }

        let len = 0;
        for (;;) {
            let hasNext = it.moveNext();
            assert(hasNext0 == hasNext);
            if (!hasNext0) {
                break;
            }
            len++;
            assert(it0.getCurrent() == it.getCurrent());
            hasNext0 = it0.moveNext();
        }
        assert(a0.getLength() - skipCount == len);
    };

    const a0 = create(List.from([1, 3, 7, 4, 5, 6] as any, {}));
    check(a0, (element) => element == 1);
    check(a0, (element) => true);
    check(a0, (element) => false);
    check(a0, (element) => element > 4);
    check(a0, (element) => element < 4);
    check(a0, (element) => element == 4);
}
