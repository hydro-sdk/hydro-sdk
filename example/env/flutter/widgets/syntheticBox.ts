import { Widget } from "./../widget";

export abstract class SyntheticBox implements Widget {
    tag: string;
    public abstract unwrap(): Widget;
    public constructor() {
        this.tag = "";
    }
}