/**
 * @assertion
 * T fold <T>(T initialValue, T combine(T previousValue, E element))
 * Reduces a collection to a single value by iteratively combining each element
 * of the collection with an existing value
 * Uses initialValue as the initial value, then iterates through the elements
 * and updates the value with each element using the combine function, as if by:
 *
 *  var value = initialValue;
 *  for (E element in this) {
 *      value = combine(value, element);
 *  }
 *  return value;
 *  Example of calculating the sum of an iterable:
 *  iterable.fold(0, (prev, element) => prev + element);
 * @description Checks that fold is called for each element of this Iterable
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function fold_A01_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const combine = (previousValue: number, element: any) => ++previousValue;

    const check = (a: IIterable<any>) => {
        const actual = a.fold(0, combine);
        assert(a.getLength() == actual);
    };

    check(create(List.from([] as any, {})));
    check(create(List.from([1] as any, {})));
    check(create(List.from([0, 0, 0] as any, {})));
    check(create(List.from([1, 2, 3, 4, 5, 6, 7, 8] as any, {})));
}
