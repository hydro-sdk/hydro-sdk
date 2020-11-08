import { Widget } from "../widget";
import { BuildContext } from "../buildContext";

export type IndexedWidgetBuilder = (this: void, context: BuildContext, index: number) => Widget;