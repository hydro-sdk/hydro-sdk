import { ScrollPhysics } from "./scrollPhysics";

export interface AlwaysScrollableScrollPhysicsProps {
    parent?: ScrollPhysics | undefined;
}

declare const flutter: {
    widgets: {
        alwaysScrollableScrollPhysics: (
            this: void,
            physics: AlwaysScrollableScrollPhysics,
            props?: AlwaysScrollableScrollPhysicsProps
        ) => AlwaysScrollableScrollPhysics;
    };
};

export class AlwaysScrollableScrollPhysics extends ScrollPhysics {
    public applyTo: (ancestor: ScrollPhysics) => ScrollPhysics;

    public constructor(props?: AlwaysScrollableScrollPhysicsProps) {
        super();

        this.applyTo = undefined as any;

        flutter.widgets.alwaysScrollableScrollPhysics(this, props);
    }
}
