import { IOffset } from "../../dart/ui/offset";
import { IRect } from "../../dart/ui/rect";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { I_ReorderableItem } from "./_reorderableItem";
import { IBuildContext } from "./buildContext";
import { IState } from "./state";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        _reorderableItemState: (
            this: void,
            _reorderableItemState: I_ReorderableItemState
        ) => I_ReorderableItemState;
    };
};
export interface I_ReorderableItemState {
    getKey: () => IKey;
    getIndex: () => number;
    getDragging: () => boolean;
    setDragging: (dragging: boolean) => void;
    initState: () => void;
    dispose: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    build: (context: IBuildContext) => IWidget;
    deactivate: () => void;
    getOffset: () => IOffset;
    updateForGap: (
        gapIndex: number,
        gapExtent: number,
        animate: boolean,
        reverse: boolean
    ) => void;
    resetGap: () => void;
    targetGeometry: () => IRect;
    rebuild: () => void;
    reassemble: () => void;
    setState: (fn: () => void) => void;
    activate: () => void;
    didChangeDependencies: () => void;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getWidget: () => I_ReorderableItem;
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
export class _ReorderableItemState
    implements
        Omit<IState<I_ReorderableItem>, "debugFillProperties">,
        IDiagnosticable
{
    public constructor() {
        flutter.widgets._reorderableItemState(this);
    }
    private readonly _dart_getKey: () => IKey = undefined as any;
    private readonly _dart_getIndex: () => number = undefined as any;
    private readonly _dart_getDragging: () => boolean = undefined as any;
    private readonly _dart_setDragging: (dragging: boolean) => void =
        undefined as any;
    private readonly _dart_initState: () => void = undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_didUpdateWidget: (oldWidget: any) => void =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_deactivate: () => void = undefined as any;
    private readonly _dart_getOffset: () => IOffset = undefined as any;
    private readonly _dart_updateForGap: (
        gapIndex: number,
        gapExtent: number,
        animate: boolean,
        reverse: boolean
    ) => void = undefined as any;
    private readonly _dart_resetGap: () => void = undefined as any;
    private readonly _dart_targetGeometry: () => IRect = undefined as any;
    private readonly _dart_rebuild: () => void = undefined as any;
    private readonly _dart_reassemble: () => void = undefined as any;
    private readonly _dart_setState: (fn: () => void) => void =
        undefined as any;
    private readonly _dart_activate: () => void = undefined as any;
    private readonly _dart_didChangeDependencies: () => void = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getWidget: () => I_ReorderableItem =
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
    public getKey(): IKey {
        return this._dart_getKey();
    }
    public getIndex(): number {
        return this._dart_getIndex();
    }
    public getDragging(): boolean {
        return this._dart_getDragging();
    }
    public setDragging(dragging: boolean): void {
        return this._dart_setDragging(dragging);
    }
    public initState(): void {
        return this._dart_initState();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public didUpdateWidget(oldWidget: any): void {
        return this._dart_didUpdateWidget(oldWidget);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public deactivate(): void {
        return this._dart_deactivate();
    }
    public getOffset(): IOffset {
        return this._dart_getOffset();
    }
    public updateForGap(
        gapIndex: number,
        gapExtent: number,
        animate: boolean,
        reverse: boolean
    ): void {
        return this._dart_updateForGap(gapIndex, gapExtent, animate, reverse);
    }
    public resetGap(): void {
        return this._dart_resetGap();
    }
    public targetGeometry(): IRect {
        return this._dart_targetGeometry();
    }
    public rebuild(): void {
        return this._dart_rebuild();
    }
    public reassemble(): void {
        return this._dart_reassemble();
    }
    public setState(fn: () => void): void {
        return this._dart_setState(fn);
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
    public getWidget(): I_ReorderableItem {
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
