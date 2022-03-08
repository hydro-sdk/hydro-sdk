import { IList } from "../../dart/core/list";
import { Clip } from "../../dart/ui/clip";
import { IColor } from "../../dart/ui/color";
import { IAnimationController } from "../animation/animationController";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IShapeBorder } from "../painting/shapeBorder";
import { IBoxConstraints } from "../rendering/boxConstraints";
import { IBuildContext } from "../widgets/buildContext";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { I_StandardBottomSheetState } from "./_standardBottomSheetState";
declare const flutter: {
    material: {
        _standardBottomSheet: (
            this: void,
            _standardBottomSheet: I_StandardBottomSheet,
            props: {
                backgroundColor?: IColor | undefined;
                clipBehavior?: Clip | undefined;
                constraints?: IBoxConstraints | undefined;
                elevation?: number | undefined;
                enableDrag: boolean;
                isPersistent: boolean;
                key?: IKey | undefined;
                onDispose?: () => void | undefined;
                shape?: IShapeBorder | undefined;
                animationController: IAnimationController;
                builder: (context: IBuildContext) => IWidget;
                onClosing?: () => void | undefined;
                onDismissed?: () => void | undefined;
            }
        ) => I_StandardBottomSheet;
    };
};
export interface I_StandardBottomSheet {
    animationController: IAnimationController;
    enableDrag: boolean;
    isPersistent: boolean;
    backgroundColor: IColor | undefined;
    elevation: number | undefined;
    shape: IShapeBorder | undefined;
    clipBehavior: Clip | undefined;
    constraints: IBoxConstraints | undefined;
    key: IKey | undefined;
    createState: () => I_StandardBottomSheetState;
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
export class _StandardBottomSheet implements IStatefulWidget, IDiagnosticable {
    public readonly animationController: IAnimationController =
        undefined as any;
    public readonly enableDrag: boolean = undefined as any;
    public readonly isPersistent: boolean = undefined as any;
    public readonly backgroundColor: IColor | undefined = undefined as any;
    public readonly elevation: number | undefined = undefined as any;
    public readonly shape: IShapeBorder | undefined = undefined as any;
    public readonly clipBehavior: Clip | undefined = undefined as any;
    public readonly constraints: IBoxConstraints | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        backgroundColor?: IColor | undefined;
        clipBehavior?: Clip | undefined;
        constraints?: IBoxConstraints | undefined;
        elevation?: number | undefined;
        enableDrag?: boolean;
        isPersistent?: boolean;
        key?: IKey | undefined;
        onDispose?: () => void | undefined;
        shape?: IShapeBorder | undefined;
        animationController: IAnimationController;
        builder: (context: IBuildContext) => IWidget;
        onClosing?: () => void | undefined;
        onDismissed?: () => void | undefined;
    }) {
        flutter.material._standardBottomSheet(this, {
            ..._standardBottomSheetDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => I_StandardBottomSheetState =
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
    public createState(): I_StandardBottomSheetState {
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
const _standardBottomSheetDefaultProps = {
    enableDrag: true,
    isPersistent: false,
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
