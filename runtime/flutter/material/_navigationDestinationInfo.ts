import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBuildContext } from "../widgets/buildContext";
import { IInheritedElement } from "../widgets/inheritedElement";
import { IInheritedWidget } from "../widgets/inheritedWidget";
import { IWidget } from "../widgets/widget";
import { NavigationDestinationLabelBehavior } from "./navigationDestinationLabelBehavior";
declare const flutter: {
    material: {
        _navigationDestinationInfo: (
            this: void,
            _navigationDestinationInfo: I_NavigationDestinationInfo,
            props: {
                key?: IKey | undefined;
                child: IWidget;
                index: number;
                labelBehavior: NavigationDestinationLabelBehavior;
                onTap: () => void;
                selectedAnimation: IAnimation<number>;
                totalNumberOfDestinations: number;
            }
        ) => I_NavigationDestinationInfo;
        _navigationDestinationInfoOf: (
            context: IBuildContext
        ) => I_NavigationDestinationInfo;
    };
};
export interface I_NavigationDestinationInfo {
    index: number;
    totalNumberOfDestinations: number;
    selectedAnimation: IAnimation<number>;
    labelBehavior: NavigationDestinationLabelBehavior;
    child: IWidget;
    key: IKey | undefined;
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
export class _NavigationDestinationInfo
    implements IInheritedWidget, IDiagnosticable
{
    public readonly index: number = undefined as any;
    public readonly totalNumberOfDestinations: number = undefined as any;
    public readonly selectedAnimation: IAnimation<number> = undefined as any;
    public readonly labelBehavior: NavigationDestinationLabelBehavior =
        undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        child: IWidget;
        index: number;
        labelBehavior: NavigationDestinationLabelBehavior;
        onTap: () => void;
        selectedAnimation: IAnimation<number>;
        totalNumberOfDestinations: number;
    }) {
        flutter.material._navigationDestinationInfo(this, props);
    }
    public static of(context: IBuildContext): I_NavigationDestinationInfo {
        return flutter.material._navigationDestinationInfoOf(context);
    }
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
