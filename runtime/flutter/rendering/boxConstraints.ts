import { double } from "./../../dart/core/double";
import { Type } from "./../../dart/core/type";
import { RuntimeBaseClass } from "./../../runtimeBaseClass";
import { JITAllocatingRTManagedBox } from "./../../syntheticBox";

declare const flutter: {
    rendering: {
        boxConstraints: (
            this: void,
            props: {
                minWidth: number;
                maxWidth: number;
                minHeight: number;
                maxHeight: number;
            }
        ) => BoxConstraints;
    };
};

export class BoxConstraints
    extends JITAllocatingRTManagedBox<undefined, BoxConstraints>
    implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(BoxConstraints);
    public props = undefined as any;
    public minWidth: number;
    public maxWidth: number;
    public minHeight: number;
    public maxHeight: number;
    public constructor(props: {
        minWidth: number;
        maxWidth: number;
        minHeight: number;
        maxHeight: number;
    }) {
        super();
        this.minWidth = props.minWidth;
        this.maxWidth = props.maxWidth;
        this.minHeight = props.minHeight;
        this.maxHeight = props.maxHeight;

        if (this.minWidth === undefined) {
            this.minWidth = 0.0;
        }

        if (this.maxWidth === undefined) {
            this.maxWidth = double.infinity;
        }

        if (this.minHeight === undefined) {
            this.minHeight = 0.0;
        }

        if (this.maxHeight === undefined) {
            this.maxHeight = double.infinity;
        }
    }

    public unwrap() {
        return flutter.rendering.boxConstraints({
            minWidth: this.minWidth,
            maxWidth: this.maxWidth,
            minHeight: this.minHeight,
            maxHeight: this.maxHeight,
        });
    }
}
