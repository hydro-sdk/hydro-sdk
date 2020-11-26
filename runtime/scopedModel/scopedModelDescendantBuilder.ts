import { Type } from "../dart/core/type";
import { BuildContext } from "../flutter/buildContext";
import { ChangeNotifier } from "../flutter/foundation/changeNotifier";
import { Widget } from "../flutter/widget";

export type ScopedModelDescendantBuilder<
    T extends ChangeNotifier & {
        runtimeType: Type;
    }
> = (
    context: BuildContext,
    child: Widget | undefined,
    model: T | undefined
) => Widget;
