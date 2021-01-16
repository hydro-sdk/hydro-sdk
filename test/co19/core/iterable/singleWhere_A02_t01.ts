/**
 * @assertion E singleWhere(bool test(E element))
 * If no or more than one element match then a StateError is thrown.
 * @description Checks that a StateError is thrown if no element match.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function singleWhere_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, f: (value: any) => boolean) => {
        let threw = false;
        try {
            a.singleWhere(f, {});
        } catch (err) {
            threw = true;
        }
        assert(threw == true);
    };

    check(create(List.from([1, 2, -3, 4] as any, {})), (value) => value == 0);
    check(create(List.from([1, 2, -5, -6] as any, {})), (value) => value > 2);
}
