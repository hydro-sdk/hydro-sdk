import {print} from "./../dart/core";

export const console = {
    log: function (this: void, arg: string) 
    {
        print(arg);
    }
};