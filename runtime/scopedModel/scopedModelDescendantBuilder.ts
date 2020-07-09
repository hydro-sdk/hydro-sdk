import { ChangeNotifier } from "../flutter/foundation/changeNotifier";
import { Type } from "../dart/core/type";
import { BuildContext } from "../flutter/buildContext";
import { Widget } from "../flutter/widget";

export type ScopedModelDescendantBuilder<
    T extends ChangeNotifier & {
        runtimeType: Type
    }> = (
        context: BuildContext,
        child: Widget,
        model: T
    ) => Widget;