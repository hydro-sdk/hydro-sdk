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
import { IBoxPainter } from "../painting/boxPainter";
import { IDecoration } from "../painting/decoration";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { I_CupertinoEdgeShadowPainter } from "./_cupertinoEdgeShadowPainter";
declare const flutter: {
    cupertino: {
        _cupertinoEdgeShadowDecorationLerp: (
            a: I_CupertinoEdgeShadowDecoration | undefined,
            b: I_CupertinoEdgeShadowDecoration | undefined,
            t: number
        ) => I_CupertinoEdgeShadowDecoration | undefined;
    };
};
export interface I_CupertinoEdgeShadowDecoration {
    lerpFrom: (
        a: IDecoration | undefined,
        t: number
    ) => I_CupertinoEdgeShadowDecoration;
    lerpTo: (
        b: IDecoration | undefined,
        t: number
    ) => I_CupertinoEdgeShadowDecoration;
    createBoxPainter: (onChanged?: () => void) => I_CupertinoEdgeShadowPainter;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    debugAssertIsValid: () => boolean;
    hitTest: (
        size: ISize,
        position: IOffset,
        props?: { textDirection?: TextDirection | undefined }
    ) => boolean;
    getClipPath: (rect: IRect, textDirection: TextDirection) => IPath;
    getPadding: () => IEdgeInsetsGeometry | undefined;
    getIsComplex: () => boolean;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class _CupertinoEdgeShadowDecoration
    implements Omit<IDecoration, "toStringShort">, IDiagnosticable
{
    public static lerp(
        a: I_CupertinoEdgeShadowDecoration | undefined,
        b: I_CupertinoEdgeShadowDecoration | undefined,
        t: number
    ): I_CupertinoEdgeShadowDecoration | undefined {
        return flutter.cupertino._cupertinoEdgeShadowDecorationLerp(a, b, t);
    }
    private readonly _dart_lerpFrom: (
        a: IDecoration | undefined,
        t: number
    ) => I_CupertinoEdgeShadowDecoration = undefined as any;
    private readonly _dart_lerpTo: (
        b: IDecoration | undefined,
        t: number
    ) => I_CupertinoEdgeShadowDecoration = undefined as any;
    private readonly _dart_createBoxPainter: (
        onChanged?: () => void
    ) => I_CupertinoEdgeShadowPainter = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugAssertIsValid: () => boolean = undefined as any;
    private readonly _dart_hitTest: (
        size: ISize,
        position: IOffset,
        props?: { textDirection?: TextDirection | undefined }
    ) => boolean = undefined as any;
    private readonly _dart_getClipPath: (
        rect: IRect,
        textDirection: TextDirection
    ) => IPath = undefined as any;
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
    public lerpFrom(
        a: IDecoration | undefined,
        t: number
    ): I_CupertinoEdgeShadowDecoration {
        return this._dart_lerpFrom(a, t);
    }
    public lerpTo(
        b: IDecoration | undefined,
        t: number
    ): I_CupertinoEdgeShadowDecoration {
        return this._dart_lerpTo(b, t);
    }
    public createBoxPainter(
        onChanged?: () => void
    ): I_CupertinoEdgeShadowPainter {
        return this._dart_createBoxPainter(onChanged);
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
    public getClipPath(rect: IRect, textDirection: TextDirection): IPath {
        return this._dart_getClipPath(rect, textDirection);
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
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
