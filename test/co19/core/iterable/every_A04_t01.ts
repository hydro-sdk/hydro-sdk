/**
 * @assertion bool every(bool f(E element))
 * Checks whether every element of this iterable satisfies test.
 * Checks every element in iteration order, and returns false if any of them
 * make test return false, otherwise returns true.
 * @description Checks that predicate exception goes through to the caller
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { IList, List } from "./../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function every_A04_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (
        a0: IList<any>,
        predicate: (e: any) => boolean,
        exc: any
    ) => {
        const a = create(a0);
        let actualCount = 0;

        let threw = false;
        try {
            a.every((e) => {
                actualCount++;
                return predicate(e);
            });
        } catch (err) {
            threw = true;
            assert(err == exc.toString());
        }
        assert(threw == true);
    };

    const allTrue = (e: any) => {
        throw 1;
    };
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), allTrue, 1);

    const allFalse = (e: any) => {
        throw false;
    };
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), allFalse, false);

    const lessThan3 = (e: any) => {
        throw 3;
    };
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), lessThan3, 3);

    const l: IList<number> = List.empty({ growable: true });
    l.addAll(List.from<number>([1, 2, 3, 4, 5] as any, {}));
    check(l, lessThan3, 3);
}
