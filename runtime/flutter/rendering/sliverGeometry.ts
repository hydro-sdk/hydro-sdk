import { IIterable } from "../../dart/core/iterable";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
declare const flutter: {
    rendering: {
        sliverGeometry: (
            this: void,
            sliverGeometry: ISliverGeometry,
            props: {
                cacheExtent?: number | undefined;
                hasVisualOverflow: boolean;
                hitTestExtent?: number | undefined;
                layoutExtent?: number | undefined;
                maxPaintExtent: number;
                maxScrollObstructionExtent: number;
                paintExtent: number;
                paintOrigin: number;
                scrollExtent: number;
                scrollOffsetCorrection?: number | undefined;
                visible?: boolean | undefined;
            }
        ) => ISliverGeometry;
    };
};
export interface ISliverGeometry {
    scrollExtent: number;
    paintOrigin: number;
    paintExtent: number;
    layoutExtent: number;
    maxPaintExtent: number;
    maxScrollObstructionExtent: number;
    hitTestExtent: number;
    visible: boolean;
    hasVisualOverflow: boolean;
    scrollOffsetCorrection: number | undefined;
    cacheExtent: number;
    debugAssertIsValid: (props?: {
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
    }) => boolean;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class SliverGeometry implements IDiagnosticable {
    public static zero = new SliverGeometry();
    public readonly scrollExtent: number = undefined as any;
    public readonly paintOrigin: number = undefined as any;
    public readonly paintExtent: number = undefined as any;
    public readonly layoutExtent: number = undefined as any;
    public readonly maxPaintExtent: number = undefined as any;
    public readonly maxScrollObstructionExtent: number = undefined as any;
    public readonly hitTestExtent: number = undefined as any;
    public readonly visible: boolean = undefined as any;
    public readonly hasVisualOverflow: boolean = undefined as any;
    public readonly scrollOffsetCorrection: number | undefined =
        undefined as any;
    public readonly cacheExtent: number = undefined as any;
    public constructor(props: {
        cacheExtent?: number | undefined;
        hasVisualOverflow?: boolean;
        hitTestExtent?: number | undefined;
        layoutExtent?: number | undefined;
        maxPaintExtent?: number;
        maxScrollObstructionExtent?: number;
        paintExtent?: number;
        paintOrigin?: number;
        scrollExtent?: number;
        scrollOffsetCorrection?: number | undefined;
        visible?: boolean | undefined;
    }) {
        flutter.rendering.sliverGeometry(this, {
            ...sliverGeometryDefaultProps,
            ...props,
        });
    }
    private readonly _dart_debugAssertIsValid: (props?: {
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
    }) => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public debugAssertIsValid(props?: {
        informationCollector?: () => IIterable<IDiagnosticsNode> | undefined;
    }): boolean {
        return this._dart_debugAssertIsValid(props);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
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
const sliverGeometryDefaultProps = {
    hasVisualOverflow: false,
    maxPaintExtent: 0.0,
    maxScrollObstructionExtent: 0.0,
    paintExtent: 0.0,
    paintOrigin: 0.0,
    scrollExtent: 0.0,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
