import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBoxConstraints } from "../rendering/boxConstraints";
declare const flutter: {
    material: {
        bottomSheetThemeData: (
            this: void,
            bottomSheetThemeData: IBottomSheetThemeData,
            props?: {
                backgroundColor?: IColor | undefined;
                clipBehavior?: Clip | undefined;
                constraints?: IBoxConstraints | undefined;
                elevation?: number | undefined;
                modalBackgroundColor?: IColor | undefined;
                modalElevation?: number | undefined;
                shape?: IShapeBorder | undefined;
            }
        ) => IBottomSheetThemeData;
        bottomSheetThemeDataLerp: (
            a: IBottomSheetThemeData | undefined,
            b: IBottomSheetThemeData | undefined,
            t: number
        ) => IBottomSheetThemeData | undefined;
    };
};
export interface IBottomSheetThemeData {
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    modalBackgroundColor: IColor | undefined;
    modalElevation: number | undefined;
    shape: IShapeBorder | undefined;
    clipBehavior: Clip | undefined;
    constraints: IBoxConstraints | undefined;
    copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        clipBehavior?: Clip | undefined;
        constraints?: IBoxConstraints | undefined;
        elevation?: number | undefined;
        modalBackgroundColor?: IColor | undefined;
        modalElevation?: number | undefined;
        shape?: IShapeBorder | undefined;
    }) => IBottomSheetThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class BottomSheetThemeData implements IDiagnosticable {
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly modalBackgroundColor: IColor | undefined = undefined as any;
    public readonly modalElevation: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly clipBehavior: Clip | undefined = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        clipBehavior?: Clip | undefined;
        constraints?: IBoxConstraints | undefined;
        elevation?: number | undefined;
        modalBackgroundColor?: IColor | undefined;
        modalElevation?: number | undefined;
        shape?: IShapeBorder | undefined;
    }) {
        flutter.material.bottomSheetThemeData(this, props);
    }
    public static lerp(
        a: IBottomSheetThemeData | undefined,
        b: IBottomSheetThemeData | undefined,
        t: number
    ): IBottomSheetThemeData | undefined {
        return flutter.material.bottomSheetThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        backgroundColor?: IColor | undefined;
        clipBehavior?: Clip | undefined;
        constraints?: IBoxConstraints | undefined;
        elevation?: number | undefined;
        modalBackgroundColor?: IColor | undefined;
        modalElevation?: number | undefined;
        shape?: IShapeBorder | undefined;
    }) => IBottomSheetThemeData = undefined as any;
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
        backgroundColor?: IColor | undefined;
        clipBehavior?: Clip | undefined;
        constraints?: IBoxConstraints | undefined;
        elevation?: number | undefined;
        modalBackgroundColor?: IColor | undefined;
        modalElevation?: number | undefined;
        shape?: IShapeBorder | undefined;
    }): IBottomSheetThemeData {
        return this._dart_copyWith(props);
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
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
