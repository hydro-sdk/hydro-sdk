/**
 * @assertion abstract void forEach(void f(E element))
 * Throws an exception or error if the argument 
 * is null or is not a function and doesn't have a call() method with an
 * appropriate signature.
 * @needsreview undocumented
 * @description Checks that something is thrown if the list isn't empty and the
 * argument is null or the argument is not-null, but incompatible with the
 * required function type.
 */

import { IIterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

export function forEach_A02_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {

    const check = (list: any, arg: any) => {
        let threw = false;
        try {
            list.forEach(arg);
        } catch (err) {
            threw = true;
        }

        assert(threw == true);
    };

    check(create(List.from([1] as any, {})), 1);
    check(create(List.from([1] as any, {})), null);
    check(create(List.from([1] as any, {})), "");
    check(create(List.from([1] as any, {})), 3.14);
}