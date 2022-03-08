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
import { BorderSide, IBorderSide } from "../painting/borderSide";
import { IBoxPainter } from "../painting/boxPainter";
import { IDecoration } from "../painting/decoration";
import { EdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
declare const flutter: {
    material: {
        underlineTabIndicator: (
            this: void,
            underlineTabIndicator: IUnderlineTabIndicator,
            props: { borderSide: IBorderSide; insets: IEdgeInsetsGeometry }
        ) => IUnderlineTabIndicator;
    };
};
export interface IUnderlineTabIndicator {
    borderSide: IBorderSide;
    insets: IEdgeInsetsGeometry;
    lerpFrom: (
        a: IDecoration | undefined,
        t: number
    ) => IDecoration | undefined;
    lerpTo: (b: IDecoration | undefined, t: number) => IDecoration | undefined;
    createBoxPainter: (onChanged?: () => void) => IBoxPainter;
    getClipPath: (rect: IRect, textDirection: TextDirection) => IPath;
    toStringShort: () => string;
    debugAssertIsValid: () => boolean;
    hitTest: (
        size: ISize,
        position: IOffset,
        props?: { textDirection?: TextDirection | undefined }
    ) => boolean;
    getPadding: () => IEdgeInsetsGeometry | undefined;
    getIsComplex: () => boolean;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
}
export class UnderlineTabIndicator
    implements Omit<IDecoration, "toStringShort">, IDiagnosticable
{
    public readonly borderSide: IBorderSide = undefined as any;
    public readonly insets: IEdgeInsetsGeometry = undefined as any;
    public constructor(props: {
        borderSide?: IBorderSide;
        insets?: IEdgeInsetsGeometry;
    }) {
        flutter.material.underlineTabIndicator(this, {
            ...underlineTabIndicatorDefaultProps,
            ...props,
        });
    }
    private readonly _dart_lerpFrom: (
        a: IDecoration | undefined,
        t: number
    ) => IDecoration | undefined = undefined as any;
    private readonly _dart_lerpTo: (
        b: IDecoration | undefined,
        t: number
    ) => IDecoration | undefined = undefined as any;
    private readonly _dart_createBoxPainter: (
        onChanged?: () => void
    ) => IBoxPainter = undefined as any;
    private readonly _dart_getClipPath: (
        rect: IRect,
        textDirection: TextDirection
    ) => IPath = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_hitTest: (
        size: ISize,
        position: IOffset,
        props?: { textDirection?: TextDirection | undefined }
    ) => boolean = undefined as any;
    private readonly _dart_getPadding: () => IEdgeInsetsGeometry | undefined =
        undefined as any;
    private readonly _dart_getIsComplex: () => boolean = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public lerpFrom(
        a: IDecoration | undefined,
        t: number
    ): IDecoration | undefined {
        return this._dart_lerpFrom(a, t);
    }
    public lerpTo(
        b: IDecoration | undefined,
        t: number
    ): IDecoration | undefined {
        return this._dart_lerpTo(b, t);
    }
    public createBoxPainter(onChanged?: () => void): IBoxPainter {
        return this._dart_createBoxPainter(onChanged);
    }
    public getClipPath(rect: IRect, textDirection: TextDirection): IPath {
        return this._dart_getClipPath(rect, textDirection);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugAssertIsValid(): boolean {
        return this._dart_debugAssertIsValid();
    }
    public hitTest(
        size: ISize,
        position: IOffset,
        props?: { textDirection?: TextDirection | undefined }
    ): boolean {
        return this._dart_hitTest(size, position, props);
    }
    public getPadding(): IEdgeInsetsGeometry | undefined {
        return this._dart_getPadding();
    }
    public getIsComplex(): boolean {
        return this._dart_getIsComplex();
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const underlineTabIndicatorDefaultProps = {
    borderSide: new BorderSide(),
    insets: EdgeInsets.zero,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
