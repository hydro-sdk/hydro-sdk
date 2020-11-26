import { BuildContext } from "../buildContext";
import { Widget } from "../widget";

export type TransitionBuilder = (
    context: BuildContext,
    child: Widget
) => Widget;
