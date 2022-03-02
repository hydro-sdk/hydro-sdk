import { IList } from "../../dart/core/list";
import { IRect } from "../../dart/ui/rect";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { I_ReadingOrderSortData } from "./_readingOrderSortData";
import { IDirectionality } from "./directionality";
declare const flutter: {
    widgets: {
        _readingOrderDirectionalGroupData: (
            this: void,
            _readingOrderDirectionalGroupData: I_ReadingOrderDirectionalGroupData,
            members: IList<I_ReadingOrderSortData>
        ) => I_ReadingOrderDirectionalGroupData;
        _readingOrderDirectionalGroupDataSortWithDirectionality: (
            list: IList<I_ReadingOrderDirectionalGroupData>,
            directionality: TextDirection
        ) => void;
    };
};
export interface I_ReadingOrderDirectionalGroupData {
    members: IList<I_ReadingOrderSortData>;
    getDirectionality: () => TextDirection | undefined;
    getRect: () => IRect;
    getMemberAncestors: () => IList<IDirectionality>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class _ReadingOrderDirectionalGroupData implements IDiagnosticable {
    public readonly members: IList<I_ReadingOrderSortData> = undefined as any;
    public constructor(members: IList<I_ReadingOrderSortData>) {
        flutter.widgets._readingOrderDirectionalGroupData(this, members);
    }
    public static sortWithDirectionality(
        list: IList<I_ReadingOrderDirectionalGroupData>,
        directionality: TextDirection
    ): void {
        return flutter.widgets._readingOrderDirectionalGroupDataSortWithDirectionality(
            list,
            directionality
        );
    }
    private readonly _dart_getDirectionality: () => TextDirection | undefined =
        undefined as any;
    private readonly _dart_getRect: () => IRect = undefined as any;
    private readonly _dart_getMemberAncestors: () => IList<IDirectionality> =
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
    public getDirectionality(): TextDirection | undefined {
        return this._dart_getDirectionality();
    }
    public getRect(): IRect {
        return this._dart_getRect();
    }
    public getMemberAncestors(): IList<IDirectionality> {
        return this._dart_getMemberAncestors();
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
