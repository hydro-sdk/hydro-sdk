import { IFutureOr } from "../../dart/async/futureOr";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextEditingValue } from "../services/textEditingValue";
import { IBuildContext } from "../widgets/buildContext";
import { IFocusNode } from "../widgets/focusNode";
import { RawAutocomplete } from "../widgets/rawAutocomplete";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { ITextEditingController } from "../widgets/textEditingController";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        autocomplete: <T>(
            this: void,
            autocomplete: IAutocomplete<T>,
            props: {
                displayStringForOption: (option: T) => string;
                fieldViewBuilder: (
                    context: IBuildContext,
                    textEditingController: ITextEditingController,
                    focusNode: IFocusNode,
                    onFieldSubmitted: () => void
                ) => IWidget;
                initialValue?: ITextEditingValue | undefined;
                key?: IKey | undefined;
                onSelected?: (option: T) => void | undefined;
                optionsMaxHeight: number;
                optionsViewBuilder?: (
                    context: IBuildContext,
                    onSelected: (option: T) => void,
                    options: IIterable<T>
                ) => IWidget | undefined;
                optionsBuilder: (
                    textEditingValue: ITextEditingValue
                ) => IFutureOr<IIterable<T>>;
            }
        ) => IAutocomplete<T>;
    };
};
export interface IAutocomplete<T> {
    optionsMaxHeight: number;
    initialValue: ITextEditingValue | undefined;
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
export class Autocomplete<T> implements IStatelessWidget, IDiagnosticable {
    public readonly optionsMaxHeight: number = undefined as any;
    public readonly initialValue: ITextEditingValue | undefined =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        displayStringForOption?: (option: T) => string;
        fieldViewBuilder: (
            context: IBuildContext,
            textEditingController: ITextEditingController,
            focusNode: IFocusNode,
            onFieldSubmitted: () => void
        ) => IWidget;
        initialValue?: ITextEditingValue | undefined;
        key?: IKey | undefined;
        onSelected?: (option: T) => void | undefined;
        optionsMaxHeight?: number;
        optionsViewBuilder?: (
            context: IBuildContext,
            onSelected: (option: T) => void,
            options: IIterable<T>
        ) => IWidget | undefined;
        optionsBuilder: (
            textEditingValue: ITextEditingValue
        ) => IFutureOr<IIterable<T>>;
    }) {
        flutter.material.autocomplete(this, {
            ...autocompleteDefaultProps,
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
const autocompleteDefaultProps = {
    displayStringForOption: RawAutocomplete.defaultStringForOption,
    optionsMaxHeight: 200.0,
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
