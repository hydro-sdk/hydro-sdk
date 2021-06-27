/**
 * @assertion void forEach(void f(E element))
 * Applies the function f to each element of this collection in iteration order.
 * @description Checks that the function [f] is called for each element of the
 * list.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function forEach_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const a = create(List.from([1, 2, 3, 4, 5, 6, 7] as any, {}));
    const log = List.empty({ growable: true });

    const f = (e: any) => {
        log.add(e);
    };
    a.forEach(f);

    assert(a.getLength() == log.getLength());

    for (let i = 0; i < a.getLength(); i++) {
        assert(a.elementAt(i) == log.elementAt(i));
    }
}
