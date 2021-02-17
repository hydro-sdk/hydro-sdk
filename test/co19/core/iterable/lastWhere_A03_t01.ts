/**
 * @assertion E lastWhere(bool test(E value), {E orElse()})
 * By default, when orElse is null, a StateError is thrown.
 * @description Checks that If none matches and orElse is null,
 * a StateError is thrown.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function lastWhere_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, element: any) => {
        let threw = false;
        try {
            a.lastWhere((value) => value == element, {});
        } catch (err) {
            assert((err as string) == "Bad state: No element");
            threw = true;
        }
        assert(threw == true);
    };

    const a = create(List.from([42, 0, -1, 42, -1, 6031769, 0] as any, {}));
    check(a, 43);
    check(a, 2);
    check(a, -2);
    check(a, 6031768);
}
