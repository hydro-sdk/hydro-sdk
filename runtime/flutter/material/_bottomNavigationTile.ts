import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { IColorTween } from "../animation/colorTween";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextStyle } from "../painting/textStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { IBottomNavigationBarItem } from "../widgets/bottomNavigationBarItem";
import { IBuildContext } from "../widgets/buildContext";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IStatelessElement } from "../widgets/statelessElement";
import { IStatelessWidget } from "../widgets/statelessWidget";
import { IWidget } from "../widgets/widget";
import { BottomNavigationBarLandscapeLayout } from "./bottomNavigationBarLandscapeLayout";
import { BottomNavigationBarType } from "./bottomNavigationBarType";
declare const flutter: {
    material: {
        _bottomNavigationTile: (
            this: void,
            _bottomNavigationTile: I_BottomNavigationTile,
            type: BottomNavigationBarType,
            item: IBottomNavigationBarItem,
            animation: IAnimation<number>,
            iconSize: number,
            props: {
                colorTween?: IColorTween | undefined;
                flex?: number | undefined;
                indexLabel?: string | undefined;
                onTap?: () => void | undefined;
                selected: boolean;
                enableFeedback: boolean;
                layout: BottomNavigationBarLandscapeLayout;
                mouseCursor: IMouseCursor;
                selectedIconTheme?: IIconThemeData | undefined;
                selectedLabelStyle: ITextStyle;
                showSelectedLabels: boolean;
                showUnselectedLabels: boolean;
                unselectedIconTheme?: IIconThemeData | undefined;
                unselectedLabelStyle: ITextStyle;
            }
        ) => I_BottomNavigationTile;
    };
};
export interface I_BottomNavigationTile {
    type: BottomNavigationBarType;
    item: IBottomNavigationBarItem;
    animation: IAnimation<number>;
    iconSize: number;
    colorTween: IColorTween | undefined;
    flex: number | undefined;
    selected: boolean;
    selectedIconTheme: IIconThemeData | undefined;
    unselectedIconTheme: IIconThemeData | undefined;
    selectedLabelStyle: ITextStyle;
    unselectedLabelStyle: ITextStyle;
    indexLabel: string | undefined;
    showSelectedLabels: boolean;
    showUnselectedLabels: boolean;
    mouseCursor: IMouseCursor;
    enableFeedback: boolean;
    layout: BottomNavigationBarLandscapeLayout;
    key: IKey | undefined;
    build: (context: IBuildContext) => IWidget;
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
export class _BottomNavigationTile
    implements IStatelessWidget, IDiagnosticable
{
    public readonly type: BottomNavigationBarType = undefined as any;
    public readonly item: IBottomNavigationBarItem = undefined as any;
    public readonly animation: IAnimation<number> = undefined as any;
    public readonly iconSize: number = undefined as any;
    public readonly colorTween: IColorTween | undefined = undefined as any;
    public readonly flex: number | undefined = undefined as any;
    public readonly selected: boolean = undefined as any;
    public readonly selectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly unselectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly selectedLabelStyle: ITextStyle = undefined as any;
    public readonly unselectedLabelStyle: ITextStyle = undefined as any;
    public readonly indexLabel: string | undefined = undefined as any;
    public readonly showSelectedLabels: boolean = undefined as any;
    public readonly showUnselectedLabels: boolean = undefined as any;
    public readonly mouseCursor: IMouseCursor = undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public readonly layout: BottomNavigationBarLandscapeLayout =
        undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(
        type: BottomNavigationBarType,
        item: IBottomNavigationBarItem,
        animation: IAnimation<number>,
        iconSize: number,
        props: {
            colorTween?: IColorTween | undefined;
            flex?: number | undefined;
            indexLabel?: string | undefined;
            onTap?: () => void | undefined;
            selected?: boolean;
            enableFeedback: boolean;
            layout: BottomNavigationBarLandscapeLayout;
            mouseCursor: IMouseCursor;
            selectedIconTheme?: IIconThemeData | undefined;
            selectedLabelStyle: ITextStyle;
            showSelectedLabels: boolean;
            showUnselectedLabels: boolean;
            unselectedIconTheme?: IIconThemeData | undefined;
            unselectedLabelStyle: ITextStyle;
        }
    ) {
        flutter.material._bottomNavigationTile(
            this,
            type,
            item,
            animation,
            iconSize,
            {
                ..._bottomNavigationTileDefaultProps,
                ...props,
            }
        );
    }
    private readonly _dart_build: (context: IBuildContext) => IWidget =
        undefined as any;
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
    public build(context: IBuildContext): IWidget {
        return this._dart_build(context);
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
const _bottomNavigationTileDefaultProps = {
    selected: false,
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
