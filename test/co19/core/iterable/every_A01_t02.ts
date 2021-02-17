/**
 * @assertion bool every(bool f(E element))
 * Checks whether every element of this iterable satisfies test.
 * Checks every element in iteration order, and returns false if any of them
 * make test return false, otherwise returns true.
 * @description Checks that the predicate method is called for each element
 * until the first false result.
 */

import { IIterable, IList, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function every_A01_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (
        a0: IList<any>,
        predicate: (e: any) => boolean,
        count: number
    ) => {
        const a = create(a0);
        let actualCount = 0;

        a.every((e: any) => {
            actualCount++;
            return predicate(e);
        });

        assert(count == actualCount);
    };

    const allTrue = (e: any) => true;
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), allTrue, 5);

    const allFalse = (e: any) => false;
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), allFalse, 1);

    const lessThan3 = (e: any) => e < 3;
    check(List.from<number>([1, 2, 3, 4, 5] as any, {}), lessThan3, 3);

    const l: IList<number> = List.empty({ growable: true });
    l.addAll(List.from<number>([1, 2, 3, 4, 5] as any, {}));
    check(l, lessThan3, 3);
}
