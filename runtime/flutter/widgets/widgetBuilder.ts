import { Widget } from "../widget";
import { BuildContext } from "../buildContext";

export type WidgetBuilder = (this: void, context: BuildContext) => Widget;