/**
 * @assertion String join([String separator = ""])
 * Converts each element to a String and concatenates the strings.
 *
 * Iterates through elements of this iterable, converts each one to a String by
 * calling Object.toString, and then concatenates the strings, with the
 * separator string interleaved between the elements.
 * @description Checks that join(separator) Iterates through elements of this
 * iterable, converts each one to a String by calling Object.toString, and then
 * concatenates the strings
 */

import { IIterable, List } from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function join_A01_t02(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>, separator: string) => {
        const i = a.getIterator();
        let expected = "";
        let s = "";
        while (i.moveNext()) {
            expected += s + i.getCurrent().toString();
            s = separator;
        }
        assert(expected == a.join(separator));
    };

    check(create(List.from([] as any, {})), ",");
    check(create(List.from([1, 2, 3, 10, 5] as any, {})), ":");
}
