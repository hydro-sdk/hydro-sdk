import { Widget } from "./flutter/widget";

export abstract class SyntheticBox implements Widget {
    tag: string;
    public abstract unwrap(): Widget;
    public constructor() {
        this.tag = "";
    }
}