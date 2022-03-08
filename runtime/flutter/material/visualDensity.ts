import { IOffset } from "../../dart/ui/offset";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBoxConstraints } from "../rendering/boxConstraints";
declare const flutter: {
    material: {
        visualDensity: (
            this: void,
            visualDensity: IVisualDensity,
            props: { horizontal: number; vertical: number }
        ) => IVisualDensity;
        visualDensityAdaptivePlatformDensity: () => IVisualDensity;
        visualDensityLerp: (
            a: IVisualDensity,
            b: IVisualDensity,
            t: number
        ) => IVisualDensity;
    };
};
export interface IVisualDensity {
    horizontal: number;
    vertical: number;
    copyWith: (props?: {
        horizontal?: number | undefined;
        vertical?: number | undefined;
    }) => IVisualDensity;
    getBaseSizeAdjustment: () => IOffset;
    effectiveConstraints: (constraints: IBoxConstraints) => IBoxConstraints;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class VisualDensity implements IDiagnosticable {
    public static minimumDensity = -4.0;
    public static maximumDensity = 4.0;
    public static standard = new VisualDensity();
    public static comfortable = new VisualDensity({
        horizontal: -1.0,
        vertical: -1.0,
    });
    public static compact = new VisualDensity({
        horizontal: -2.0,
        vertical: -2.0,
    });
    public readonly horizontal: number = undefined as any;
    public readonly vertical: number = undefined as any;
    public constructor(props: { horizontal?: number; vertical?: number }) {
        flutter.material.visualDensity(this, {
            ...visualDensityDefaultProps,
            ...props,
        });
    }
    public static adaptivePlatformDensity(): IVisualDensity {
        return flutter.material.visualDensityAdaptivePlatformDensity();
    }
    public static lerp(
        a: IVisualDensity,
        b: IVisualDensity,
        t: number
    ): IVisualDensity {
        return flutter.material.visualDensityLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        horizontal?: number | undefined;
        vertical?: number | undefined;
    }) => IVisualDensity = undefined as any;
    private readonly _dart_getBaseSizeAdjustment: () => IOffset =
        undefined as any;
    private readonly _dart_effectiveConstraints: (
        constraints: IBoxConstraints
    ) => IBoxConstraints = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public copyWith(props?: {
        horizontal?: number | undefined;
        vertical?: number | undefined;
    }): IVisualDensity {
        return this._dart_copyWith(props);
    }
    public getBaseSizeAdjustment(): IOffset {
        return this._dart_getBaseSizeAdjustment();
    }
    public effectiveConstraints(constraints: IBoxConstraints): IBoxConstraints {
        return this._dart_effectiveConstraints(constraints);
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
const visualDensityDefaultProps = {
    horizontal: 0.0,
    vertical: 0.0,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
