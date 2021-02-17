/**
 * @assertion void forEach(void f(E element))
 * Applies the function f to each element of this collection in iteration order.
 * @description Checks that no exception is thrown if the list is empty.
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function forEach_A01_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    create(List.from([] as any, {})).forEach((v: any) => {});
}
