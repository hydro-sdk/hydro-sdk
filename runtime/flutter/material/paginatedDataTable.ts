import { IList, List } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IDataColumn } from "./dataColumn";
import { IDataTableSource } from "./dataTableSource";
import { IPaginatedDataTableState } from "./paginatedDataTableState";
declare const flutter: {
    material: {
        paginatedDataTable: (
            this: void,
            paginatedDataTable: IPaginatedDataTable,
            props: {
                actions?: IList<IWidget> | undefined;
                arrowHeadColor?: IColor | undefined;
                availableRowsPerPage: IList<number>;
                checkboxHorizontalMargin?: number | undefined;
                columnSpacing: number;
                dataRowHeight: number;
                dragStartBehavior: DragStartBehavior;
                header?: IWidget | undefined;
                headingRowHeight: number;
                horizontalMargin: number;
                initialFirstRowIndex?: number | undefined;
                key?: IKey | undefined;
                onPageChanged?: (value: number) => void | undefined;
                onRowsPerPageChanged?: (
                    value?: number | undefined
                ) => void | undefined;
                onSelectAll?: (value?: boolean | undefined) => void | undefined;
                rowsPerPage: number;
                showCheckboxColumn: boolean;
                showFirstLastButtons: boolean;
                sortAscending: boolean;
                sortColumnIndex?: number | undefined;
                columns: IList<IDataColumn>;
                source: IDataTableSource;
            }
        ) => IPaginatedDataTable;
    };
};
export interface IPaginatedDataTable {
    header: IWidget | undefined;
    actions: IList<IWidget> | undefined;
    columns: IList<IDataColumn>;
    sortColumnIndex: number | undefined;
    sortAscending: boolean;
    dataRowHeight: number;
    headingRowHeight: number;
    horizontalMargin: number;
    columnSpacing: number;
    showCheckboxColumn: boolean;
    showFirstLastButtons: boolean;
    initialFirstRowIndex: number | undefined;
    rowsPerPage: number;
    availableRowsPerPage: IList<number>;
    source: IDataTableSource;
    dragStartBehavior: DragStartBehavior;
    checkboxHorizontalMargin: number | undefined;
    arrowHeadColor: IColor | undefined;
    key: IKey | undefined;
    createState: () => IPaginatedDataTableState;
    createElement: () => IStatefulElement;
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
export class PaginatedDataTable implements IStatefulWidget, IDiagnosticable {
    public static defaultRowsPerPage = 10;
    public readonly header: IWidget | undefined = undefined as any;
    public readonly actions: IList<IWidget> | undefined = undefined as any;
    public readonly columns: IList<IDataColumn> = undefined as any;
    public readonly sortColumnIndex: number | undefined = undefined as any;
    public readonly sortAscending: boolean = undefined as any;
    public readonly dataRowHeight: number = undefined as any;
    public readonly headingRowHeight: number = undefined as any;
    public readonly horizontalMargin: number = undefined as any;
    public readonly columnSpacing: number = undefined as any;
    public readonly showCheckboxColumn: boolean = undefined as any;
    public readonly showFirstLastButtons: boolean = undefined as any;
    public readonly initialFirstRowIndex: number | undefined = undefined as any;
    public readonly rowsPerPage: number = undefined as any;
    public readonly availableRowsPerPage: IList<number> = undefined as any;
    public readonly source: IDataTableSource = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly checkboxHorizontalMargin: number | undefined =
        undefined as any;
    public readonly arrowHeadColor: IColor | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        actions?: IList<IWidget> | undefined;
        arrowHeadColor?: IColor | undefined;
        availableRowsPerPage?: IList<number>;
        checkboxHorizontalMargin?: number | undefined;
        columnSpacing?: number;
        dataRowHeight: number;
        dragStartBehavior?: DragStartBehavior;
        header?: IWidget | undefined;
        headingRowHeight?: number;
        horizontalMargin?: number;
        initialFirstRowIndex?: number | undefined;
        key?: IKey | undefined;
        onPageChanged?: (value: number) => void | undefined;
        onRowsPerPageChanged?: (value?: number | undefined) => void | undefined;
        onSelectAll?: (value?: boolean | undefined) => void | undefined;
        rowsPerPage?: number;
        showCheckboxColumn?: boolean;
        showFirstLastButtons?: boolean;
        sortAscending?: boolean;
        sortColumnIndex?: number | undefined;
        columns: IList<IDataColumn>;
        source: IDataTableSource;
    }) {
        flutter.material.paginatedDataTable(this, {
            ...paginatedDataTableDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IPaginatedDataTableState =
        undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
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
    public createState(): IPaginatedDataTableState {
        return this._dart_createState();
    }
    public createElement(): IStatefulElement {
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
const paginatedDataTableDefaultProps = {
    availableRowsPerPage: List.fromArray([
        PaginatedDataTable.defaultRowsPerPage,
        PaginatedDataTable.defaultRowsPerPage * 2,
        PaginatedDataTable.defaultRowsPerPage * 5,
        PaginatedDataTable.defaultRowsPerPage * 10,
    ]),
    columnSpacing: 56.0,
    dragStartBehavior: DragStartBehavior.start,
    headingRowHeight: 56.0,
    horizontalMargin: 24.0,
    initialFirstRowIndex: 0,
    rowsPerPage: PaginatedDataTable.defaultRowsPerPage,
    showCheckboxColumn: true,
    showFirstLastButtons: false,
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
