import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Axis } from "../painting/axis";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IAnimatedListState } from "./animatedListState";
import { IBuildContext } from "./buildContext";
import { IScrollController } from "./scrollController";
import { IScrollPhysics } from "./scrollPhysics";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        animatedList: (
            this: void,
            animatedList: IAnimatedList,
            props: {
                clipBehavior: Clip;
                controller?: IScrollController | undefined;
                initialItemCount: number;
                key?: IKey | undefined;
                padding?: IEdgeInsetsGeometry | undefined;
                physics?: IScrollPhysics | undefined;
                primary?: boolean | undefined;
                reverse: boolean;
                scrollDirection: Axis;
                shrinkWrap: boolean;
                itemBuilder: (
                    context: IBuildContext,
                    index: number,
                    animation: IAnimation<number>
                ) => IWidget;
            }
        ) => IAnimatedList;
        animatedListOf: (context: IBuildContext) => IAnimatedListState;
        animatedListMaybeOf: (
            context: IBuildContext
        ) => IAnimatedListState | undefined;
    };
};
export interface IAnimatedList {
    initialItemCount: number;
    scrollDirection: Axis;
    reverse: boolean;
    controller: IScrollController | undefined;
    primary: boolean | undefined;
    physics: IScrollPhysics | undefined;
    shrinkWrap: boolean;
    padding: IEdgeInsetsGeometry | undefined;
    clipBehavior: Clip;
    key: IKey | undefined;
    createState: () => IAnimatedListState;
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
export class AnimatedList implements IStatefulWidget, IDiagnosticable {
    public readonly initialItemCount: number = undefined as any;
    public readonly scrollDirection: Axis = undefined as any;
    public readonly reverse: boolean = undefined as any;
    public readonly controller: IScrollController | undefined =
        undefined as any;
    public readonly primary: boolean | undefined = undefined as any;
    public readonly physics: IScrollPhysics | undefined = undefined as any;
    public readonly shrinkWrap: boolean = undefined as any;
    public readonly padding: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly clipBehavior: Clip = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        clipBehavior?: Clip;
        controller?: IScrollController | undefined;
        initialItemCount?: number;
        key?: IKey | undefined;
        padding?: IEdgeInsetsGeometry | undefined;
        physics?: IScrollPhysics | undefined;
        primary?: boolean | undefined;
        reverse?: boolean;
        scrollDirection?: Axis;
        shrinkWrap?: boolean;
        itemBuilder: (
            context: IBuildContext,
            index: number,
            animation: IAnimation<number>
        ) => IWidget;
    }) {
        flutter.widgets.animatedList(this, {
            ...animatedListDefaultProps,
            ...props,
        });
    }
    public static of(context: IBuildContext): IAnimatedListState {
        return flutter.widgets.animatedListOf(context);
    }
    public static maybeOf(
        context: IBuildContext
    ): IAnimatedListState | undefined {
        return flutter.widgets.animatedListMaybeOf(context);
    }
    private readonly _dart_createState: () => IAnimatedListState =
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
    public createState(): IAnimatedListState {
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
const animatedListDefaultProps = {
    clipBehavior: Clip.hardEdge,
    initialItemCount: 0,
    reverse: false,
    scrollDirection: Axis.vertical,
    shrinkWrap: false,
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
