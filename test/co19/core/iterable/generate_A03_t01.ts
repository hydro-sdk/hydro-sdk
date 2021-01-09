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
 * equivalent to const [0, ..., n - 1].map(generator)
 */

import { Iterable } from "./../../../../runtime/dart/core/iterable";
import { List } from "./../../../../runtime/dart/core/list";
declare const assert: (this: void, arg: boolean, message?: string) => void;

const generator = (index: number) => index * 2;

export function generate_A03_t01() {
    const arr = List.from<number>([0, 1, 2, 3, 4, 5] as any, {});
    const i1 = arr.map(generator);
    const i2 = Iterable.generate(arr.getLength(), generator);

    assert(arr.getLength() == i1.getLength());
    assert(arr.getLength() == i2.getLength());

    for (let i = 0; i < arr.getLength(); ++i) {
        assert(i1.elementAt(i) == i2.elementAt(i));
    }
}
