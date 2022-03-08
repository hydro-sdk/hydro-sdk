import { IList } from "../../dart/core/list";
import { TextAlign } from "../../dart/ui/textAlign";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextAlignVertical } from "../painting/textAlignVertical";
import { ITextStyle } from "../painting/textStyle";
import { IRenderBox } from "../rendering/renderBox";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IInputDecoration } from "./inputDecoration";
declare const flutter: {
    material: {
        inputDecorator: (
            this: void,
            inputDecorator: IInputDecorator,
            props: {
                baseStyle?: ITextStyle | undefined;
                child?: IWidget | undefined;
                expands: boolean;
                isEmpty: boolean;
                isFocused: boolean;
                isHovering: boolean;
                key?: IKey | undefined;
                textAlign?: TextAlign | undefined;
                textAlignVertical?: ITextAlignVertical | undefined;
                decoration: IInputDecoration;
            }
        ) => IInputDecorator;
        inputDecoratorContainerOf: (
            context: IBuildContext
        ) => IRenderBox | undefined;
    };
};
export interface IInputDecorator {
    decoration: IInputDecoration;
    baseStyle: ITextStyle | undefined;
    textAlign: TextAlign | undefined;
    textAlignVertical: ITextAlignVertical | undefined;
    isFocused: boolean;
    isHovering: boolean;
    expands: boolean;
    isEmpty: boolean;
    child: IWidget | undefined;
    key: IKey | undefined;
    createState: () => IState<IInputDecorator>;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IStatefulElement;
    toStringShort: () => string;
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
export class InputDecorator implements IStatefulWidget, IDiagnosticable {
    public readonly decoration: IInputDecoration = undefined as any;
    public readonly baseStyle: ITextStyle | undefined = undefined as any;
    public readonly textAlign: TextAlign | undefined = undefined as any;
    public readonly textAlignVertical: ITextAlignVertical | undefined =
        undefined as any;
    public readonly isFocused: boolean = undefined as any;
    public readonly isHovering: boolean = undefined as any;
    public readonly expands: boolean = undefined as any;
    public readonly isEmpty: boolean = undefined as any;
    public readonly child: IWidget | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        baseStyle?: ITextStyle | undefined;
        child?: IWidget | undefined;
        expands?: boolean;
        isEmpty?: boolean;
        isFocused?: boolean;
        isHovering?: boolean;
        key?: IKey | undefined;
        textAlign?: TextAlign | undefined;
        textAlignVertical?: ITextAlignVertical | undefined;
        decoration: IInputDecoration;
    }) {
        flutter.material.inputDecorator(this, {
            ...inputDecoratorDefaultProps,
            ...props,
        });
    }
    public static containerOf(context: IBuildContext): IRenderBox | undefined {
        return flutter.material.inputDecoratorContainerOf(context);
    }
    private readonly _dart_createState: () => IState<IInputDecorator> =
        undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
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
    public createState(): IState<IInputDecorator> {
        return this._dart_createState();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
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
const inputDecoratorDefaultProps = {
    expands: false,
    isEmpty: false,
    isFocused: false,
    isHovering: false,
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
