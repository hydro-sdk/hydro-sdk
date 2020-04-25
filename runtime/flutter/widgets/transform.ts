import {Widget} from "../widget";
import {DartObject} from "../../dart/core/object";
import {Offset} from "../../dart/ui/offset";

import {Alignment} from "./../painting/alignment";
import {Key} from "./../foundation/key";
import {StatelessWidget} from "./statelessWidget";

interface TransformRotateProps {
    key?: Key | undefined;
    angle?: number | undefined;
    origin?: Offset | undefined;
    alignment?: Alignment | undefined;
    transformHitTests?: boolean | undefined;
    child: Widget;
}

type TransformRotateInner = TransformRotateProps & { transformType: "rotate" };

interface TransformTranslateProps {
    key?: Key | undefined;
    offset: Offset | undefined;
    transformHitTests?: boolean | undefined;
    child?: Widget | undefined;
}

type TransformTranslateInner = TransformTranslateProps & { transformType: "translate" };

interface TransformScaleProps {
    key?: Key | undefined;
    scale: number;
    origin?: Offset | undefined;
    alignment?: Alignment | undefined;
    transformHitTests?: boolean | undefined;
    child?: Widget | undefined;
}

type TransformScaleInner = TransformScaleProps & { transformType: "scale" };

type TransformProps = TransformRotateInner | TransformTranslateInner | TransformScaleInner;

declare const flutter: {
    widgets: {
        transformRotate: (this: void, props: TransformRotateProps) => Transform;
        transformTranslate: (this: void, props: TransformTranslateProps) => Transform;
        transformScale: (this: void, props: TransformScaleProps) => Transform;
    };
};

export class Transform extends StatelessWidget implements Readonly<DartObject>
{
    public readonly runtimeType = "Transform";
    public props: TransformProps
    private constructor(props: TransformProps) 
    {
        super();

        this.props = props;
    }

    public static rotate(props: TransformRotateProps): Transform 
    {
        if (props.alignment === undefined) 
        {
            props.alignment = Alignment.center;
        }

        if (props.transformHitTests === undefined) 
        {
            props.transformHitTests = true;
        }

        return new Transform({
            transformType: "rotate",
            key: props.key,
            angle: props.angle,
            origin: props.origin,
            alignment: props.alignment,
            transformHitTests: props.transformHitTests,
            child: props.child
        });
    }

    public static translate(props: TransformTranslateProps): Transform 
    {
        if (props.transformHitTests === undefined) 
        {
            props.transformHitTests = true;
        }

        return new Transform({
            transformType: "translate",
            key: props.key,
            offset: props.offset,
            transformHitTests: props.transformHitTests,
            child: props.child
        });
    }

    public static scale(props: TransformScaleProps): Transform 
    {
        if (props.alignment === undefined) 
        {
            props.alignment = Alignment.center;
        }

        if (props.transformHitTests === undefined) 
        {
            props.transformHitTests = true;
        }

        return new Transform({
            transformType: "scale",
            key: props.key,
            scale: props.scale,
            origin: props.origin,
            alignment: props.alignment,
            transformHitTests: props.transformHitTests,
            child: props.child
        });
    }

    public build() 
    {
        switch (this.props.transformType) 
        {
        case "rotate":
            return flutter.widgets.transformRotate(this.props);
            break;
        case "translate":
            return flutter.widgets.transformTranslate(this.props);
            break;
        case "scale":
            return flutter.widgets.transformScale(this.props);
            break;
        }
    }
}
