/**
 * @assertion Iterable<E> skipWhile(bool test(E value))
 * If all elements satisfy test the resulting iterable is empty
 * @description Checks that if all elements satisfy test the resulting iterable
 * is empty
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function skipwhile_A05_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a0: IIterable<any>, test0: (element: any) => boolean) => {
        let a = a0.skipWhile(test0);
        assert(a.getIsEmpty() == true);
    };

    const a0 = create(List.from([1, 3, 7, 4, 5, 6] as any, {}));
    check(a0, (element) => true);
}
