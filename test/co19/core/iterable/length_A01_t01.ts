/**
 * @assertion int length
 * Returns the number of elements in this.
 * @description Checks that the getter returns correct value.
 */

import { IIterable, Iterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function length_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>,
    props: { isSet: boolean }
) {
    const check = (
        it: IIterable<any>,
        expectedSet: number,
        expectedList: number
    ) => {
        assert((props.isSet ? expectedSet : expectedList) == it.getLength());
    };

    check(create(List.from([] as any, {})), 0, 0);
    check(create(undefined), 0, 0);
    check(create(List.from([undefined] as any, {})), 1, 1);
    check(create(List.from([undefined, undefined] as any, {})), 0, 2);
    check(create(List.from([0, 1, 2, 3] as any, {})), 4, 4);

    const b = List.from([List.from([] as any, {})] as any, {});
    check(b, 1, 1);

    const many = 10000;
    check(create(Iterable.generate(many, (index) => index)), many, many);
}
