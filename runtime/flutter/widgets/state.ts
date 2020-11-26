import { Widget } from "./../widget";
import { BuildContext } from "../buildContext";
import { StatefulWidget } from "./statefulWidget";

export abstract class State<T extends StatefulWidget> {
    public abstract build(context: BuildContext): Widget;
    public abstract initState(): void;
    public abstract dispose(): void;
    public setState: (pred: () => void) => void;
    public constructor() {
        this.setState = undefined as any;
    }
}
