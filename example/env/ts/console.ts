/// <reference path="./../dart/core.ts" />

export const console = {
    log: function (this: void, arg: string) {
        print(arg);
    }
}