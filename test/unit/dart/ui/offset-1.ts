import { Offset } from "../../../../runtime/dart/ui/offset";

declare const assert: (this: void, arg: boolean, message?: string) => void;

function first() {
    const offset = new Offset(1, 1);

    assert(offset !== undefined);

    assert(offset.getDx() == 1);
    assert(offset.getDy() == 1);
}

function second() {
    const offset = new Offset(1, 1);

    assert(offset !== undefined);

    const offSet2 = offset.scale(2, 2);

    assert(offSet2 !== undefined);
    assert(offSet2.getDx() == 2);
    assert(offSet2.getDy() == 2);
}

class MyOffset extends Offset {
    public constructor(x: number, y: number) {
        super(x, y);
    }

    public getDx() {
        return 1;
    }
}

function third() {
    const offset = new MyOffset(2, 2);

    assert(offset !== undefined);
    assert(offset.getDx() == 1);
    assert(offset.getDy() == 2);

    const offSet2 = offset.scale(2, 2);

    assert(offSet2 !== undefined);
    //dX should be two after scaling because we've overriden its getter to always return 1
    assert(offSet2.getDx() == 2);
    assert(offSet2.getDy() == 4);
}

function main() {
    first();
    second();
    third();
}

main();
