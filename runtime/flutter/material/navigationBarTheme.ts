import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IInheritedElement } from "../widgets/inheritedElement";
import { IInheritedTheme } from "../widgets/inheritedTheme";
import { IWidget } from "../widgets/widget";
import { INavigationBarThemeData } from "./navigationBarThemeData";
declare const flutter: {
    material: {
        navigationBarTheme: (
            this: void,
            navigationBarTheme: INavigationBarTheme,
            props: {
                key?: IKey | undefined;
                child: IWidget;
                data: INavigationBarThemeData;
            }
        ) => INavigationBarTheme;
        navigationBarThemeOf: (
            context: IBuildContext
        ) => INavigationBarThemeData;
    };
};
export interface INavigationBarTheme {
    data: INavigationBarThemeData;
    child: IWidget;
    key: IKey | undefined;
    wrap: (context: IBuildContext, child: IWidget) => IWidget;
    updateShouldNotify: (oldWidget: unknown) => boolean;
    createElement: () => IInheritedElement;
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
export class NavigationBarTheme implements IInheritedTheme, IDiagnosticable {
    public readonly data: INavigationBarThemeData = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        child: IWidget;
        data: INavigationBarThemeData;
    }) {
        flutter.material.navigationBarTheme(this, props);
    }
    public static of(context: IBuildContext): INavigationBarThemeData {
        return flutter.material.navigationBarThemeOf(context);
    }
    private readonly _dart_wrap: (
        context: IBuildContext,
        child: IWidget
    ) => IWidget = undefined as any;
    private readonly _dart_updateShouldNotify: (oldWidget: any) => boolean =
        undefined as any;
    private readonly _dart_createElement: () => IInheritedElement =
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
    public wrap(context: IBuildContext, child: IWidget): IWidget {
        return this._dart_wrap(context, child);
    }
    public updateShouldNotify(oldWidget: any): boolean {
        return this._dart_updateShouldNotify(oldWidget);
    }
    public createElement(): IInheritedElement {
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
