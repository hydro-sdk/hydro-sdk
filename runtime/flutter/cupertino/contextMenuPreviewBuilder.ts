import {BuildContext} from "../buildContext";
import {Widget} from "../widget";

import {double} from "./../../dart/core/double";
import {Animation} from "./../animation/animation";

export type ContextMenuPreviewBuilder = (
    this: void,
    context: BuildContext,
    animation: Animation<double>,
    child: Widget
) => Widget;