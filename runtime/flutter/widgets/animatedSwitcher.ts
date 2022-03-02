import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        animatedSwitcher: (
            this: void,
            animatedSwitcher: IAnimatedSwitcher,
            props: {
                child?: IWidget | undefined;
                key?: IKey | undefined;
                layoutBuilder: (
                    currentChild: IWidget | undefined,
                    previousChildren: IList<IWidget>
                ) => IWidget;
                reverseDuration?: IDuration | undefined;
                switchInCurve: ICurve;
                switchOutCurve: ICurve;
                transitionBuilder: (
                    child: IWidget,
                    animation: IAnimation<number>
                ) => IWidget;
                duration: IDuration;
            }
        ) => IAnimatedSwitcher;
        animatedSwitcherDefaultTransitionBuilder: (
            child: IWidget,
            animation: IAnimation<number>
        ) => IWidget;
        animatedSwitcherDefaultLayoutBuilder: (
            currentChild: IWidget | undefined,
            previousChildren: IList<IWidget>
        ) => IWidget;
    };
};
export interface IAnimatedSwitcher {
    child: IWidget | undefined;
    duration: IDuration;
    reverseDuration: IDuration | undefined;
    switchInCurve: ICurve;
    switchOutCurve: ICurve;
    key: IKey | undefined;
    createState: () => IState<IAnimatedSwitcher>;
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
export class AnimatedSwitcher implements IStatefulWidget, IDiagnosticable {
    public readonly child: IWidget | undefined = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly reverseDuration: IDuration | undefined = undefined as any;
    public readonly switchInCurve: ICurve = undefined as any;
    public readonly switchOutCurve: ICurve = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        child?: IWidget | undefined;
        key?: IKey | undefined;
        layoutBuilder?: (
            currentChild: IWidget | undefined,
            previousChildren: IList<IWidget>
        ) => IWidget;
        reverseDuration?: IDuration | undefined;
        switchInCurve?: ICurve;
        switchOutCurve?: ICurve;
        transitionBuilder?: (
            child: IWidget,
            animation: IAnimation<number>
        ) => IWidget;
        duration: IDuration;
    }) {
        flutter.widgets.animatedSwitcher(this, {
            ...animatedSwitcherDefaultProps,
            ...props,
        });
    }
    public static defaultTransitionBuilder(
        child: IWidget,
        animation: IAnimation<number>
    ): IWidget {
        return flutter.widgets.animatedSwitcherDefaultTransitionBuilder(
            child,
            animation
        );
    }
    public static defaultLayoutBuilder(
        currentChild: IWidget | undefined,
        previousChildren: IList<IWidget>
    ): IWidget {
        return flutter.widgets.animatedSwitcherDefaultLayoutBuilder(
            currentChild,
            previousChildren
        );
    }
    private readonly _dart_createState: () => IState<IAnimatedSwitcher> =
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
    public createState(): IState<IAnimatedSwitcher> {
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
const animatedSwitcherDefaultProps = {
    layoutBuilder: AnimatedSwitcher.defaultLayoutBuilder,
    switchInCurve: Curves.linear,
    switchOutCurve: Curves.linear,
    transitionBuilder: AnimatedSwitcher.defaultTransitionBuilder,
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
