/**
 * @assertion abstract void forEach(void f(E element))
 * Any error in the function [f] breaks the cycle.
 * @description Checks that predicate exception goes through to the caller
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { IList, List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function forEach_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IList<any>, predicate: (e: any) => any, exc: any) => {
        let threw = false;
        let actualCount = 0;
        try {
            a.forEach((e: any) => {
                actualCount++;
                return predicate(e);
            });
        } catch (err) {
            threw = true;
            assert(exc.toString() == err);
        }
        assert(threw == true);
    };

    const allTrue = (e: any) => {
        throw true;
    };
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), allTrue, true);

    const allFalse = (e: any) => {
        throw false;
    };
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), allFalse, false);

    const lessThan3 = (e: any) => {
        throw 3;
    };
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), lessThan3, 3);
}
