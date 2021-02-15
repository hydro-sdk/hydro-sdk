/**
 * @assertion bool isNotEmpty
 * Returns true if there is at least one element in this collection.
 * May be computed by checking if iterator.moveNext() returns true.
 * @description Checks various collections, that the method returns false if
 * there are no elements, in the collection, true otherwise.
 */

import { IIterable,List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function isNotEmpty_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    assert(create(List.from([] as any, {})).getIsNotEmpty() == false);
    assert(create(List.from([null] as any, {})).getIsNotEmpty() == true);
    assert(
        create(List.from([0, 1, 2, 3, 4] as any, {})).getIsNotEmpty() == true
    );
    assert(create(List.from([0] as any, {})).getIsNotEmpty() == true);
}
