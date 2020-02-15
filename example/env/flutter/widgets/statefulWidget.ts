import { Widget } from "flutter/index";

export abstract class StatefulWidget implements Widget {
    tag: string;

    public abstract createState(): State<unknown>;
    public constructor() {
        this.tag = "";
    }
}

export abstract class State<T> {
    public abstract build(): Widget;
    // public setState(): void;
}