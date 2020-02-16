import { Widget } from "./../widget";

export abstract class StatelessWidget implements Widget {
    tag: string;
    public abstract build(): Widget;
    public constructor() {
        this.tag = "";
    }
}
