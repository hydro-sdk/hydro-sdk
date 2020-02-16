import { Widget } from "./../widget";
import { BuildContext } from "../buildContext";

export abstract class State<T> {
    public abstract build(context: BuildContext): Widget;
    public setState: (pred: () => void) => void;
    public constructor() {
        this.setState = undefined as any;
    }
}