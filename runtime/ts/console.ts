import {print} from "./../dart/core";

export const console = {
    log: function (this: void, arg: string): void
    {
        print(arg);
    }
};