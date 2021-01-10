/**
 * @assertion Iterable.generate(int count, [E generator(int index)])
 * Creates an Iterable that generates its elements dynamically.
 * An Iterator created by iterator will count from zero to count - 1, and call
 * generator with each index in turn to create the next value.
 * If generator is omitted, it defaults to an identity function on integers
 * (int x) => x, so it should only be omitted if the type parameter allows
 * integer values.
 * As an Iterable, new Iterable.generate(n, generator)) is equivalent to
 * const [0, ..., n - 1].map(generator).
 * @description Checks that Iterators created by the Iterable.generate() is
 * equivalent to const [0, ..., n - 1].map(generator). Check how many times
 * generator function is called
 */

import { Iterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "./../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

let counter1 = 0;
let counter2 = 0;

function generator1(index: number) {
    counter1++;
    return index;
}

function generator2(index: number) {
    counter2++;
    return index;
}

export function generate_A03_t02() {
    const arr = List.from<number>([0, 1, 2, 3, 4, 5] as any, {});

    const i1 = arr.map(generator1);
    const i2 = Iterable.generate(arr.getLength(), generator2);

    counter1 = 0;
    counter2 = 0;

    i1.elementAt(2);
    i1.elementAt(2);

    i2.elementAt(2);
    i2.elementAt(2);

    assert(counter1 == counter2);
}
