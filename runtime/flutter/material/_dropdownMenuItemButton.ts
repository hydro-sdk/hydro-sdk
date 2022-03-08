import { IList } from "../../dart/core/list";
import { IRect } from "../../dart/ui/rect";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IBorderRadius } from "../painting/borderRadius";
import { IEdgeInsets } from "../painting/edgeInsets";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { I_DropdownMenuItemButtonState } from "./_dropdownMenuItemButtonState";
import { I_DropdownRoute } from "./_dropdownRoute";
declare const flutter: {
    material: {
        _dropdownMenuItemButton: <T>(
            this: void,
            _dropdownMenuItemButton: I_DropdownMenuItemButton<T>,
            props: {
                key?: IKey | undefined;
                padding?: IEdgeInsets | undefined;
                borderRadius: IBorderRadius;
                buttonRect: IRect;
                constraints: IBoxConstraints;
                enableFeedback: boolean;
                itemIndex: number;
                route: I_DropdownRoute<T>;
            }
        ) => I_DropdownMenuItemButton<T>;
    };
};
export interface I_DropdownMenuItemButton<T> {
    route: I_DropdownRoute<T>;
    padding: IEdgeInsets | undefined;
    buttonRect: IRect;
    constraints: IBoxConstraints;
    itemIndex: number;
    enableFeedback: boolean;
    borderRadius: IBorderRadius;
    key: IKey | undefined;
    createState: () => I_DropdownMenuItemButtonState<T>;
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
export class _DropdownMenuItemButton<T>
    implements IStatefulWidget, IDiagnosticable
{
    public readonly route: I_DropdownRoute<T> = undefined as any;
    public readonly padding: IEdgeInsets | undefined = undefined as any;
    public readonly buttonRect: IRect = undefined as any;
    public readonly constraints: IBoxConstraints = undefined as any;
    public readonly itemIndex: number = undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public readonly borderRadius: IBorderRadius = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        padding?: IEdgeInsets | undefined;
        borderRadius: IBorderRadius;
        buttonRect: IRect;
        constraints: IBoxConstraints;
        enableFeedback: boolean;
        itemIndex: number;
        route: I_DropdownRoute<T>;
    }) {
        flutter.material._dropdownMenuItemButton(this, props);
    }
    private readonly _dart_createState: () => I_DropdownMenuItemButtonState<T> =
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
    public createState(): I_DropdownMenuItemButtonState<T> {
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
