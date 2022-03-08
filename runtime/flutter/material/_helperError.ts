import { IList } from "../../dart/core/list";
import { TextAlign } from "../../dart/ui/textAlign";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextStyle } from "../painting/textStyle";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { I_HelperErrorState } from "./_helperErrorState";
declare const flutter: {
    material: {
        _helperError: (
            this: void,
            _helperError: I_HelperError,
            props?: {
                errorMaxLines?: number | undefined;
                errorStyle?: ITextStyle | undefined;
                errorText?: string | undefined;
                helperMaxLines?: number | undefined;
                helperStyle?: ITextStyle | undefined;
                helperText?: string | undefined;
                key?: IKey | undefined;
                textAlign?: TextAlign | undefined;
            }
        ) => I_HelperError;
    };
};
export interface I_HelperError {
    textAlign: TextAlign | undefined;
    helperText: string | undefined;
    helperStyle: ITextStyle | undefined;
    helperMaxLines: number | undefined;
    errorText: string | undefined;
    errorStyle: ITextStyle | undefined;
    errorMaxLines: number | undefined;
    key: IKey | undefined;
    createState: () => I_HelperErrorState;
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
export class _HelperError implements IStatefulWidget, IDiagnosticable {
    public readonly textAlign: TextAlign | undefined = undefined as any;
    public readonly helperText: string | undefined = undefined as any;
    public readonly helperStyle: ITextStyle | undefined = undefined as any;
    public readonly helperMaxLines: number | undefined = undefined as any;
    public readonly errorText: string | undefined = undefined as any;
    public readonly errorStyle: ITextStyle | undefined = undefined as any;
    public readonly errorMaxLines: number | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props?: {
        errorMaxLines?: number | undefined;
        errorStyle?: ITextStyle | undefined;
        errorText?: string | undefined;
        helperMaxLines?: number | undefined;
        helperStyle?: ITextStyle | undefined;
        helperText?: string | undefined;
        key?: IKey | undefined;
        textAlign?: TextAlign | undefined;
    }) {
        flutter.material._helperError(this, props);
    }
    private readonly _dart_createState: () => I_HelperErrorState =
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
    public createState(): I_HelperErrorState {
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
