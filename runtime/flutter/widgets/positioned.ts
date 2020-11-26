import { Type } from "../../dart/core/type";
import { Rect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface PositionedProps {
    key?: Key | undefined;
    left?: number | undefined;
    top?: number | undefined;
    right?: number | undefined;
    bottom?: number | undefined;
    width?: number | undefined;
    height?: number | undefined;
    child: Widget;
}

declare const flutter: {
    widgets: {
        positioned: (this: void, props: PositionedProps) => Positioned;
    };
};

export class Positioned extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Positioned);
    public props: PositionedProps;
    public constructor(props: PositionedProps) {
        super();
        this.props = props;
    }

    public static directional(
        props: NonNullable<Omit<PositionedProps, "left" | "right">> & {
            start: number;
            end: number;
            textDirection: TextDirection;
        }
    ): Positioned {
        let left: number | undefined;
        let right: number | undefined;

        switch (props.textDirection) {
            case TextDirection.rtl:
                left = props.end;
                right = props.start;
                break;
            case TextDirection.ltr:
                left = props.start;
                right = props.end;
                break;
            default:
                ((args: never): never => {
                    throw new Error("");
                })(props.textDirection);
                break;
        }

        return new Positioned({
            key: props.key,
            left,
            top: props.top,
            right,
            bottom: props.bottom,
            width: props.width,
            height: props.height,
            child: props.child,
        });
    }

    public static fromRect(props: {
        key?: Key | undefined;
        rect: Rect;
        child: Widget;
    }): Positioned {
        return new Positioned({
            left: props.rect.left,
            top: props.rect.top,
            right: props.rect.right,
            bottom: props.rect.bottom,
            key: props.key,
            child: props.child,
        });
    }

    public static fill(
        props: Omit<PositionedProps, "width" | "height">
    ): Positioned {
        const { left = 0.0, top = 0.0, right = 0.0, bottom = 0.0 } = props;

        return new Positioned({
            key: props.key,
            child: props.child,
            left,
            top,
            right,
            bottom,
        });
    }

    public build(): Widget {
        return flutter.widgets.positioned(this.props);
    }
}
