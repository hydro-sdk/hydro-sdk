/**
 * @assertion String join([String separator = ""])
 * Converts each element to a String and concatenates the strings.
 *
 * Iterates through elements of this iterable, converts each one to a String by
 * calling Object.toString, and then concatenates the strings, with the
 * separator string interleaved between the elements.
 * @description Checks that join() Iterates through elements of this iterable,
 * converts each one to a String by calling Object.toString, and then
 * concatenates the strings
 */

import { IIterable ,List} from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

export function join_A01_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const check = (a: IIterable<any>) => {
        const i = a.getIterator();
        let expected = "";
        while (i.moveNext()) {
            expected += i.getCurrent().toString();
        }

        assert(expected == a.join(""));
    };

    check(create(List.from([] as any, {})));
    check(create(List.from([1, 2, 3, 10, 15] as any, {})));
}
