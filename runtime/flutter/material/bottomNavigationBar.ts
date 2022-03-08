import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { ITextStyle } from "../painting/textStyle";
import { IMouseCursor } from "../services/mouseCursor";
import { IBottomNavigationBarItem } from "../widgets/bottomNavigationBarItem";
import { IIconThemeData } from "../widgets/iconThemeData";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { BottomNavigationBarLandscapeLayout } from "./bottomNavigationBarLandscapeLayout";
import { BottomNavigationBarType } from "./bottomNavigationBarType";
declare const flutter: {
    material: {
        bottomNavigationBar: (
            this: void,
            bottomNavigationBar: IBottomNavigationBar,
            props: {
                backgroundColor?: IColor | undefined;
                currentIndex: number;
                elevation?: number | undefined;
                enableFeedback?: boolean | undefined;
                fixedColor?: IColor | undefined;
                iconSize: number;
                key?: IKey | undefined;
                landscapeLayout?:
                    | BottomNavigationBarLandscapeLayout
                    | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onTap?: (value: number) => void | undefined;
                selectedFontSize: number;
                selectedIconTheme?: IIconThemeData | undefined;
                selectedItemColor?: IColor | undefined;
                selectedLabelStyle?: ITextStyle | undefined;
                showSelectedLabels?: boolean | undefined;
                showUnselectedLabels?: boolean | undefined;
                type?: BottomNavigationBarType | undefined;
                unselectedFontSize: number;
                unselectedIconTheme?: IIconThemeData | undefined;
                unselectedItemColor?: IColor | undefined;
                unselectedLabelStyle?: ITextStyle | undefined;
                items: IList<IBottomNavigationBarItem>;
            }
        ) => IBottomNavigationBar;
    };
};
export interface IBottomNavigationBar {
    items: IList<IBottomNavigationBarItem>;
    currentIndex: number;
    elevation: number | undefined;
    type: BottomNavigationBarType | undefined;
    backgroundColor: IColor | undefined;
    iconSize: number;
    selectedItemColor: IColor | undefined;
    unselectedItemColor: IColor | undefined;
    selectedIconTheme: IIconThemeData | undefined;
    unselectedIconTheme: IIconThemeData | undefined;
    selectedLabelStyle: ITextStyle | undefined;
    unselectedLabelStyle: ITextStyle | undefined;
    selectedFontSize: number;
    unselectedFontSize: number;
    showUnselectedLabels: boolean | undefined;
    showSelectedLabels: boolean | undefined;
    mouseCursor: IMouseCursor | undefined;
    enableFeedback: boolean | undefined;
    landscapeLayout: BottomNavigationBarLandscapeLayout | undefined;
    key: IKey | undefined;
    getFixedColor: () => IColor | undefined;
    createState: () => IState<IBottomNavigationBar>;
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
export class BottomNavigationBar implements IStatefulWidget, IDiagnosticable {
    public readonly items: IList<IBottomNavigationBarItem> = undefined as any;
    public readonly currentIndex: number = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly type: BottomNavigationBarType | undefined =
        undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly iconSize: number = undefined as any;
    public readonly selectedItemColor: IColor | undefined = undefined as any;
    public readonly unselectedItemColor: IColor | undefined = undefined as any;
    public readonly selectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly unselectedIconTheme: IIconThemeData | undefined =
        undefined as any;
    public readonly selectedLabelStyle: ITextStyle | undefined =
        undefined as any;
    public readonly unselectedLabelStyle: ITextStyle | undefined =
        undefined as any;
    public readonly selectedFontSize: number = undefined as any;
    public readonly unselectedFontSize: number = undefined as any;
    public readonly showUnselectedLabels: boolean | undefined =
        undefined as any;
    public readonly showSelectedLabels: boolean | undefined = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly enableFeedback: boolean | undefined = undefined as any;
    public readonly landscapeLayout:
        | BottomNavigationBarLandscapeLayout
        | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        currentIndex?: number;
        elevation?: number | undefined;
        enableFeedback?: boolean | undefined;
        fixedColor?: IColor | undefined;
        iconSize?: number;
        key?: IKey | undefined;
        landscapeLayout?: BottomNavigationBarLandscapeLayout | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onTap?: (value: number) => void | undefined;
        selectedFontSize?: number;
        selectedIconTheme?: IIconThemeData | undefined;
        selectedItemColor?: IColor | undefined;
        selectedLabelStyle?: ITextStyle | undefined;
        showSelectedLabels?: boolean | undefined;
        showUnselectedLabels?: boolean | undefined;
        type?: BottomNavigationBarType | undefined;
        unselectedFontSize?: number;
        unselectedIconTheme?: IIconThemeData | undefined;
        unselectedItemColor?: IColor | undefined;
        unselectedLabelStyle?: ITextStyle | undefined;
        items: IList<IBottomNavigationBarItem>;
    }) {
        flutter.material.bottomNavigationBar(this, {
            ...bottomNavigationBarDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getFixedColor: () => IColor | undefined =
        undefined as any;
    private readonly _dart_createState: () => IState<IBottomNavigationBar> =
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
    public getFixedColor(): IColor | undefined {
        return this._dart_getFixedColor();
    }
    public createState(): IState<IBottomNavigationBar> {
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
const bottomNavigationBarDefaultProps = {
    currentIndex: 0,
    iconSize: 24.0,
    selectedFontSize: 14.0,
    unselectedFontSize: 12.0,
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
