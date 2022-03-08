import { IIterable } from "../../dart/core/iterable";
import { List } from "../../dart/core/list";
import { IMap, Map } from "../../dart/core/map";
import { IMapEntry, MapEntry } from "../../dart/core/mapEntry";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { TargetPlatform } from "../foundation/targetPlatform";
import { IBuildContext } from "../widgets/buildContext";
import { IPageRoute } from "../widgets/pageRoute";
import { IWidget } from "../widgets/widget";
import { CupertinoPageTransitionsBuilder } from "./cupertinoPageTransitionsBuilder";
import { FadeUpwardsPageTransitionsBuilder } from "./fadeUpwardsPageTransitionsBuilder";
import { IPageTransitionsBuilder } from "./pageTransitionsBuilder";
declare const flutter: {
    material: {
        pageTransitionsTheme: (
            this: void,
            pageTransitionsTheme: IPageTransitionsTheme,
            props: { builders: IMap<TargetPlatform, IPageTransitionsBuilder> }
        ) => IPageTransitionsTheme;
    };
};
export interface IPageTransitionsTheme {
    getBuilders: () => IMap<TargetPlatform, IPageTransitionsBuilder>;
    buildTransitions: <T>(
        route: IPageRoute<T>,
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>,
        child: IWidget
    ) => IWidget;
    getHashCode: () => number;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
}
export class PageTransitionsTheme implements IDiagnosticable {
    public static _defaultBuilders = Map.fromEntries(
        <IIterable<IMapEntry<TargetPlatform, IPageTransitionsBuilder>>>(
            (<unknown>(
                List.fromArray([
                    new MapEntry(
                        TargetPlatform.android,
                        new FadeUpwardsPageTransitionsBuilder()
                    ),
                    new MapEntry(
                        TargetPlatform.iOS,
                        new CupertinoPageTransitionsBuilder()
                    ),
                    new MapEntry(
                        TargetPlatform.linux,
                        new FadeUpwardsPageTransitionsBuilder()
                    ),
                    new MapEntry(
                        TargetPlatform.macOS,
                        new CupertinoPageTransitionsBuilder()
                    ),
                    new MapEntry(
                        TargetPlatform.windows,
                        new FadeUpwardsPageTransitionsBuilder()
                    ),
                ])
            ))
        )
    );
    public constructor(props: {
        builders?: IMap<TargetPlatform, IPageTransitionsBuilder>;
    }) {
        flutter.material.pageTransitionsTheme(this, {
            ...pageTransitionsThemeDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getBuilders: () => IMap<
        TargetPlatform,
        IPageTransitionsBuilder
    > = undefined as any;
    private readonly _dart_buildTransitions: <T>(
        route: IPageRoute<T>,
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>,
        child: IWidget
    ) => IWidget = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    public getBuilders(): IMap<TargetPlatform, IPageTransitionsBuilder> {
        return this._dart_getBuilders();
    }
    public buildTransitions<T>(
        route: IPageRoute<T>,
        context: IBuildContext,
        animation: IAnimation<number>,
        secondaryAnimation: IAnimation<number>,
        child: IWidget
    ): IWidget {
        return this._dart_buildTransitions(
            route,
            context,
            animation,
            secondaryAnimation,
            child
        );
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
}
const pageTransitionsThemeDefaultProps = {
    builders: PageTransitionsTheme._defaultBuilders,
};
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
