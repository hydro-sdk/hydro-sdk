import { IList } from "../../dart/core/list";
import { IRect } from "../../dart/ui/rect";
import { ISize } from "../../dart/ui/size";
import { IAnimation } from "../animation/animation";
import { ITween } from "../animation/tween";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "./buildContext";
import { HeroFlightDirection } from "./heroFlightDirection";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        hero: (
            this: void,
            hero: IHero,
            props: {
                createRectTween?: (
                    begin?: IRect | undefined,
                    end?: IRect | undefined
                ) => ITween<IRect | undefined> | undefined;
                flightShuttleBuilder?: (
                    flightContext: IBuildContext,
                    animation: IAnimation<number>,
                    flightDirection: HeroFlightDirection,
                    fromHeroContext: IBuildContext,
                    toHeroContext: IBuildContext
                ) => IWidget | undefined;
                key?: IKey | undefined;
                placeholderBuilder?: (
                    context: IBuildContext,
                    heroSize: ISize,
                    child: IWidget
                ) => IWidget | undefined;
                transitionOnUserGestures: boolean;
                child: IWidget;
                tag: Object;
            }
        ) => IHero;
    };
};
export interface IHero {
    tag: Object;
    child: IWidget;
    transitionOnUserGestures: boolean;
    key: IKey | undefined;
    createState: () => IState<IHero>;
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
export class Hero implements IStatefulWidget, IDiagnosticable {
    public readonly tag: Object = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly transitionOnUserGestures: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        createRectTween?: (
            begin?: IRect | undefined,
            end?: IRect | undefined
        ) => ITween<IRect | undefined> | undefined;
        flightShuttleBuilder?: (
            flightContext: IBuildContext,
            animation: IAnimation<number>,
            flightDirection: HeroFlightDirection,
            fromHeroContext: IBuildContext,
            toHeroContext: IBuildContext
        ) => IWidget | undefined;
        key?: IKey | undefined;
        placeholderBuilder?: (
            context: IBuildContext,
            heroSize: ISize,
            child: IWidget
        ) => IWidget | undefined;
        transitionOnUserGestures?: boolean;
        child: IWidget;
        tag: Object;
    }) {
        flutter.widgets.hero(this, {
            ...heroDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IHero> = undefined as any;
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
    public createState(): IState<IHero> {
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
const heroDefaultProps = {
    transitionOnUserGestures: false,
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
