import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { I_ModalBottomSheetRoute } from "./_modalBottomSheetRoute";
import { I_ModalBottomSheetState } from "./_modalBottomSheetState";
declare const flutter: {
    material: {
        _modalBottomSheet: <T>(
            this: void,
            _modalBottomSheet: I_ModalBottomSheet<T>,
            props: {
                backgroundColor?: IColor | undefined;
                clipBehavior?: Clip | undefined;
                constraints?: IBoxConstraints | undefined;
                elevation?: number | undefined;
                enableDrag: boolean;
                isScrollControlled: boolean;
                key?: IKey | undefined;
                route?: I_ModalBottomSheetRoute<T> | undefined;
                shape?: IShapeBorder | undefined;
            }
        ) => I_ModalBottomSheet<T>;
    };
};
export interface I_ModalBottomSheet<T> {
    route: I_ModalBottomSheetRoute<T> | undefined;
    isScrollControlled: boolean;
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    shape: IShapeBorder | undefined;
    clipBehavior: Clip | undefined;
    constraints: IBoxConstraints | undefined;
    enableDrag: boolean;
    key: IKey | undefined;
    createState: () => I_ModalBottomSheetState<T>;
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
export class _ModalBottomSheet<T> implements IStatefulWidget, IDiagnosticable {
    public readonly route: I_ModalBottomSheetRoute<T> | undefined =
        undefined as any;
    public readonly isScrollControlled: boolean = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly clipBehavior: Clip | undefined = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public readonly enableDrag: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        clipBehavior?: Clip | undefined;
        constraints?: IBoxConstraints | undefined;
        elevation?: number | undefined;
        enableDrag?: boolean;
        isScrollControlled?: boolean;
        key?: IKey | undefined;
        route?: I_ModalBottomSheetRoute<T> | undefined;
        shape?: IShapeBorder | undefined;
    }) {
        flutter.material._modalBottomSheet(this, {
            ..._modalBottomSheetDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => I_ModalBottomSheetState<T> =
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
    public createState(): I_ModalBottomSheetState<T> {
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
const _modalBottomSheetDefaultProps = {
    enableDrag: true,
    isScrollControlled: false,
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
