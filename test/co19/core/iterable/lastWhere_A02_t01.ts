/**
 * @assertion E lastWhere(bool test(E value), {E orElse()})
 * If none matches, the result of invoking the orElse function is returned.
 * @description Checks that If none matches, the result of invoking the orElse
 * function is returned.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

const noneMatches = {};

export function lastWhere_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, element: any) => {
        assert(noneMatches == a.lastWhere((value: any) => value == element, {
            orElse: () => noneMatches
        }));
    };

    const a = create(List.from([42, 0, -1, 42, -1, 6031769, 0] as any, {}));
    check(a, 43);
    check(a, 2);
    check(a, -2);
    check(a, 6031768);
}