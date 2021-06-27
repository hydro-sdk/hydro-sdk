/**
 * @assertion Iterable map(dynamic f(E e))
 * ...
 * As long as the returned Iterable is not iterated over, the supplied function
 * f will not be invoked.
 * @description Checks that the supplied function f will not be invoked if
 * the returned Iterable is not iterated over.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function map_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    let invoked = false;

    const f = (element: any) => {
        invoked = true;
        return element;
    };

    let a = create(undefined);
    a = create(List.from([22] as any, {}));
    a.map(f);
    a = create(List.from([22, 11] as any, {}));
    a.map(f);
    a = create(List.from([22, 11, 11] as any, {}));
    a.map(f);
    let l = List.empty({ growable: true });
    for (let k = 1; k < 200; k++) {
        l.add(k);
    }
    a.map(f);
    assert(invoked == false);
}
