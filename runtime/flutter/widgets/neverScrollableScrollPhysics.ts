import { ScrollPhysics } from "./scrollPhysics";

export interface NeverScrollableScrollPhysicsProps {
    parent?: ScrollPhysics | undefined;
}

declare const flutter: {
    widgets: {
        neverScrollableScrollPhysics: (
            this: void,
            physics: NeverScrollableScrollPhysics,
            props?: NeverScrollableScrollPhysicsProps
        ) => NeverScrollableScrollPhysics;
    };
};

export class NeverScrollableScrollPhysics extends ScrollPhysics {
    public applyTo: (ancestor: ScrollPhysics) => ScrollPhysics;

    public constructor(props?: NeverScrollableScrollPhysicsProps) {
        super();

        this.applyTo = undefined as any;

        flutter.widgets.neverScrollableScrollPhysics(this, props);
    }
}
