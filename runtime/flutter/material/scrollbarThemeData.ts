import { IColor } from "../../dart/ui/color";
import { IRadius } from "../../dart/ui/radius";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        scrollbarThemeData: (
            this: void,
            scrollbarThemeData: IScrollbarThemeData,
            props?: {
                crossAxisMargin?: number | undefined;
                interactive?: boolean | undefined;
                isAlwaysShown?: boolean | undefined;
                mainAxisMargin?: number | undefined;
                minThumbLength?: number | undefined;
                radius?: IRadius | undefined;
                showTrackOnHover?: boolean | undefined;
                thickness?:
                    | IMaterialStateProperty<number | undefined>
                    | undefined;
                thumbColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                trackBorderColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                trackColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
            }
        ) => IScrollbarThemeData;
        scrollbarThemeDataLerp: (
            a: IScrollbarThemeData | undefined,
            b: IScrollbarThemeData | undefined,
            t: number
        ) => IScrollbarThemeData;
    };
};
export interface IScrollbarThemeData {
    thickness: IMaterialStateProperty<number | undefined> | undefined;
    showTrackOnHover: boolean | undefined;
    isAlwaysShown: boolean | undefined;
    interactive: boolean | undefined;
    radius: IRadius | undefined;
    thumbColor: IMaterialStateProperty<IColor | undefined> | undefined;
    trackColor: IMaterialStateProperty<IColor | undefined> | undefined;
    trackBorderColor: IMaterialStateProperty<IColor | undefined> | undefined;
    crossAxisMargin: number | undefined;
    mainAxisMargin: number | undefined;
    minThumbLength: number | undefined;
    copyWith: (props?: {
        crossAxisMargin?: number | undefined;
        interactive?: boolean | undefined;
        isAlwaysShown?: boolean | undefined;
        mainAxisMargin?: number | undefined;
        minThumbLength?: number | undefined;
        radius?: IRadius | undefined;
        showTrackOnHover?: boolean | undefined;
        thickness?: IMaterialStateProperty<number | undefined> | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackBorderColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
    }) => IScrollbarThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class ScrollbarThemeData implements IDiagnosticable {
    public readonly thickness:
        | IMaterialStateProperty<number | undefined>
        | undefined = undefined as any;
    public readonly showTrackOnHover: boolean | undefined = undefined as any;
    public readonly isAlwaysShown: boolean | undefined = undefined as any;
    public readonly interactive: boolean | undefined = undefined as any;
    public readonly radius: IRadius | undefined = undefined as any;
    public readonly thumbColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly trackColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly trackBorderColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly crossAxisMargin: number | undefined = undefined as any;
    public readonly mainAxisMargin: number | undefined = undefined as any;
    public readonly minThumbLength: number | undefined = undefined as any;
    public constructor(props?: {
        crossAxisMargin?: number | undefined;
        interactive?: boolean | undefined;
        isAlwaysShown?: boolean | undefined;
        mainAxisMargin?: number | undefined;
        minThumbLength?: number | undefined;
        radius?: IRadius | undefined;
        showTrackOnHover?: boolean | undefined;
        thickness?: IMaterialStateProperty<number | undefined> | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackBorderColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
    }) {
        flutter.material.scrollbarThemeData(this, props);
    }
    public static lerp(
        a: IScrollbarThemeData | undefined,
        b: IScrollbarThemeData | undefined,
        t: number
    ): IScrollbarThemeData {
        return flutter.material.scrollbarThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        crossAxisMargin?: number | undefined;
        interactive?: boolean | undefined;
        isAlwaysShown?: boolean | undefined;
        mainAxisMargin?: number | undefined;
        minThumbLength?: number | undefined;
        radius?: IRadius | undefined;
        showTrackOnHover?: boolean | undefined;
        thickness?: IMaterialStateProperty<number | undefined> | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackBorderColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
    }) => IScrollbarThemeData = undefined as any;
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
        crossAxisMargin?: number | undefined;
        interactive?: boolean | undefined;
        isAlwaysShown?: boolean | undefined;
        mainAxisMargin?: number | undefined;
        minThumbLength?: number | undefined;
        radius?: IRadius | undefined;
        showTrackOnHover?: boolean | undefined;
        thickness?: IMaterialStateProperty<number | undefined> | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackBorderColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
    }): IScrollbarThemeData {
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
