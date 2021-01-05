/**
 * Adapted from https://github.com/dart-lang/co19/blob/master/LibTest/core/Iterable/Iterable_all_t01.dart
 * @assertion Iterable.generate(int count, [E generator(int index)])
 * Creates an Iterable that generates its elements dynamically.
 * An Iterator created by iterator will count from zero to count - 1, and call
 * generator with each index in turn to create the next value.
 * If generator is omitted, it defaults to an identity function on integers
 * (int x) => x, so it should only be omitted if the type parameter allows
 * integer values.
 * As an Iterable, new Iterable.generate(n, generator)) is equivalent to
 * const [0, ..., n - 1].map(generator).
 * @description Checks that Iterators created by the Iterable.generate() count
 * from zero to [count]-1 while iterating, and call [generator] with that index
 * to create the next value.
 * Checks that Iterators created by the Iterable contain results of invocations
 * of [generator].
 */

import { IIterable, Iterable } from "../../../../runtime/dart/core/iterable";
import { allIterableTests } from "./allTests";

function create(content: IIterable<any> | undefined): IIterable<any> {
    if (content === undefined) {
        return Iterable.empty();
    } else {
        const count = content.getLength();
        const generator = (count: number) => content.elementAt(count);
        return Iterable.generate(count, generator);
    }
}

export function all_t01() {
    allIterableTests(create);
}
