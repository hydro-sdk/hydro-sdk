/**
 * @assertion bool isEmpty
 * Returns true if there are no elements in this collection.
 * May be computed by checking if iterator.moveNext() returns false.
 * @description Checks various containers, that the method returns true if there
 * are no elements, in the containers, false otherwise.
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function isEmpty_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    assert(create(List.from([] as any, {})).getIsEmpty() == true);
    assert(create(List.from([null] as any, {})).getIsEmpty() == false);
    assert(create(List.from([0, 1, 2, 3, 4] as any, {})).getIsEmpty() == false);
    assert(create(List.from([0] as any, {})).getIsEmpty() == false);
}
