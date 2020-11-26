import { ScrollPhysics } from "./scrollPhysics";

export interface ClampingScrollPhysicsProps {
    parent?: ScrollPhysics | undefined;
}

declare const flutter: {
    widgets: {
        clampingScrollPhysics: (
            this: void,
            physics: ClampingScrollPhysics,
            props?: ClampingScrollPhysicsProps
        ) => ClampingScrollPhysics;
    };
};

export class ClampingScrollPhysics extends ScrollPhysics {
    public applyTo: (ancestor: ScrollPhysics) => ScrollPhysics;

    public constructor(props?: ClampingScrollPhysicsProps) {
        super();

        this.applyTo = undefined as any;

        flutter.widgets.clampingScrollPhysics(this, props);
    }
}
