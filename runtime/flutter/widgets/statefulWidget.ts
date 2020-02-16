
import { Widget } from "./../widget";
import { State } from "./state";

export abstract class StatefulWidget implements Widget {
    tag: string;

    public abstract createState(): State<unknown>;
    public constructor() {
        this.tag = "";
    }
}
