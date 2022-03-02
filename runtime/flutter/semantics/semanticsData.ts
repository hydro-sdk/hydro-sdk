import { IList } from "../../dart/core/list";
import { ISet } from "../../dart/core/set";
import { IRect } from "../../dart/ui/rect";
import { ISemanticsAction } from "../../dart/ui/semanticsAction";
import { ISemanticsFlag } from "../../dart/ui/semanticsFlag";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMatrix4 } from "../../vector_math/matrix4";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextSelection } from "../services/textSelection";
import { IAttributedString } from "./attributedString";
import { ISemanticsTag } from "./semanticsTag";
declare const flutter: {
    semantics: {
        semanticsData: (
            this: void,
            semanticsData: ISemanticsData,
            props: {
                customSemanticsActionIds?: IList<number> | undefined;
                tags?: ISet<ISemanticsTag> | undefined;
                transform?: IMatrix4 | undefined;
                actions: number;
                attributedDecreasedValue: IAttributedString;
                attributedHint: IAttributedString;
                attributedIncreasedValue: IAttributedString;
                attributedLabel: IAttributedString;
                attributedValue: IAttributedString;
                currentValueLength?: number | undefined;
                elevation: number;
                flags: number;
                maxValueLength?: number | undefined;
                platformViewId?: number | undefined;
                rect: IRect;
                scrollChildCount?: number | undefined;
                scrollExtentMax?: number | undefined;
                scrollExtentMin?: number | undefined;
                scrollIndex?: number | undefined;
                scrollPosition?: number | undefined;
                textDirection?: TextDirection | undefined;
                textSelection?: ITextSelection | undefined;
                thickness: number;
            }
        ) => ISemanticsData;
    };
};
export interface ISemanticsData {
    flags: number;
    actions: number;
    attributedLabel: IAttributedString;
    attributedValue: IAttributedString;
    attributedIncreasedValue: IAttributedString;
    attributedDecreasedValue: IAttributedString;
    attributedHint: IAttributedString;
    textDirection: TextDirection | undefined;
    textSelection: ITextSelection | undefined;
    scrollChildCount: number | undefined;
    scrollIndex: number | undefined;
    scrollPosition: number | undefined;
    scrollExtentMax: number | undefined;
    scrollExtentMin: number | undefined;
    platformViewId: number | undefined;
    maxValueLength: number | undefined;
    currentValueLength: number | undefined;
    rect: IRect;
    tags: ISet<ISemanticsTag> | undefined;
    transform: IMatrix4 | undefined;
    elevation: number;
    thickness: number;
    customSemanticsActionIds: IList<number> | undefined;
    getLabel: () => string;
    getValue: () => string;
    getIncreasedValue: () => string;
    getDecreasedValue: () => string;
    getHint: () => string;
    hasFlag: (flag: ISemanticsFlag) => boolean;
    hasAction: (action: ISemanticsAction) => boolean;
    toStringShort: () => string;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    getHashCode: () => number;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class SemanticsData implements IDiagnosticable {
    public readonly flags: number = undefined as any;
    public readonly actions: number = undefined as any;
    public readonly attributedLabel: IAttributedString = undefined as any;
    public readonly attributedValue: IAttributedString = undefined as any;
    public readonly attributedIncreasedValue: IAttributedString =
        undefined as any;
    public readonly attributedDecreasedValue: IAttributedString =
        undefined as any;
    public readonly attributedHint: IAttributedString = undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly textSelection: ITextSelection | undefined =
        undefined as any;
    public readonly scrollChildCount: number | undefined = undefined as any;
    public readonly scrollIndex: number | undefined = undefined as any;
    public readonly scrollPosition: number | undefined = undefined as any;
    public readonly scrollExtentMax: number | undefined = undefined as any;
    public readonly scrollExtentMin: number | undefined = undefined as any;
    public readonly platformViewId: number | undefined = undefined as any;
    public readonly maxValueLength: number | undefined = undefined as any;
    public readonly currentValueLength: number | undefined = undefined as any;
    public readonly rect: IRect = undefined as any;
    public readonly tags: ISet<ISemanticsTag> | undefined = undefined as any;
    public readonly transform: IMatrix4 | undefined = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly thickness: number = undefined as any;
    public readonly customSemanticsActionIds: IList<number> | undefined =
        undefined as any;
    public constructor(props: {
        customSemanticsActionIds?: IList<number> | undefined;
        tags?: ISet<ISemanticsTag> | undefined;
        transform?: IMatrix4 | undefined;
        actions: number;
        attributedDecreasedValue: IAttributedString;
        attributedHint: IAttributedString;
        attributedIncreasedValue: IAttributedString;
        attributedLabel: IAttributedString;
        attributedValue: IAttributedString;
        currentValueLength?: number | undefined;
        elevation: number;
        flags: number;
        maxValueLength?: number | undefined;
        platformViewId?: number | undefined;
        rect: IRect;
        scrollChildCount?: number | undefined;
        scrollExtentMax?: number | undefined;
        scrollExtentMin?: number | undefined;
        scrollIndex?: number | undefined;
        scrollPosition?: number | undefined;
        textDirection?: TextDirection | undefined;
        textSelection?: ITextSelection | undefined;
        thickness: number;
    }) {
        flutter.semantics.semanticsData(this, props);
    }
    private readonly _dart_getLabel: () => string = undefined as any;
    private readonly _dart_getValue: () => string = undefined as any;
    private readonly _dart_getIncreasedValue: () => string = undefined as any;
    private readonly _dart_getDecreasedValue: () => string = undefined as any;
    private readonly _dart_getHint: () => string = undefined as any;
    private readonly _dart_hasFlag: (flag: ISemanticsFlag) => boolean =
        undefined as any;
    private readonly _dart_hasAction: (action: ISemanticsAction) => boolean =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public getLabel(): string {
        return this._dart_getLabel();
    }
    public getValue(): string {
        return this._dart_getValue();
    }
    public getIncreasedValue(): string {
        return this._dart_getIncreasedValue();
    }
    public getDecreasedValue(): string {
        return this._dart_getDecreasedValue();
    }
    public getHint(): string {
        return this._dart_getHint();
    }
    public hasFlag(flag: ISemanticsFlag): boolean {
        return this._dart_hasFlag(flag);
    }
    public hasAction(action: ISemanticsAction): boolean {
        return this._dart_hasAction(action);
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
