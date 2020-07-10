import { ChangeNotifier } from "../flutter/foundation/changeNotifier";
import { Type } from "../dart/core/type";
import { StatelessWidget } from "../flutter/widgets/statelessWidget";
import { Widget } from "../flutter/widget";
import { BuildContext } from "../flutter/buildContext";

import { ScopedModelDescendantBuilder } from "./scopedModelDescendantBuilder";
import { ScopedModel } from "./scopedModel";

export class ScopedModelDescendant<
    T extends ChangeNotifier & {
        runtimeType: Type;
    }> extends StatelessWidget {
    public builder: ScopedModelDescendantBuilder<T>;
    public child: Widget | undefined;
    public type: T["runtimeType"];

    public constructor({
        builder,
        child,
        type
    }: {
        builder: ScopedModelDescendantBuilder<T>;
        child: Widget | undefined;
        type: T["runtimeType"];
    }) {
        super();

        this.builder = builder;
        this.child = child;
        this.type = type;
    }

    public build(context: BuildContext) {
        return this.builder(
            context,
            this.child,
            ScopedModel.of<T>(context, this.type)
        );
    }
}