import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IBuildContext } from "../widgets/buildContext";
import { IScrollPhysics } from "../widgets/scrollPhysics";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { IControlsDetails } from "./controlsDetails";
import { IStep } from "./step";
import { StepperType } from "./stepperType";
declare const flutter: {
    material: {
        stepper: (
            this: void,
            stepper: IStepper,
            props: {
                controlsBuilder?: (
                    context: IBuildContext,
                    details: IControlsDetails
                ) => IWidget | undefined;
                currentStep: number;
                elevation?: number | undefined;
                key?: IKey | undefined;
                margin?: IEdgeInsetsGeometry | undefined;
                onStepCancel?: () => void | undefined;
                onStepContinue?: () => void | undefined;
                onStepTapped?: (value: number) => void | undefined;
                physics?: IScrollPhysics | undefined;
                type: StepperType;
                steps: IList<IStep>;
            }
        ) => IStepper;
    };
};
export interface IStepper {
    steps: IList<IStep>;
    physics: IScrollPhysics | undefined;
    type: StepperType;
    currentStep: number;
    elevation: number | undefined;
    margin: IEdgeInsetsGeometry | undefined;
    key: IKey | undefined;
    createState: () => IState<IStepper>;
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
export class Stepper implements IStatefulWidget, IDiagnosticable {
    public readonly steps: IList<IStep> = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly type: StepperType = undefined as any;
    public readonly currentStep: number = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly margin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        controlsBuilder?: (
            context: IBuildContext,
            details: IControlsDetails
        ) => IWidget | undefined;
        currentStep?: number;
        elevation?: number | undefined;
        key?: IKey | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        onStepCancel?: () => void | undefined;
        onStepContinue?: () => void | undefined;
        onStepTapped?: (value: number) => void | undefined;
        physics?: IScrollPhysics | undefined;
        type?: StepperType;
        steps: IList<IStep>;
    }) {
        flutter.material.stepper(this, {
            ...stepperDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IStepper> =
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
    public createState(): IState<IStepper> {
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
const stepperDefaultProps = {
    currentStep: 0,
    type: StepperType.vertical,
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
