import { Type } from "../../dart/core/type";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface SizedBoxProps {
    key?: Key | undefined;
    width?: number | undefined;
    height?: number | undefined;
    child?: Widget | undefined;
}

declare const flutter: {
    widgets: {
        sizedBox: (this: void, props: SizedBoxProps) => { tag: string };
    };
};

export class SizedBox extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(SizedBox);
    public props: SizedBoxProps;
    public constructor(props: SizedBoxProps) {
        super();
        this.props = props;
    }

    public build(): Widget {
        return flutter.widgets.sizedBox(this.props);
    }
}
