import { VoidCallback } from "../../dart/ui/voidCallback";
import { TextEditingValue } from "./../services/textEditingValue";
import { TextSelection } from "./../services/textSelection";

declare const flutter: {
    widgets: {
        textEditingController: (
            this: void,
            controller: TextEditingController
        ) => TextEditingController;
    };
};

export class TextEditingController {
    public getText: () => string = undefined as any;
    public setText: (val: string) => void = undefined as any;

    public getSelection: () => TextSelection = undefined as any;

    public getValue: () => TextEditingValue = undefined as any;
    public setValue: (val: TextEditingValue) => void = undefined as any;

    public addListener: (callBack: VoidCallback) => void = undefined as any;
    public dispose: () => void = undefined as any;

    public constructor(props?: { text: string }) {
        flutter.widgets.textEditingController(this);
        if (props) {
            this.setText(props.text);
        }
    }
}
