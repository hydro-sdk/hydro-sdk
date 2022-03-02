import { IList } from "../../dart/core/list";
import { IMap } from "../../dart/core/map";
import { TextDirection } from "../../dart/ui/textDirection";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { IDiagnosticableTree } from "../foundation/diagnosticableTree";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { ITextSelection } from "../services/textSelection";
import { IAttributedString } from "./attributedString";
import { ICustomSemanticsAction } from "./customSemanticsAction";
import { ISemanticsHintOverrides } from "./semanticsHintOverrides";
import { ISemanticsSortKey } from "./semanticsSortKey";
import { ISemanticsTag } from "./semanticsTag";
declare const flutter: {
    semantics: {
        semanticsProperties: (
            this: void,
            semanticsProperties: ISemanticsProperties,
            props?: {
                attributedDecreasedValue?: IAttributedString | undefined;
                attributedHint?: IAttributedString | undefined;
                attributedIncreasedValue?: IAttributedString | undefined;
                attributedLabel?: IAttributedString | undefined;
                attributedValue?: IAttributedString | undefined;
                button?: boolean | undefined;
                checked?: boolean | undefined;
                currentValueLength?: number | undefined;
                customSemanticsActions?:
                    | IMap<ICustomSemanticsAction, () => void>
                    | undefined;
                decreasedValue?: string | undefined;
                enabled?: boolean | undefined;
                focusable?: boolean | undefined;
                focused?: boolean | undefined;
                header?: boolean | undefined;
                hidden?: boolean | undefined;
                hint?: string | undefined;
                hintOverrides?: ISemanticsHintOverrides | undefined;
                image?: boolean | undefined;
                inMutuallyExclusiveGroup?: boolean | undefined;
                increasedValue?: string | undefined;
                keyboardKey?: boolean | undefined;
                label?: string | undefined;
                link?: boolean | undefined;
                liveRegion?: boolean | undefined;
                maxValueLength?: number | undefined;
                multiline?: boolean | undefined;
                namesRoute?: boolean | undefined;
                obscured?: boolean | undefined;
                onCopy?: () => void | undefined;
                onCut?: () => void | undefined;
                onDecrease?: () => void | undefined;
                onDidGainAccessibilityFocus?: () => void | undefined;
                onDidLoseAccessibilityFocus?: () => void | undefined;
                onDismiss?: () => void | undefined;
                onIncrease?: () => void | undefined;
                onLongPress?: () => void | undefined;
                onMoveCursorBackwardByCharacter?: (
                    extendSelection: boolean
                ) => void | undefined;
                onMoveCursorBackwardByWord?: (
                    extendSelection: boolean
                ) => void | undefined;
                onMoveCursorForwardByCharacter?: (
                    extendSelection: boolean
                ) => void | undefined;
                onMoveCursorForwardByWord?: (
                    extendSelection: boolean
                ) => void | undefined;
                onPaste?: () => void | undefined;
                onScrollDown?: () => void | undefined;
                onScrollLeft?: () => void | undefined;
                onScrollRight?: () => void | undefined;
                onScrollUp?: () => void | undefined;
                onSetSelection?: (
                    selection: ITextSelection
                ) => void | undefined;
                onSetText?: (text: string) => void | undefined;
                onTap?: () => void | undefined;
                readOnly?: boolean | undefined;
                scopesRoute?: boolean | undefined;
                selected?: boolean | undefined;
                slider?: boolean | undefined;
                sortKey?: ISemanticsSortKey | undefined;
                tagForChildren?: ISemanticsTag | undefined;
                textDirection?: TextDirection | undefined;
                textField?: boolean | undefined;
                toggled?: boolean | undefined;
                value?: string | undefined;
            }
        ) => ISemanticsProperties;
    };
};
export interface ISemanticsProperties {
    enabled: boolean | undefined;
    checked: boolean | undefined;
    toggled: boolean | undefined;
    selected: boolean | undefined;
    button: boolean | undefined;
    link: boolean | undefined;
    header: boolean | undefined;
    textField: boolean | undefined;
    slider: boolean | undefined;
    keyboardKey: boolean | undefined;
    readOnly: boolean | undefined;
    focusable: boolean | undefined;
    focused: boolean | undefined;
    inMutuallyExclusiveGroup: boolean | undefined;
    hidden: boolean | undefined;
    obscured: boolean | undefined;
    multiline: boolean | undefined;
    scopesRoute: boolean | undefined;
    namesRoute: boolean | undefined;
    image: boolean | undefined;
    liveRegion: boolean | undefined;
    maxValueLength: number | undefined;
    currentValueLength: number | undefined;
    label: string | undefined;
    attributedLabel: IAttributedString | undefined;
    value: string | undefined;
    attributedValue: IAttributedString | undefined;
    increasedValue: string | undefined;
    attributedIncreasedValue: IAttributedString | undefined;
    decreasedValue: string | undefined;
    attributedDecreasedValue: IAttributedString | undefined;
    hint: string | undefined;
    attributedHint: IAttributedString | undefined;
    hintOverrides: ISemanticsHintOverrides | undefined;
    textDirection: TextDirection | undefined;
    sortKey: ISemanticsSortKey | undefined;
    tagForChildren: ISemanticsTag | undefined;
    customSemanticsActions:
        | IMap<ICustomSemanticsAction, () => void>
        | undefined;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
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
    getHashCode: () => number;
}
export class SemanticsProperties
    implements
        Omit<IDiagnosticableTree, "toStringShort" | "toDiagnosticsNode">,
        IDiagnosticable
{
    public readonly enabled: boolean | undefined = undefined as any;
    public readonly checked: boolean | undefined = undefined as any;
    public readonly toggled: boolean | undefined = undefined as any;
    public readonly selected: boolean | undefined = undefined as any;
    public readonly button: boolean | undefined = undefined as any;
    public readonly link: boolean | undefined = undefined as any;
    public readonly header: boolean | undefined = undefined as any;
    public readonly textField: boolean | undefined = undefined as any;
    public readonly slider: boolean | undefined = undefined as any;
    public readonly keyboardKey: boolean | undefined = undefined as any;
    public readonly readOnly: boolean | undefined = undefined as any;
    public readonly focusable: boolean | undefined = undefined as any;
    public readonly focused: boolean | undefined = undefined as any;
    public readonly inMutuallyExclusiveGroup: boolean | undefined =
        undefined as any;
    public readonly hidden: boolean | undefined = undefined as any;
    public readonly obscured: boolean | undefined = undefined as any;
    public readonly multiline: boolean | undefined = undefined as any;
    public readonly scopesRoute: boolean | undefined = undefined as any;
    public readonly namesRoute: boolean | undefined = undefined as any;
    public readonly image: boolean | undefined = undefined as any;
    public readonly liveRegion: boolean | undefined = undefined as any;
    public readonly maxValueLength: number | undefined = undefined as any;
    public readonly currentValueLength: number | undefined = undefined as any;
    public readonly label: string | undefined = undefined as any;
    public readonly attributedLabel: IAttributedString | undefined =
        undefined as any;
    public readonly value: string | undefined = undefined as any;
    public readonly attributedValue: IAttributedString | undefined =
        undefined as any;
    public readonly increasedValue: string | undefined = undefined as any;
    public readonly attributedIncreasedValue: IAttributedString | undefined =
        undefined as any;
    public readonly decreasedValue: string | undefined = undefined as any;
    public readonly attributedDecreasedValue: IAttributedString | undefined =
        undefined as any;
    public readonly hint: string | undefined = undefined as any;
    public readonly attributedHint: IAttributedString | undefined =
        undefined as any;
    public readonly hintOverrides: ISemanticsHintOverrides | undefined =
        undefined as any;
    public readonly textDirection: TextDirection | undefined = undefined as any;
    public readonly sortKey: ISemanticsSortKey | undefined = undefined as any;
    public readonly tagForChildren: ISemanticsTag | undefined =
        undefined as any;
    public readonly customSemanticsActions:
        | IMap<ICustomSemanticsAction, () => void>
        | undefined = undefined as any;
    public constructor(props?: {
        attributedDecreasedValue?: IAttributedString | undefined;
        attributedHint?: IAttributedString | undefined;
        attributedIncreasedValue?: IAttributedString | undefined;
        attributedLabel?: IAttributedString | undefined;
        attributedValue?: IAttributedString | undefined;
        button?: boolean | undefined;
        checked?: boolean | undefined;
        currentValueLength?: number | undefined;
        customSemanticsActions?:
            | IMap<ICustomSemanticsAction, () => void>
            | undefined;
        decreasedValue?: string | undefined;
        enabled?: boolean | undefined;
        focusable?: boolean | undefined;
        focused?: boolean | undefined;
        header?: boolean | undefined;
        hidden?: boolean | undefined;
        hint?: string | undefined;
        hintOverrides?: ISemanticsHintOverrides | undefined;
        image?: boolean | undefined;
        inMutuallyExclusiveGroup?: boolean | undefined;
        increasedValue?: string | undefined;
        keyboardKey?: boolean | undefined;
        label?: string | undefined;
        link?: boolean | undefined;
        liveRegion?: boolean | undefined;
        maxValueLength?: number | undefined;
        multiline?: boolean | undefined;
        namesRoute?: boolean | undefined;
        obscured?: boolean | undefined;
        onCopy?: () => void | undefined;
        onCut?: () => void | undefined;
        onDecrease?: () => void | undefined;
        onDidGainAccessibilityFocus?: () => void | undefined;
        onDidLoseAccessibilityFocus?: () => void | undefined;
        onDismiss?: () => void | undefined;
        onIncrease?: () => void | undefined;
        onLongPress?: () => void | undefined;
        onMoveCursorBackwardByCharacter?: (
            extendSelection: boolean
        ) => void | undefined;
        onMoveCursorBackwardByWord?: (
            extendSelection: boolean
        ) => void | undefined;
        onMoveCursorForwardByCharacter?: (
            extendSelection: boolean
        ) => void | undefined;
        onMoveCursorForwardByWord?: (
            extendSelection: boolean
        ) => void | undefined;
        onPaste?: () => void | undefined;
        onScrollDown?: () => void | undefined;
        onScrollLeft?: () => void | undefined;
        onScrollRight?: () => void | undefined;
        onScrollUp?: () => void | undefined;
        onSetSelection?: (selection: ITextSelection) => void | undefined;
        onSetText?: (text: string) => void | undefined;
        onTap?: () => void | undefined;
        readOnly?: boolean | undefined;
        scopesRoute?: boolean | undefined;
        selected?: boolean | undefined;
        slider?: boolean | undefined;
        sortKey?: ISemanticsSortKey | undefined;
        tagForChildren?: ISemanticsTag | undefined;
        textDirection?: TextDirection | undefined;
        textField?: boolean | undefined;
        toggled?: boolean | undefined;
        value?: string | undefined;
    }) {
        flutter.semantics.semanticsProperties(this, props);
    }
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
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
    private readonly _dart_getHashCode: () => number = undefined as any;
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
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
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
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
