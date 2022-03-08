import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDecoration } from "../painting/decoration";
import { ITextStyle } from "../painting/textStyle";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        dataTableThemeData: (
            this: void,
            dataTableThemeData: IDataTableThemeData,
            props?: {
                checkboxHorizontalMargin?: number | undefined;
                columnSpacing?: number | undefined;
                dataRowColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                dataRowHeight?: number | undefined;
                dataTextStyle?: ITextStyle | undefined;
                decoration?: IDecoration | undefined;
                dividerThickness?: number | undefined;
                headingRowColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                headingRowHeight?: number | undefined;
                headingTextStyle?: ITextStyle | undefined;
                horizontalMargin?: number | undefined;
            }
        ) => IDataTableThemeData;
        dataTableThemeDataLerp: (
            a: IDataTableThemeData,
            b: IDataTableThemeData,
            t: number
        ) => IDataTableThemeData;
    };
};
export interface IDataTableThemeData {
    decoration: IDecoration | undefined;
    dataRowColor: IMaterialStateProperty<IColor | undefined> | undefined;
    dataRowHeight: number | undefined;
    dataTextStyle: ITextStyle | undefined;
    headingRowColor: IMaterialStateProperty<IColor | undefined> | undefined;
    headingRowHeight: number | undefined;
    headingTextStyle: ITextStyle | undefined;
    horizontalMargin: number | undefined;
    columnSpacing: number | undefined;
    dividerThickness: number | undefined;
    checkboxHorizontalMargin: number | undefined;
    copyWith: (props?: {
        checkboxHorizontalMargin?: number | undefined;
        columnSpacing?: number | undefined;
        dataRowColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        dataRowHeight?: number | undefined;
        dataTextStyle?: ITextStyle | undefined;
        decoration?: IDecoration | undefined;
        dividerThickness?: number | undefined;
        headingRowColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        headingRowHeight?: number | undefined;
        headingTextStyle?: ITextStyle | undefined;
        horizontalMargin?: number | undefined;
    }) => IDataTableThemeData;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class DataTableThemeData implements IDiagnosticable {
    public readonly decoration: IDecoration | undefined = undefined as any;
    public readonly dataRowColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly dataRowHeight: number | undefined = undefined as any;
    public readonly dataTextStyle: ITextStyle | undefined = undefined as any;
    public readonly headingRowColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly headingRowHeight: number | undefined = undefined as any;
    public readonly headingTextStyle: ITextStyle | undefined = undefined as any;
    public readonly horizontalMargin: number | undefined = undefined as any;
    public readonly columnSpacing: number | undefined = undefined as any;
    public readonly dividerThickness: number | undefined = undefined as any;
    public readonly checkboxHorizontalMargin: number | undefined =
        undefined as any;
    public constructor(props?: {
        checkboxHorizontalMargin?: number | undefined;
        columnSpacing?: number | undefined;
        dataRowColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        dataRowHeight?: number | undefined;
        dataTextStyle?: ITextStyle | undefined;
        decoration?: IDecoration | undefined;
        dividerThickness?: number | undefined;
        headingRowColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        headingRowHeight?: number | undefined;
        headingTextStyle?: ITextStyle | undefined;
        horizontalMargin?: number | undefined;
    }) {
        flutter.material.dataTableThemeData(this, props);
    }
    public static lerp(
        a: IDataTableThemeData,
        b: IDataTableThemeData,
        t: number
    ): IDataTableThemeData {
        return flutter.material.dataTableThemeDataLerp(a, b, t);
    }
    private readonly _dart_copyWith: (props?: {
        checkboxHorizontalMargin?: number | undefined;
        columnSpacing?: number | undefined;
        dataRowColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        dataRowHeight?: number | undefined;
        dataTextStyle?: ITextStyle | undefined;
        decoration?: IDecoration | undefined;
        dividerThickness?: number | undefined;
        headingRowColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        headingRowHeight?: number | undefined;
        headingTextStyle?: ITextStyle | undefined;
        horizontalMargin?: number | undefined;
    }) => IDataTableThemeData = undefined as any;
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
        checkboxHorizontalMargin?: number | undefined;
        columnSpacing?: number | undefined;
        dataRowColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        dataRowHeight?: number | undefined;
        dataTextStyle?: ITextStyle | undefined;
        decoration?: IDecoration | undefined;
        dividerThickness?: number | undefined;
        headingRowColor?:
            | IMaterialStateProperty<IColor | undefined>
            | undefined;
        headingRowHeight?: number | undefined;
        headingTextStyle?: ITextStyle | undefined;
        horizontalMargin?: number | undefined;
    }): IDataTableThemeData {
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
