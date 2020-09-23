
import { Widget } from "./../widget";
import { State } from "./state";

declare const flutter: {
    widgets: {
        statefulWidget: (this: void, statefulWidget: StatefulWidget) => StatefulWidget;
    }
}

export abstract class StatefulWidget implements Widget {
    tag: string;

    public abstract createState(): State<StatefulWidget>;
    public constructor() {
        this.tag = "";
        flutter.widgets.statefulWidget(this);
    }
}
