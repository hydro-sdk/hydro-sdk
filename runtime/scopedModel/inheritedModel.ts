import { Type } from "../dart/core/type";
import { ChangeNotifier } from "../flutter/foundation/changeNotifier";
import { Widget } from "../flutter/widget";
import { InheritedWidget } from "../flutter/widgets/inheritedWidget";

export class InheritedModel<
    T extends ChangeNotifier & {
        runtimeType: Type;
    }
> extends InheritedWidget {
    public model: T;
    public runtimeType: Type;
    public child: Widget;

    public constructor({ model, child }: { model: T; child: Widget }) {
        super();
        this.model = model;
        this.child = child;
        this.runtimeType = model.runtimeType;
    }
}
