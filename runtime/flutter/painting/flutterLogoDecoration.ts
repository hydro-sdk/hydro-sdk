import { Color, IColor } from "../../dart/ui/color";
import { IOffset } from "../../dart/ui/offset";
import { IPath } from "../../dart/ui/path";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBoxPainter } from "./boxPainter";
import { IDecoration } from "./decoration";
import { EdgeInsets, IEdgeInsets } from "./edgeInsets";
import { IEdgeInsetsGeometry } from "./edgeInsetsGeometry";
import { FlutterLogoStyle } from "./flutterLogoStyle";
declare const flutter: {
    painting: {
        flutterLogoDecoration: (
            this: void,
            flutterLogoDecoration: IFlutterLogoDecoration,
            props: {
                margin: IEdgeInsets;
                style: FlutterLogoStyle;
                textColor: IColor;
            }
        ) => IFlutterLogoDecoration;
        flutterLogoDecorationLerp: (
            a: IFlutterLogoDecoration | undefined,
            b: IFlutterLogoDecoration | undefined,
            t: number
        ) => IFlutterLogoDecoration | undefined;
    };
};
export interface IFlutterLogoDecoration {
    textColor: IColor;
    style: FlutterLogoStyle;
    margin: IEdgeInsets;
    debugAssertIsValid: () => boolean;
    getIsComplex: () => boolean;
    lerpFrom: (
        a: IDecoration | undefined,
        t: number
    ) => IFlutterLogoDecoration | undefined;
    lerpTo: (
        b: IDecoration | undefined,
        t: number
    ) => IFlutterLogoDecoration | undefined;
    hitTest: (
        size: ISize,
        position: IOffset,
        props?: { textDirection?: TextDirection | undefined }
    ) => boolean;
    createBoxPainter: (onChanged?: () => void) => IBoxPainter;
    getClipPath: (rect: IRect, textDirection: TextDirection) => IPath;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    getPadding: () => IEdgeInsetsGeometry | undefined;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class FlutterLogoDecoration
    implements Omit<IDecoration, "toStringShort">, IDiagnosticable
{
    public readonly textColor: IColor = undefined as any;
    public readonly style: FlutterLogoStyle = undefined as any;
    public readonly margin: IEdgeInsets = undefined as any;
    public constructor(props: {
        margin?: IEdgeInsets;
        style?: FlutterLogoStyle;
        textColor?: IColor;
    }) {
        flutter.painting.flutterLogoDecoration(this, {
            ...flutterLogoDecorationDefaultProps,
            ...props,
        });
    }
    public static lerp(
        a: IFlutterLogoDecoration | undefined,
        b: IFlutterLogoDecoration | undefined,
        t: number
    ): IFlutterLogoDecoration | undefined {
        return flutter.painting.flutterLogoDecorationLerp(a, b, t);
    }
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_getIsComplex: () => boolean = undefined as any;
    private readonly _dart_lerpFrom: (
        a: IDecoration | undefined,
        t: number
    ) => IFlutterLogoDecoration | undefined = undefined as any;
    private readonly _dart_lerpTo: (
        b: IDecoration | undefined,
        t: number
    ) => IFlutterLogoDecoration | undefined = undefined as any;
    private readonly _dart_hitTest: (
        size: ISize,
        position: IOffset,
        props?: { textDirection?: TextDirection | undefined }
    ) => boolean = undefined as any;
    private readonly _dart_createBoxPainter: (
        onChanged?: () => void
    ) => IBoxPainter = undefined as any;
    private readonly _dart_getClipPath: (
        rect: IRect,
        textDirection: TextDirection
    ) => IPath = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_getPadding: () => IEdgeInsetsGeometry | undefined =
        undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public debugAssertIsValid(): boolean {
        return this._dart_debugAssertIsValid();
    }
    public getIsComplex(): boolean {
        return this._dart_getIsComplex();
    }
    public lerpFrom(
        a: IDecoration | undefined,
        t: number
    ): IFlutterLogoDecoration | undefined {
        return this._dart_lerpFrom(a, t);
    }
    public lerpTo(
        b: IDecoration | undefined,
        t: number
    ): IFlutterLogoDecoration | undefined {
        return this._dart_lerpTo(b, t);
    }
    public hitTest(
        size: ISize,
        position: IOffset,
        props?: { textDirection?: TextDirection | undefined }
    ): boolean {
        return this._dart_hitTest(size, position, props);
    }
    public createBoxPainter(onChanged?: () => void): IBoxPainter {
        return this._dart_createBoxPainter(onChanged);
    }
    public getClipPath(rect: IRect, textDirection: TextDirection): IPath {
        return this._dart_getClipPath(rect, textDirection);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public getPadding(): IEdgeInsetsGeometry | undefined {
        return this._dart_getPadding();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
}
const flutterLogoDecorationDefaultProps = {
    margin: EdgeInsets.zero,
    style: FlutterLogoStyle.markOnly,
    textColor: new Color(0xff757575),
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
