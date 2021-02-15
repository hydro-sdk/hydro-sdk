/**
 * @assertion bool every(bool f(E element))
 * Checks whether every element of this iterable satisfies test.
 * Checks every element in iteration order, and returns false if any of them
 * make test return false, otherwise returns true.
 * @description Checks that something is thrown if the argument
 * is not a closure, doesn't implement a call() method with appropriate
 * signature or is null.
 */

import { IIterable ,List} from "./../../../../runtime/dart/index";

declare const assert: (this: void, arg: boolean, message?: string) => void;

class A {
    public constructor() {}
}

export function every_A03_t01(
    create: (content: IIterable<any> | undefined) => IIterable<any>
) {
    const a = create(List.from<number>([1, 2, 3] as any, {}));
    const x1 = false;
    const x2 = 1;
    const x3 = "every";
    const x4 = [1, 2, 3];
    const x5 = new A();
    const x6 = null;

    let threwX1 = false;
    let threwX2 = false;
    let threwX3 = false;
    let threwX4 = false;
    let threwX5 = false;
    let threwX6 = false;

    try {
        a.every(x1 as any);
    } catch (err) {
        threwX1 = true;
    }
    assert(threwX1 == true);

    try {
        a.every(x2 as any);
    } catch (err) {
        threwX2 = true;
    }
    assert(threwX2 == true);

    try {
        a.every(x3 as any);
    } catch (err) {
        threwX3 = true;
    }
    assert(threwX3 == true);

    try {
        a.every(x4 as any);
    } catch (err) {
        threwX4 = true;
    }
    assert(threwX4 == true);

    try {
        a.every(x5 as any);
    } catch (err) {
        threwX5 = true;
    }
    assert(threwX5 == true);

    try {
        a.every(x6 as any);
    } catch (err) {
        threwX6 = true;
    }
    assert(threwX6 == true);
}
