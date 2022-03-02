import { IDuration } from "../../dart/core/duration";
import { IList } from "../../dart/core/list";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Alignment } from "../painting/alignment";
import { IAlignmentGeometry } from "../painting/alignmentGeometry";
import { CrossFadeState } from "./crossFadeState";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        animatedCrossFade: (
            this: void,
            animatedCrossFade: IAnimatedCrossFade,
            props: {
                alignment: IAlignmentGeometry;
                firstCurve: ICurve;
                key?: IKey | undefined;
                layoutBuilder: (
                    topChild: IWidget,
                    topChildKey: IKey,
                    bottomChild: IWidget,
                    bottomChildKey: IKey
                ) => IWidget;
                reverseDuration?: IDuration | undefined;
                secondCurve: ICurve;
                sizeCurve: ICurve;
                crossFadeState: CrossFadeState;
                duration: IDuration;
                firstChild: IWidget;
                secondChild: IWidget;
            }
        ) => IAnimatedCrossFade;
        animatedCrossFadeDefaultLayoutBuilder: (
            topChild: IWidget,
            topChildKey: IKey,
            bottomChild: IWidget,
            bottomChildKey: IKey
        ) => IWidget;
    };
};
export interface IAnimatedCrossFade {
    firstChild: IWidget;
    secondChild: IWidget;
    crossFadeState: CrossFadeState;
    duration: IDuration;
    reverseDuration: IDuration | undefined;
    firstCurve: ICurve;
    secondCurve: ICurve;
    sizeCurve: ICurve;
    alignment: IAlignmentGeometry;
    key: IKey | undefined;
    createState: () => IState<IAnimatedCrossFade>;
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
export class AnimatedCrossFade implements IStatefulWidget, IDiagnosticable {
    public readonly firstChild: IWidget = undefined as any;
    public readonly secondChild: IWidget = undefined as any;
    public readonly crossFadeState: CrossFadeState = undefined as any;
    public readonly duration: IDuration = undefined as any;
    public readonly reverseDuration: IDuration | undefined = undefined as any;
    public readonly firstCurve: ICurve = undefined as any;
    public readonly secondCurve: ICurve = undefined as any;
    public readonly sizeCurve: ICurve = undefined as any;
    public readonly alignment: IAlignmentGeometry = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        alignment?: IAlignmentGeometry;
        firstCurve?: ICurve;
        key?: IKey | undefined;
        layoutBuilder: (
            topChild: IWidget,
            topChildKey: IKey,
            bottomChild: IWidget,
            bottomChildKey: IKey
        ) => IWidget;
        reverseDuration?: IDuration | undefined;
        secondCurve?: ICurve;
        sizeCurve?: ICurve;
        crossFadeState: CrossFadeState;
        duration: IDuration;
        firstChild: IWidget;
        secondChild: IWidget;
    }) {
        flutter.widgets.animatedCrossFade(this, {
            ...animatedCrossFadeDefaultProps,
            ...props,
        });
    }
    public static defaultLayoutBuilder(
        topChild: IWidget,
        topChildKey: IKey,
        bottomChild: IWidget,
        bottomChildKey: IKey
    ): IWidget {
        return flutter.widgets.animatedCrossFadeDefaultLayoutBuilder(
            topChild,
            topChildKey,
            bottomChild,
            bottomChildKey
        );
    }
    private readonly _dart_createState: () => IState<IAnimatedCrossFade> =
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
    public createState(): IState<IAnimatedCrossFade> {
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
const animatedCrossFadeDefaultProps = {
    alignment: Alignment.topCenter,
    firstCurve: Curves.linear,
    secondCurve: Curves.linear,
    sizeCurve: Curves.linear,
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
