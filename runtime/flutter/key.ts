import {Object} from "./../dart/core";
import {JITAllocatingManagedBox} from "./../syntheticBox";

declare const flutter: {
    key: (this: void, value: string) => Key;
};

export class Key extends JITAllocatingManagedBox<{}, {}> implements Readonly<Object>
{
    public readonly runtimeType = "Key";
    public value: string;
    public props: never;
    public constructor(value: string) 
    {
        super();
        this.value = value;
    }

    public unwrap() 
    {
        return flutter.key(this.value);
    }
}