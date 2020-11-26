import { BuildContext } from "../buildContext";
import { Widget } from "../widget";

export type InputCounterWidgetBuilder = (
    this: void,
    context: BuildContext,
    props: {
        currentLength: number;
        maxLength: number;
        isFocused: boolean;
    }
) => Widget;
