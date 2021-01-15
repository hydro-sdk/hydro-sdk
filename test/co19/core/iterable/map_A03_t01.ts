/**
 * @assertion Iterable map(dynamic f(E e))
 * The transformed elements will not be cached. Iterating multiple times over
 * the returned Iterable will invoke the supplied function f multiple times on
 * the same element.
 * @description Checks that iterating multiple times over the the returned
 * Iterable will invoke the supplied function f multiple times on the same
 * element.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function map_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const visited = List.filled<number>(200, 0, {});

    const f = (element: number) => {
        let index: number;

        index = Math.floor(element);

        visited.setAll(index, List.from([visited.elementAt(index) + 1] as any, {}));
        return element;
    };

    const checkResult = (a: IIterable<any>, expected: number) => {
        let count = 0;
        const mapIter = a.map(f);
        mapIter.forEach(() => {
            count++;
        });
        assert(a.getLength() == count);

        for (let k = 0; k < 200; k++) {
            assert(expected == visited.elementAt(k));
        }
    };

    let l = List.empty({ growable: true });
    for (let k = 0; k < 200; k++) {
        l.add(k);
        visited.setAll(k, List.from([0] as any, {}));
    }
    const a = create(l);
    checkResult(a, 1);
    checkResult(a, 2);
    checkResult(a, 3);
}