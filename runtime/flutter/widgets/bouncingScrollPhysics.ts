import { ScrollPhysics } from "./scrollPhysics";

export interface BouncingScrollPhysicsProps {
    parent?: ScrollPhysics | undefined;
}

declare const flutter: {
    widgets: {
        bouncingScrollPhysics: (
            this: void,
            physics: BouncingScrollPhysics,
            props?: BouncingScrollPhysicsProps
        ) => BouncingScrollPhysics;
    };
};

export class BouncingScrollPhysics extends ScrollPhysics {
    public applyTo: (ancestor: ScrollPhysics) => ScrollPhysics;

    public constructor(props?: BouncingScrollPhysicsProps) {
        super();

        this.applyTo = undefined as any;

        flutter.widgets.bouncingScrollPhysics(this, props);
    }
}
