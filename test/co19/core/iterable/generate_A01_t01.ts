//Adapted from https://github.com/dart-lang/co19/blob/master/LibTest/core/Iterable/Iterable.generate_A01_t01.dart
import { Iterable } from "./../../../../runtime/dart/core/iterable";
declare const assert: (this: void, arg: boolean, message?: string) => void;

function check(count: number) {
    const generator = (index: number) => index * 3;

    const itbl = Iterable.generate(count, generator);

    for (let i = 0; i < count; ++i) {
        assert(i * 3 == itbl.elementAt(i));
    }

    assert(count == itbl.getLength());
}

export function generate_A01_t01() {
    check(0);
    check(1);
    check(10);
    check(1000);
}
