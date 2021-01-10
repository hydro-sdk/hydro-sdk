/**
 * @assertion bool contains(Object element)
 * Returns true if the collection contains an element equal to element.
 * This operation will check each element in order for being equal to element,
 * unless it has a more efficient way to find an element equal to element.
 * The equality used to determine whether element is equal to an element of the
 * iterable defaults to the Object.operator== of the element.
 * Some types of iterable may have a different equality used for its elements.
 * For example, a Set may have a custom equality (see Set.identical) that its
 * contains uses. Likewise the Iterable returned by a Map.keys call should use
 * the same equality that the Map uses for keys.
 * @description Checks that true is returned if the collection contains
 * an element equal to element, false otherwise.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "./../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function contains_A01_t01(
    create: (
        content: IIterable<any> | undefined,
        props: { isSet: boolean }
    ) => IIterable<any>
) {
    let a = create(List.from<number>([] as any, {}), {
        isSet: false,
    });
    assert(a.contains(1) == false);

    a = create(List.from<number>([2] as any, {}), {
        isSet: false,
    });
    assert(a.contains(1) == false);
    assert(a.contains(2) == true);

    a = create(List.from<number>([1, 2] as any, {}), {
        isSet: false,
    });
    assert(a.contains(1) == true);
    assert(a.contains(2) == true);
}