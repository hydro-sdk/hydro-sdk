import {DartObject} from "./../../dart/core/object";
import {JITAllocatingRTManagedBox} from "./../../syntheticBox";

declare const flutter: {
    key: (this: void, value: string) => Key;
};

export class Key extends JITAllocatingRTManagedBox<{}, {}> implements Readonly<DartObject>
{
    public readonly runtimeType = "Key";
    public value: string;
    public props: never;
    public constructor(value: string) 
    {
        super();
        this.value = value;
    }

    public unwrap(): Key 
    {
        return flutter.key(this.value);
    }
}