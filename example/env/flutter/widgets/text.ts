import { StatelessWidget } from "./statelessWidget";
import { Widget } from "flutter/widget";

declare const flutter: {
    widgets: {
        text: (this: void, text: string) => { tag: string };
    }
}

export class Text extends StatelessWidget {
    public text: string;
    public constructor(text: string) {
        super();
        this.text = text;
    }

    public build(): Widget {
        return flutter.widgets.text(this.text);
    }
}
