import { off } from "process";

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

function main() {
    first();
    second();
}
