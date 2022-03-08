import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
declare const flutter: {
    material: {
        progressIndicator: (
            this: void,
            progressIndicator: IProgressIndicator,
            props?: {
                backgroundColor?: IColor | undefined;
                color?: IColor | undefined;
                key?: IKey | undefined;
                semanticsLabel?: string | undefined;
                semanticsValue?: string | undefined;
                value?: number | undefined;
                valueColor?: IAnimation<IColor | undefined> | undefined;
            }
        ) => IProgressIndicator;
    };
};
export interface IProgressIndicator {
    value: number | undefined;
    backgroundColor: IColor | undefined;
    color: IColor | undefined;
    valueColor: IAnimation<IColor | undefined> | undefined;
    semanticsLabel: string | undefined;
    semanticsValue: string | undefined;
    key: IKey | undefined;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    createElement: () => IStatefulElement;
    createState: () => IState<IStatefulWidget>;
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
export class ProgressIndicator implements IStatefulWidget, IDiagnosticable {
    public readonly value: number | undefined = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly color: IColor | undefined = undefined as any;
    public readonly valueColor: IAnimation<IColor | undefined> | undefined =
        undefined as any;
    public readonly semanticsLabel: string | undefined = undefined as any;
    public readonly semanticsValue: string | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props?: {
        backgroundColor?: IColor | undefined;
        color?: IColor | undefined;
        key?: IKey | undefined;
        semanticsLabel?: string | undefined;
        semanticsValue?: string | undefined;
        value?: number | undefined;
        valueColor?: IAnimation<IColor | undefined> | undefined;
    }) {
        flutter.material.progressIndicator(this, props);
    }
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_createElement: () => IStatefulElement =
        undefined as any;
    private readonly _dart_createState: () => IState<IStatefulWidget> =
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
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public createElement(): IStatefulElement {
        return this._dart_createElement();
    }
    public createState(): IState<IStatefulWidget> {
        return this._dart_createState();
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
