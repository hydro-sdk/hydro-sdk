/**
 * @assertion Iterable<E> skipWhile(bool test(E value))
 * The returned iterable provides elements by iterating this iterable, but
 * skipping over all initial elements where test(element) returns true. ... it
 * iterates the remaining elements in their original order, starting with the
 * first element for which test(element) returns false.
 * @description Checks that once an element does not satisfy the test,
 * the iterator stops testing and uses every element unconditionally.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function skipwhile_A04_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a0: IIterable<any>, test0: (element: any) => boolean) => {
        let testPassed: boolean | undefined = undefined;
        const tst = (element: any): boolean => {
            assert(testPassed == undefined || testPassed);
            return (testPassed = !test0(element));
        };

        a0.skipWhile(tst).forEach(() => {
            assert(testPassed == undefined || testPassed == false);
        });
    };

    const a0 = create(List.from([1, 3, 7, 4, 5, 6] as any, {}));
    check(a0, (element) => element == 1);
    check(a0, (element) => true);
    check(a0, (element) => false);
    check(a0, (element) => element > 4);
    check(a0, (element) => element < 4);
    check(a0, (element) => element == 4);
}
