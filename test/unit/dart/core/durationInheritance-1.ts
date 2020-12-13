import { Duration } from "../../../../runtime/dart/core/duration";
declare const assert: (this: void, arg: boolean, message?: string) => void;

class OverrideMinute extends Duration {
    constructor() {
        super({
            minutes: 2,
        });
    }

    public getInMinutes() {
        return 123;
    }

    public realGetInMinutes() {
        return super.getInMinutes();
    }
}

const overrideMinute = new OverrideMinute();

assert(overrideMinute.getInMinutes() == 123);
assert(overrideMinute.realGetInMinutes() == 2);
assert(overrideMinute.getInSeconds() == 120);
