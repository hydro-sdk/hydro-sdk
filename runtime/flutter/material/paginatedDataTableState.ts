import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IWidget } from "../widgets/widget";
import { IPaginatedDataTable } from "./paginatedDataTable";
declare const flutter: {
    material: {
        paginatedDataTableState: (
            this: void,
            paginatedDataTableState: IPaginatedDataTableState
        ) => IPaginatedDataTableState;
    };
};
export interface IPaginatedDataTableState {
    initState: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    dispose: () => void;
    pageTo: (rowIndex: number) => void;
    build: (context: IBuildContext) => IWidget;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    deactivate: () => void;
    activate: () => void;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => IPaginatedDataTable;
    getContext: () => IBuildContext;
    getMounted: () => boolean;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    getHashCode: () => number;
}
export class PaginatedDataTableState
    implements
        Omit<IState<IPaginatedDataTable>, "debugFillProperties">,
        IDiagnosticable
{
    public constructor() {
        flutter.material.paginatedDataTableState(this);
    }
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_pageTo: (rowIndex: number) => void =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => IPaginatedDataTable =
        undefined as any;
    private readonly _dart_getContext: () => IBuildContext = undefined as any;
    private readonly _dart_getMounted: () => boolean = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public initState(): void {
        return this._dart_initState();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public pageTo(rowIndex: number): void {
        return this._dart_pageTo(rowIndex);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public setState(fn: () => void): void {
        return this._dart_setState(fn);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public activate(): void {
        return this._dart_activate();
    }
    public didChangeDependencies(): void {
        return this._dart_didChangeDependencies();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public getWidget(): IPaginatedDataTable {
        return this._dart_getWidget();
    }
    public getContext(): IBuildContext {
        return this._dart_getContext();
    }
    public getMounted(): boolean {
        return this._dart_getMounted();
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
