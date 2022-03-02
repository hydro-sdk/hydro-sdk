import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IDirectionality } from "./directionality";
import { IFocusNode } from "./focusNode";
declare const flutter: {
    widgets: {
        _readingOrderSortData: (
            this: void,
            _readingOrderSortData: I_ReadingOrderSortData,
            node: IFocusNode
        ) => I_ReadingOrderSortData;
        _readingOrderSortDataCommonDirectionalityOf: (
            list: IList<I_ReadingOrderSortData>
        ) => TextDirection | undefined;
        _readingOrderSortDataSortWithDirectionality: (
            list: IList<I_ReadingOrderSortData>,
            directionality: TextDirection
        ) => void;
    };
};
export interface I_ReadingOrderSortData {
    directionality: TextDirection | undefined;
    rect: IRect;
    node: IFocusNode;
    getDirectionalAncestors: () => IIterable<IDirectionality>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class _ReadingOrderSortData implements IDiagnosticable {
    public readonly directionality: TextDirection | undefined =
        undefined as any;
    public readonly rect: IRect = undefined as any;
    public readonly node: IFocusNode = undefined as any;
    public constructor(node: IFocusNode) {
        flutter.widgets._readingOrderSortData(this, node);
    }
    public static commonDirectionalityOf(
        list: IList<I_ReadingOrderSortData>
    ): TextDirection | undefined {
        return flutter.widgets._readingOrderSortDataCommonDirectionalityOf(
            list
        );
    }
    public static sortWithDirectionality(
        list: IList<I_ReadingOrderSortData>,
        directionality: TextDirection
    ): void {
        return flutter.widgets._readingOrderSortDataSortWithDirectionality(
            list,
            directionality
        );
    }
    private readonly _dart_getDirectionalAncestors: () => IIterable<IDirectionality> =
        undefined as any;
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
    public getDirectionalAncestors(): IIterable<IDirectionality> {
        return this._dart_getDirectionalAncestors();
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
