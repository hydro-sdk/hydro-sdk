import { double } from "../../dart/core/double";
import { IList } from "../../dart/core/list";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IImageProvider } from "../painting/imageProvider";
import { IBuildContext } from "../widgets/buildContext";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        circleAvatar: (
            this: void,
            circleAvatar: ICircleAvatar,
            props?: {
                backgroundColor?: IColor | undefined;
                backgroundImage?: IImageProvider<Object> | undefined;
                child?: IWidget | undefined;
                foregroundColor?: IColor | undefined;
                foregroundImage?: IImageProvider<Object> | undefined;
                key?: IKey | undefined;
                maxRadius?: number | undefined;
                minRadius?: number | undefined;
                onBackgroundImageError?: (
                    exception: Object,
                    stackTrace?: IStackTrace | undefined
                ) => void | undefined;
                onForegroundImageError?: (
                    exception: Object,
                    stackTrace?: IStackTrace | undefined
                ) => void | undefined;
                radius?: number | undefined;
            }
        ) => ICircleAvatar;
    };
};
export interface ICircleAvatar {
    child: IWidget | undefined;
    backgroundColor: IColor | undefined;
    foregroundColor: IColor | undefined;
    backgroundImage: IImageProvider<Object> | undefined;
    foregroundImage: IImageProvider<Object> | undefined;
    radius: number | undefined;
    minRadius: number | undefined;
    maxRadius: number | undefined;
    key: IKey | undefined;
    build: (context: IBuildContext) => IWidget;
    createElement: () => IStatelessElement;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string;
    toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugDescribeChildren: () => IList<IDiagnosticsNode>;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
}
export class CircleAvatar implements IStatelessWidget, IDiagnosticable {
    public static _defaultRadius = 20.0;
    public static _defaultMinRadius = 0.0;
    public static _defaultMaxRadius = double.infinity;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly foregroundColor: IColor | undefined = undefined as any;
    public readonly backgroundImage: IImageProvider<Object> | undefined =
        undefined as any;
    public readonly foregroundImage: IImageProvider<Object> | undefined =
        undefined as any;
    public readonly radius: number | undefined = undefined as any;
    public readonly minRadius: number | undefined = undefined as any;
    public readonly maxRadius: number | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        backgroundImage?: IImageProvider<Object> | undefined;
        child?: IWidget | undefined;
        foregroundColor?: IColor | undefined;
        foregroundImage?: IImageProvider<Object> | undefined;
        key?: IKey | undefined;
        maxRadius?: number | undefined;
        minRadius?: number | undefined;
        onBackgroundImageError?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void | undefined;
        onForegroundImageError?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void | undefined;
        radius?: number | undefined;
    }) {
        flutter.material.circleAvatar(this, props);
    }
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_createElement: () => IStatelessElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toStringShallow: (props: {
        joiner: string;
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toStringDeep: (props: {
        minLevel: DiagnosticLevel;
        prefixLineOne: string;
        prefixOtherLines?: string | undefined;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugDescribeChildren: () => IList<IDiagnosticsNode> =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public createElement(): IStatelessElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public toStringShallow(props: {
        joiner?: string;
        minLevel?: DiagnosticLevel;
    }): string {
        return this._dart_toStringShallow({
            ...toStringShallowDefaultProps,
            ...props,
        });
    }
    public toStringDeep(props: {
        minLevel?: DiagnosticLevel;
        prefixLineOne?: string;
        prefixOtherLines?: string | undefined;
    }): string {
        return this._dart_toStringDeep({
            ...toStringDeepDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public debugDescribeChildren(): IList<IDiagnosticsNode> {
        return this._dart_debugDescribeChildren();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
}
const toStringShallowDefaultProps = {
    joiner: ", ",
    minLevel: DiagnosticLevel.debug,
};
const toStringDeepDefaultProps = {
    minLevel: DiagnosticLevel.debug,
    prefixLineOne: "",
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
