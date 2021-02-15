/**
 * @assertion E first
 * Returns the first element.
 * Throws a StateError if this is empty. Otherwise returs the first element
 * in the iteration order, equivalent to (iterator..moveNext())..current.
 * @description Checks that the first element of the list is returned.
 */

import { IIterable ,List} from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function first_A01_t02(
    create: (
        content: IIterable<any> | undefined,
        props: { isSet: boolean }
    ) => IIterable<any>,
    props: { isSet: boolean }
) {
    const head = -1;
    let a = create(undefined, { isSet: props.isSet });
    assert(0 == a.getLength());
    a = create(List.from([head] as any, {}), { isSet: props.isSet });
    assert(head == a.getFirst());

    if (!props.isSet) {
        a = create(List.from([head, 1] as any, {}), { isSet: props.isSet });
        assert(head == a.getFirst());

        let b = List.filled(1000, undefined, {});
        b.setAll(0, List.from([head] as any, {}));
        b.setAll(999, List.from(["top"] as any, {}));
        a = create(b, { isSet: props.isSet });
        assert(head == a.getFirst());

        a = create(List.from([-2, 0, "0", false, -1] as any, {}), {
            isSet: props.isSet,
        });
        assert(-2 == a.getFirst());

        a = create(List.from([0, undefined, "0", false] as any, {}), {
            isSet: props.isSet,
        });
        assert(0 == a.getFirst());
    } else {
        a = create(List.from([head, 1] as any, {}), { isSet: props.isSet });
        assert(undefined != a.getFirst());

        a = create(List.from([-2, 0, 0, false, -1] as any, {}), {
            isSet: props.isSet,
        });
        assert(undefined != a.getFirst());

        a = create(List.from([0, 0.5, 0, false] as any, {}), {
            isSet: props.isSet,
        });
        assert(undefined != a.getFirst());
    }
}
