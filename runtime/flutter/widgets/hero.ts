import { Key } from "./../../flutter/foundation/key";
import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { StatelessWidget } from "./../widgets/statelessWidget";
import { Widget } from "../widget";

export interface HeroProps {
    key?: Key | undefined;
    tag: string;
    transitionOnUserGestures?: boolean | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        hero: (this: void, props: HeroProps) => Hero;
    };
};

export class Hero extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Hero);
    public props: HeroProps;
    public constructor(props: HeroProps) {
        super();
        this.props = props;

        if (this.props.transitionOnUserGestures === undefined) {
            this.props.transitionOnUserGestures = false;
        }
    }

    public build() {
        return flutter.widgets.hero(this.props);
    }
}
