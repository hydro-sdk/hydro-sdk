import { Type } from "../dart/core/type";
import { BuildContext } from "../flutter/buildContext";
import { ChangeNotifier } from "../flutter/foundation/changeNotifier";
import { Widget } from "../flutter/widget";
import { AnimatedBuilder } from "../flutter/widgets/animatedBuilder";
import { StatelessWidget } from "../flutter/widgets/statelessWidget";
import { InheritedModel } from "./inheritedModel";

export class ScopedModel<
    T extends ChangeNotifier & {
        runtimeType: Type;
    }
> extends StatelessWidget {
    public model: T;
    public child: Widget;

    public constructor({ model, child }: { model: T; child: Widget }) {
        super();
        this.model = model;
        this.child = child;
    }

    public build() {
        return new AnimatedBuilder({
            animation: this.model,
            builder: (context) =>
                new InheritedModel<T>({
                    model: this.model,
                    child: this.child,
                }),
        });
    }

    public static of<
        T extends ChangeNotifier & {
            runtimeType: Type;
        }
    >(context: BuildContext, type: T["runtimeType"]): T | undefined {
        const inheritedModel:
            | InheritedModel<T>
            | undefined = context.ancestorInheritedElementForWidgetOfExactType(
            type
        );
        return inheritedModel?.model;
    }
}
