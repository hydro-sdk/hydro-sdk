/**
 * @assertion Iterable<E> takeWhile(bool test(E value))
 * The elements can be computed by stepping through iterator until an element is
 * found where test(element) is false. At that point, the returned iterable
 * stops (its moveNext() returns false).
 * @description Checks that once an element does not satisfy the test found,
 * the iterator stops testing.
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function takeWhile_A04_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, tst: (element: any) => boolean) => {
        let last = 0;
        a.takeWhile(tst).forEach((element) => {
            assert(a.elementAt(last) == element);
            assert(tst(element) == true);
            last++;
        });

        if (last < a.getLength()) {
            assert(tst(a.elementAt(last)) == false);
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
