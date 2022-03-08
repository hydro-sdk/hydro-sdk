import { IList } from "../../dart/core/list";
import { IStackTrace } from "../../dart/core/stackTrace";
import { IColor } from "../../dart/ui/color";
import { ISize } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IImageProvider } from "../painting/imageProvider";
import { IMouseCursor } from "../services/mouseCursor";
import { IFocusNode } from "../widgets/focusNode";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IMaterialStateProperty } from "./materialStateProperty";
import { MaterialTapTargetSize } from "./materialTapTargetSize";
declare const flutter: {
    material: {
        _materialSwitch: (
            this: void,
            _materialSwitch: I_MaterialSwitch,
            props: {
                activeColor?: IColor | undefined;
                activeThumbImage?: IImageProvider<Object> | undefined;
                activeTrackColor?: IColor | undefined;
                autofocus: boolean;
                dragStartBehavior: DragStartBehavior;
                focusColor?: IColor | undefined;
                focusNode?: IFocusNode | undefined;
                hoverColor?: IColor | undefined;
                inactiveThumbColor?: IColor | undefined;
                inactiveThumbImage?: IImageProvider<Object> | undefined;
                inactiveTrackColor?: IColor | undefined;
                key?: IKey | undefined;
                materialTapTargetSize?: MaterialTapTargetSize | undefined;
                mouseCursor?: IMouseCursor | undefined;
                onActiveThumbImageError?: (
                    exception: Object,
                    stackTrace?: IStackTrace | undefined
                ) => void | undefined;
                onInactiveThumbImageError?: (
                    exception: Object,
                    stackTrace?: IStackTrace | undefined
                ) => void | undefined;
                overlayColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                splashRadius?: number | undefined;
                thumbColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                trackColor?:
                    | IMaterialStateProperty<IColor | undefined>
                    | undefined;
                onChanged?: (value: boolean) => void | undefined;
                size: ISize;
                value: boolean;
            }
        ) => I_MaterialSwitch;
    };
};
export interface I_MaterialSwitch {
    value: boolean;
    activeColor: IColor | undefined;
    activeTrackColor: IColor | undefined;
    inactiveThumbColor: IColor | undefined;
    inactiveTrackColor: IColor | undefined;
    activeThumbImage: IImageProvider<Object> | undefined;
    inactiveThumbImage: IImageProvider<Object> | undefined;
    thumbColor: IMaterialStateProperty<IColor | undefined> | undefined;
    trackColor: IMaterialStateProperty<IColor | undefined> | undefined;
    materialTapTargetSize: MaterialTapTargetSize | undefined;
    dragStartBehavior: DragStartBehavior;
    mouseCursor: IMouseCursor | undefined;
    focusColor: IColor | undefined;
    hoverColor: IColor | undefined;
    overlayColor: IMaterialStateProperty<IColor | undefined> | undefined;
    splashRadius: number | undefined;
    focusNode: IFocusNode | undefined;
    autofocus: boolean;
    size: ISize;
    key: IKey | undefined;
    createState: () => IState<IStatefulWidget>;
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
export class _MaterialSwitch implements IStatefulWidget, IDiagnosticable {
    public readonly value: boolean = undefined as any;
    public readonly activeColor: IColor | undefined = undefined as any;
    public readonly activeTrackColor: IColor | undefined = undefined as any;
    public readonly inactiveThumbColor: IColor | undefined = undefined as any;
    public readonly inactiveTrackColor: IColor | undefined = undefined as any;
    public readonly activeThumbImage: IImageProvider<Object> | undefined =
        undefined as any;
    public readonly inactiveThumbImage: IImageProvider<Object> | undefined =
        undefined as any;
    public readonly thumbColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly trackColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly materialTapTargetSize: MaterialTapTargetSize | undefined =
        undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly mouseCursor: IMouseCursor | undefined = undefined as any;
    public readonly focusColor: IColor | undefined = undefined as any;
    public readonly hoverColor: IColor | undefined = undefined as any;
    public readonly overlayColor:
        | IMaterialStateProperty<IColor | undefined>
        | undefined = undefined as any;
    public readonly splashRadius: number | undefined = undefined as any;
    public readonly focusNode: IFocusNode | undefined = undefined as any;
    public readonly autofocus: boolean = undefined as any;
    public readonly size: ISize = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        activeColor?: IColor | undefined;
        activeThumbImage?: IImageProvider<Object> | undefined;
        activeTrackColor?: IColor | undefined;
        autofocus?: boolean;
        dragStartBehavior?: DragStartBehavior;
        focusColor?: IColor | undefined;
        focusNode?: IFocusNode | undefined;
        hoverColor?: IColor | undefined;
        inactiveThumbColor?: IColor | undefined;
        inactiveThumbImage?: IImageProvider<Object> | undefined;
        inactiveTrackColor?: IColor | undefined;
        key?: IKey | undefined;
        materialTapTargetSize?: MaterialTapTargetSize | undefined;
        mouseCursor?: IMouseCursor | undefined;
        onActiveThumbImageError?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void | undefined;
        onInactiveThumbImageError?: (
            exception: Object,
            stackTrace?: IStackTrace | undefined
        ) => void | undefined;
        overlayColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        splashRadius?: number | undefined;
        thumbColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        trackColor?: IMaterialStateProperty<IColor | undefined> | undefined;
        onChanged?: (value: boolean) => void | undefined;
        size: ISize;
        value: boolean;
    }) {
        flutter.material._materialSwitch(this, {
            ..._materialSwitchDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IStatefulWidget> =
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
    public createState(): IState<IStatefulWidget> {
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
const _materialSwitchDefaultProps = {
    autofocus: false,
    dragStartBehavior: DragStartBehavior.start,
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
