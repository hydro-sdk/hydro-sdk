import { Widget } from "./../widget";

export abstract class State<T> {
    public abstract build(): Widget;
    public setState: (pred: () => void) => void;
    public constructor() {
        this.setState = undefined as any;
    }
}