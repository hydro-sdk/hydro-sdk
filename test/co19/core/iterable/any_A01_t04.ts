/**
 * @assertion bool any(bool f(E element))
 * Checks whether any element of this iterable satisfies test.
 * Checks every element in iteration order, and returns true if any of them make
 * test return true, otherwise returns false.
 * @description Checks that this method works as specified.
 */
import { IIterable } from "../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function any_A01_t04(
    create: (
        content: IIterable<any> | undefined,
        props: { isSet: boolean }
    ) => IIterable<any>,
    props: { isSet: boolean }
) {
    assert(
        create(List.from<number>([0, 1, 2, 3] as any, {}), {
            isSet: props.isSet,
        }).any((e) => e > 1 && e < 3) == true
    );

    assert(
        create(List.from<number>([1, 2, 3] as any, {}), {
            isSet: props.isSet,
        }).any((e) => e < 0) == false
    );

    assert(
        create(List.from<number>([undefined] as any, {}), {
            isSet: props.isSet,
        }).any((e) => true) == true
    );

    assert(
        create(List.from<number>([undefined] as any, {}), {
            isSet: props.isSet,
        }).any((e) => false) == false
    );

    const f1 = (e: any) => e > 1;

    assert(
        create(List.from<number>([1, 2, 3, 4] as any, {}), {
            isSet: props.isSet,
        }).any(f1) == true
    );
}
