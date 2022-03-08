import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { IAnimationController } from "../animation/animationController";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { I_FloatingActionButtonTransitionState } from "./_floatingActionButtonTransitionState";
import { I_ScaffoldGeometryNotifier } from "./_scaffoldGeometryNotifier";
import { IFloatingActionButtonAnimator } from "./floatingActionButtonAnimator";
declare const flutter: {
    material: {
        _floatingActionButtonTransition: (
            this: void,
            _floatingActionButtonTransition: I_FloatingActionButtonTransition,
            props: {
                key?: IKey | undefined;
                child?: IWidget | undefined;
                currentController: IAnimationController;
                fabMotionAnimator: IFloatingActionButtonAnimator;
                fabMoveAnimation: IAnimation<number>;
                geometryNotifier: I_ScaffoldGeometryNotifier;
            }
        ) => I_FloatingActionButtonTransition;
    };
};
export interface I_FloatingActionButtonTransition {
    child: IWidget | undefined;
    fabMoveAnimation: IAnimation<number>;
    fabMotionAnimator: IFloatingActionButtonAnimator;
    geometryNotifier: I_ScaffoldGeometryNotifier;
    currentController: IAnimationController;
    key: IKey | undefined;
    createState: () => I_FloatingActionButtonTransitionState;
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
export class _FloatingActionButtonTransition
    implements IStatefulWidget, IDiagnosticable
{
    public readonly child: IWidget | undefined = undefined as any;
    public readonly fabMoveAnimation: IAnimation<number> = undefined as any;
    public readonly fabMotionAnimator: IFloatingActionButtonAnimator =
        undefined as any;
    public readonly geometryNotifier: I_ScaffoldGeometryNotifier =
        undefined as any;
    public readonly currentController: IAnimationController = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        child?: IWidget | undefined;
        currentController: IAnimationController;
        fabMotionAnimator: IFloatingActionButtonAnimator;
        fabMoveAnimation: IAnimation<number>;
        geometryNotifier: I_ScaffoldGeometryNotifier;
    }) {
        flutter.material._floatingActionButtonTransition(this, props);
    }
    private readonly _dart_createState: () => I_FloatingActionButtonTransitionState =
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
    public createState(): I_FloatingActionButtonTransitionState {
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
