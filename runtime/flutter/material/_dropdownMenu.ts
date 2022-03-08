import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
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
import { I_DropdownMenuState } from "./_dropdownMenuState";
import { I_DropdownRoute } from "./_dropdownRoute";
declare const flutter: {
    material: {
        _dropdownMenu: <T>(
            this: void,
            _dropdownMenu: I_DropdownMenu<T>,
            props: {
                borderRadius?: IBorderRadius | undefined;
                dropdownColor?: IColor | undefined;
                key?: IKey | undefined;
                padding?: IEdgeInsets | undefined;
                buttonRect: IRect;
                constraints: IBoxConstraints;
                enableFeedback: boolean;
                route: I_DropdownRoute<T>;
            }
        ) => I_DropdownMenu<T>;
    };
};
export interface I_DropdownMenu<T> {
    route: I_DropdownRoute<T>;
    padding: IEdgeInsets | undefined;
    buttonRect: IRect;
    constraints: IBoxConstraints;
    dropdownColor: IColor | undefined;
    enableFeedback: boolean;
    borderRadius: IBorderRadius | undefined;
    key: IKey | undefined;
    createState: () => I_DropdownMenuState<T>;
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
export class _DropdownMenu<T> implements IStatefulWidget, IDiagnosticable {
    public readonly route: I_DropdownRoute<T> = undefined as any;
    public readonly padding: IEdgeInsets | undefined = undefined as any;
    public readonly buttonRect: IRect = undefined as any;
    public readonly constraints: IBoxConstraints = undefined as any;
    public readonly dropdownColor: IColor | undefined = undefined as any;
    public readonly enableFeedback: boolean = undefined as any;
    public readonly borderRadius: IBorderRadius | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        borderRadius?: IBorderRadius | undefined;
        dropdownColor?: IColor | undefined;
        key?: IKey | undefined;
        padding?: IEdgeInsets | undefined;
        buttonRect: IRect;
        constraints: IBoxConstraints;
        enableFeedback: boolean;
        route: I_DropdownRoute<T>;
    }) {
        flutter.material._dropdownMenu(this, props);
    }
    private readonly _dart_createState: () => I_DropdownMenuState<T> =
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
    public createState(): I_DropdownMenuState<T> {
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
