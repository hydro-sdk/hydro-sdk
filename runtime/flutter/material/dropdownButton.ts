import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { AlignmentDirectional } from "../painting/alignmentDirectional";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { IBorderRadius } from "../painting/borderRadius";
import { ITextStyle } from "../painting/textStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IDropdownMenuItem } from "./dropdownMenuItem";
declare const flutter: {
    material: {
        dropdownButton: <T>(
            this: void,
            dropdownButton: IDropdownButton<T>,
            props: {
                alignment: IAlignmentGeometry;
                autofocus: boolean;
                borderRadius?: IBorderRadius | undefined;
                disabledHint?: IWidget | undefined;
                dropdownColor?: IColor | undefined;
                elevation: number;
                enableFeedback?: boolean | undefined;
                focusColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                hint?: IWidget | undefined;
                icon?: IWidget | undefined;
                iconDisabledColor?: IColor | undefined;
                iconEnabledColor?: IColor | undefined;
                iconSize: number;
                isDense: boolean;
                isExpanded: boolean;
                itemHeight?: number | undefined;
                key?: IKey | undefined;
                menuMaxHeight?: number | undefined;
                onTap?: () => void | undefined;
                selectedItemBuilder?: (
                    context: IBuildContext
                ) => IList<IWidget> | undefined;
                style?: ITextStyle | undefined;
                underline?: IWidget | undefined;
                value?: T | undefined;
                items?: IList<IDropdownMenuItem<T>> | undefined;
                onChanged?: (value?: T | undefined) => void | undefined;
            }
        ) => IDropdownButton<T>;
    };
};
export interface IDropdownButton<T> {
    items: IList<IDropdownMenuItem<T>> | undefined;
    hint: IWidget | undefined;
    disabledHint: IWidget | undefined;
    elevation: number;
    style: ITextStyle | undefined;
    underline: IWidget | undefined;
    icon: IWidget | undefined;
    iconDisabledColor: IColor | undefined;
    iconEnabledColor: IColor | undefined;
    iconSize: number;
    isDense: boolean;
    isExpanded: boolean;
    itemHeight: number | undefined;
    focusColor: IColor | undefined;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    dropdownColor: IColor | undefined;
    menuMaxHeight: number | undefined;
    enableFeedback: boolean | undefined;
    alignment: IAlignmentGeometry;
    borderRadius: IBorderRadius | undefined;
    key: IKey | undefined;
    createState: () => IState<IDropdownButton<T>>;
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
export class DropdownButton<T> implements IStatefulWidget, IDiagnosticable {
    public readonly items: IList<IDropdownMenuItem<T>> | undefined =
        undefined as any;
    public readonly hint: IWidget | undefined = undefined as any;
    public readonly disabledHint: IWidget | undefined = undefined as any;
    public readonly elevation: number = undefined as any;
    public readonly style: ITextStyle | undefined = undefined as any;
    public readonly underline: IWidget | undefined = undefined as any;
    public readonly icon: IWidget | undefined = undefined as any;
    public readonly iconDisabledColor: IColor | undefined = undefined as any;
    public readonly iconEnabledColor: IColor | undefined = undefined as any;
    public readonly iconSize: number = undefined as any;
    public readonly isDense: boolean = undefined as any;
    public readonly isExpanded: boolean = undefined as any;
    public readonly itemHeight: number | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly dropdownColor: IColor | undefined = undefined as any;
    public readonly menuMaxHeight: number | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly borderRadius: IBorderRadius | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        autofocus?: boolean;
        borderRadius?: IBorderRadius | undefined;
        disabledHint?: IWidget | undefined;
        dropdownColor?: IColor | undefined;
        elevation?: number;
        enableFeedback?: boolean | undefined;
        focusColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        hint?: IWidget | undefined;
        icon?: IWidget | undefined;
        iconDisabledColor?: IColor | undefined;
        iconEnabledColor?: IColor | undefined;
        iconSize?: number;
        isDense?: boolean;
        isExpanded?: boolean;
        itemHeight?: number | undefined;
        key?: IKey | undefined;
        menuMaxHeight?: number | undefined;
        onTap?: () => void | undefined;
        selectedItemBuilder?: (
            context: IBuildContext
        ) => IList<IWidget> | undefined;
        style?: ITextStyle | undefined;
        underline?: IWidget | undefined;
        value?: T | undefined;
        items?: IList<IDropdownMenuItem<T>> | undefined;
        onChanged?: (value?: T | undefined) => void | undefined;
    }) {
        flutter.material.dropdownButton(this, {
            ...dropdownButtonDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IDropdownButton<T>> =
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
    public createState(): IState<IDropdownButton<T>> {
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
const dropdownButtonDefaultProps = {
    alignment: AlignmentDirectional.centerStart,
    autofocus: false,
    elevation: 8,
    iconSize: 24.0,
    isDense: false,
    isExpanded: false,
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
