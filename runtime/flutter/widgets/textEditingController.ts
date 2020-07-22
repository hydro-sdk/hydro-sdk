declare const flutter: {
    widgets: {
        textEditingController: (this: void, controller: TextEditingController) => TextEditingController;
    }
}

export class TextEditingController {
    public getText: () => string = undefined as any;

    public setText: (val: string) => void = undefined as any;

    public constructor(props?: { text: string }) {
        flutter.widgets.textEditingController(this);
        if (props) {
            this.setText(props.text);
        }
    }
}