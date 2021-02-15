/**
 * @assertion Iterable map(dynamic f(E e))
 * Returns a new lazy Iterable with elements that are created by calling f on e
 * ach element of this Iterable in iteration order.
 * @description Checks that the resulting Iterable contains all the results of
 * calling f(e) and f was really applied
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function map_A01_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const f = (element: any) => -2 * element;

    const checkResult = (a: IIterable<any>) => {
        let count = 0;
        const mapIter = a.map(f);
        mapIter.forEach((x) => {
            assert(f(a.elementAt(count++)) == x);
            assert(x < 0 == true);
        });
        assert(a.getLength() == count);
    };

    let a = create(undefined);
    checkResult(a);
    a = create(List.from([22] as any, {}));
    checkResult(a);
    a = create(List.from([22, 11] as any, {}));
    checkResult(a);
    a = create(List.from([22, 11, 11] as any, {}));
    checkResult(a);
    let l = List.empty({ growable: true });
    for (let k = 1; k < 200; k++) {
        l.add(k);
    }
    checkResult(create(l));
}
