/**
 * @assertion E single
 * Returns the single element in this.
 * If this is empty or has more than one element throws a StateError.
 * @description Checks that the single element is returned.
 * Checks that StateError is thrown if this list is empty or has more than one
 * element
 */

import { IIterable, IList, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function single_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (content: IList<any>) => {
        const a = create(content);
        if (a.getLength() == 1) {
            assert(a.elementAt(0) == a.getSingle());
        } else {
            let threw = false;
            try {
                a.getSingle();
            } catch (err) {
                threw = true;
            }
            assert(threw == true);
        }
    };

    check(List.from([] as any, {}));
    let a = List.empty({ growable: true });
    check(a);
    a.add(0);
    check(a);
    a.setLength(25476);
    check(a);
    a.clear();
    a.setLength(1);
    check(a);
    a = List.from([] as any, {});
    check(a);
    a = List.from([1] as any, {});
    check(a);
}
