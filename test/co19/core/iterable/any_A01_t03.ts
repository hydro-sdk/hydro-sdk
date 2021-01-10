/**
 * @assertion bool any(bool f(E element))
 * Checks whether any element of this iterable satisfies test.
 * Checks every element in iteration order, and returns true if any of them make
 * test return true, otherwise returns false.
 * @description Checks that invoking any() doesn't change the set by itself
 */
import { IIterable } from "../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function any_A01_t03(
    create: (
        content: IIterable<any> | undefined,
        props: { isSet: boolean }
    ) => IIterable<any>,props: { isSet: boolean }
) {
    const foo = (x: any) => x > 0;

    const s = create(List.from<number>([-1, -3, -11] as any, {}), {
        isSet: props.isSet,
    });
    const content = List.from(s, {});
    assert(s.any(foo) == false);

    assert(content.getLength() == s.getLength());
    let k = 0;
    s.forEach((x) => assert(content.elementAt(k++) == x));
}
