import { off } from "process";

import { Offset } from "../../../../runtime/dart/ui/offset";

declare const assert: (this: void, arg: boolean, message?: string) => void;

function first() {
    const offset = new Offset(1, 1);

    assert(offset.getDx() == 1);
    assert(offset.getDy() == 1);
}

function main() {
    first();
}
