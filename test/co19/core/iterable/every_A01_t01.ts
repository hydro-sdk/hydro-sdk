/**
 * @assertion bool every(bool f(E element))
 * Checks whether every element of this iterable satisfies test.
 * Checks every element in iteration order, and returns false if any of them
 * make test return false, otherwise returns true.
 * @description Check that true is returned only if every element of the list
 * satisfies the predicate [f].
 */

import { IIterable ,List} from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function every_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    let a = create(List.from([0, 1, 2, 3, 4, 5, 6, 7, 8, 9] as any, {}));
    assert(a.every((e) => e >= 0 && e < 10) == true);
    assert(a.every((e) => e < 0) == false);

    a = create(List.from([1, 2, 3] as any, {}));

    const f = (e: any) => e > 0;
    assert(a.every(f) == true);

    a = create(List.from([-1, -2, -3, 1, 2, 3] as any, {}));
    assert(a.every(f) == false);
}
