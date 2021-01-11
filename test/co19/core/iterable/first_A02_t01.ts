/**
 * @assertion E first
 * Returns the first element.
 * Throws a StateError if this is empty. Otherwise returs the first element
 * in the iteration order, equivalent to (iterator..moveNext())..current.
 * @description Checks that a StateError is thrown when this is empty.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function first_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    let threw = false;
    try {
        create(undefined).getFirst();
    }catch(err){
        assert((err as string) == "Bad state: No element");
        threw = true;
    }

    assert(threw == true);
}