import { Duration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IDecoration } from "../painting/decoration";
import { ITextStyle } from "../painting/textStyle";
import { ITableBorder } from "../rendering/tableBorder";
import { IBuildContext } from "../widgets/buildContext";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { IDataColumn } from "./dataColumn";
import { IDataRow } from "./dataRow";
import { IMaterialStateProperty } from "./materialStateProperty";
declare const flutter: {
    material: {
        dataTable: (
            this: void,
            dataTable: IDataTable,
            props: {
                border?: ITableBorder | undefined;
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
                key?: IKey | undefined;
                onSelectAll?: (value?: boolean | undefined) => void | undefined;
                showBottomBorder: boolean;
                showCheckboxColumn: boolean;
                sortAscending: boolean;
                sortColumnIndex?: number | undefined;
                columns: IList<IDataColumn>;
                rows: IList<IDataRow>;
            }
        ) => IDataTable;
    };
};
export interface IDataTable {
    columns: IList<IDataColumn>;
    sortColumnIndex: number | undefined;
    sortAscending: boolean;
    decoration: IDecoration | undefined;
    dataRowColor: IMaterialStateProperty<IColor | undefined> | undefined;
    dataRowHeight: number | undefined;
    dataTextStyle: ITextStyle | undefined;
    headingRowColor: IMaterialStateProperty<IColor | undefined> | undefined;
    headingRowHeight: number | undefined;
    headingTextStyle: ITextStyle | undefined;
    horizontalMargin: number | undefined;
    columnSpacing: number | undefined;
    showCheckboxColumn: boolean;
    rows: IList<IDataRow>;
    dividerThickness: number | undefined;
    showBottomBorder: boolean;
    checkboxHorizontalMargin: number | undefined;
    border: ITableBorder | undefined;
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
export class DataTable implements IStatelessWidget, IDiagnosticable {
    public static _headingRowHeight = 56.0;
    public static _horizontalMargin = 24.0;
    public static _columnSpacing = 56.0;
    public static _sortArrowPadding = 2.0;
    public static _dividerThickness = 1.0;
    public static _sortArrowAnimationDuration = new Duration({
        milliseconds: 150,
    });
    public readonly columns: IList<IDataColumn> = undefined as any;
    public readonly sortColumnIndex: number | undefined = undefined as any;
    public readonly sortAscending: boolean = undefined as any;
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
    public readonly showCheckboxColumn: boolean = undefined as any;
    public readonly rows: IList<IDataRow> = undefined as any;
    public readonly dividerThickness: number | undefined = undefined as any;
    public readonly showBottomBorder: boolean = undefined as any;
    public readonly checkboxHorizontalMargin: number | undefined =
        undefined as any;
    public readonly border: ITableBorder | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        border?: ITableBorder | undefined;
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
        key?: IKey | undefined;
        onSelectAll?: (value?: boolean | undefined) => void | undefined;
        showBottomBorder?: boolean;
        showCheckboxColumn?: boolean;
        sortAscending?: boolean;
        sortColumnIndex?: number | undefined;
        columns: IList<IDataColumn>;
        rows: IList<IDataRow>;
    }) {
        flutter.material.dataTable(this, {
            ...dataTableDefaultProps,
            ...props,
        });
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
const dataTableDefaultProps = {
    showBottomBorder: false,
    showCheckboxColumn: true,
    sortAscending: true,
};
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
