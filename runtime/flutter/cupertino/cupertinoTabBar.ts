import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { Border, IBorder } from "../painting/border";
import { IBottomNavigationBarItem } from "../widgets/bottomNavigationBarItem";
import { IBuildContext } from "../widgets/buildContext";
import { IPreferredSizeWidget } from "../widgets/preferredSizeWidget";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    cupertino: {
        cupertinoTabBar: (
            this: void,
            cupertinoTabBar: ICupertinoTabBar,
            props: {
                activeColor?: IColor | undefined;
                backgroundColor?: IColor | undefined;
                border?: IBorder | undefined;
                currentIndex: number;
                iconSize: number;
                inactiveColor: IColor;
                key?: IKey | undefined;
                onTap?: (value: number) => void | undefined;
                items: IList<IBottomNavigationBarItem>;
            }
        ) => ICupertinoTabBar;
    };
};
export interface ICupertinoTabBar {
    items: IList<IBottomNavigationBarItem>;
    currentIndex: number;
    backgroundColor: IColor | undefined;
    activeColor: IColor | undefined;
    inactiveColor: IColor;
    iconSize: number;
    border: IBorder | undefined;
    key: IKey | undefined;
    getPreferredSize: () => ISize;
    opaque: (context: IBuildContext) => boolean;
    build: (context: IBuildContext) => IWidget;
    copyWith: (props?: {
        activeColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        border?: IBorder | undefined;
        currentIndex?: number | undefined;
        iconSize?: number | undefined;
        inactiveColor?: IColor | undefined;
        items?: IList<IBottomNavigationBarItem> | undefined;
        key?: IKey | undefined;
        onTap?: (value: number) => void | undefined;
    }) => ICupertinoTabBar;
    createElement: () => IStatelessElement;
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
export class CupertinoTabBar
    implements IStatelessWidget, IDiagnosticable, IPreferredSizeWidget, IWidget
{
    public readonly items: IList<IBottomNavigationBarItem> = undefined as any;
    public readonly currentIndex: number = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly activeColor: IColor | undefined = undefined as any;
    public readonly inactiveColor: IColor = undefined as any;
    public readonly iconSize: number = undefined as any;
    public readonly border: IBorder | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        activeColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        border?: IBorder | undefined;
        currentIndex?: number;
        iconSize?: number;
        inactiveColor: IColor;
        key?: IKey | undefined;
        onTap?: (value: number) => void | undefined;
        items: IList<IBottomNavigationBarItem>;
    }) {
        flutter.cupertino.cupertinoTabBar(this, {
            ...cupertinoTabBarDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getPreferredSize: () => ISize = undefined as any;
    private readonly _dart_opaque: (context: IBuildContext) => boolean =
        undefined as any;
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
    private readonly _dart_copyWith: (props?: {
        activeColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        border?: IBorder | undefined;
        currentIndex?: number | undefined;
        iconSize?: number | undefined;
        inactiveColor?: IColor | undefined;
        items?: IList<IBottomNavigationBarItem> | undefined;
        key?: IKey | undefined;
        onTap?: (value: number) => void | undefined;
    }) => ICupertinoTabBar = undefined as any;
    private readonly _dart_createElement: () => IStatelessElement =
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
    public getPreferredSize(): ISize {
        return this._dart_getPreferredSize();
    }
    public opaque(context: IBuildContext): boolean {
        return this._dart_opaque(context);
    }
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
    }
    public copyWith(props?: {
        activeColor?: IColor | undefined;
        backgroundColor?: IColor | undefined;
        border?: IBorder | undefined;
        currentIndex?: number | undefined;
        iconSize?: number | undefined;
        inactiveColor?: IColor | undefined;
        items?: IList<IBottomNavigationBarItem> | undefined;
        key?: IKey | undefined;
        onTap?: (value: number) => void | undefined;
    }): ICupertinoTabBar {
        return this._dart_copyWith(props);
    }
    public createElement(): IStatelessElement {
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
const cupertinoTabBarDefaultProps = {
    border: new Border(),
    currentIndex: 0,
    iconSize: 30.0,
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
