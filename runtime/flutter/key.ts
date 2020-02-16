import { SyntheticBox } from "./../syntheticBox";

declare const flutter: {
    key: (this: void, value: string) => Key;
}

export class Key extends SyntheticBox {
    public value: string;
    public constructor(value: string) {
        super();
        this.value = value;
    }

    public unwrap() {
        return flutter.key(this.value);
    }
}