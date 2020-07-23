import { Widget } from "../widget";
import { BuildContext } from "../buildContext";

export type InputCounterWidgetBuilder = (
    this: void,
    context: BuildContext,
    props: {
        currentLength: number, maxLength: number, isFocused: boolean
    }) => Widget;