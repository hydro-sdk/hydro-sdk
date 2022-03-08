import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { DragStartBehavior } from "../gestures/dragStartBehavior";
import { IGlobalKey } from "../widgets/globalKey";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { DrawerAlignment } from "./drawerAlignment";
import { IDrawerControllerState } from "./drawerControllerState";
declare const flutter: {
    material: {
        drawerController: (
            this: void,
            drawerController: IDrawerController,
            props: {
                dragStartBehavior: DragStartBehavior;
                drawerCallback?: (isOpened: boolean) => void | undefined;
                edgeDragWidth?: number | undefined;
                enableOpenDragGesture: boolean;
                isDrawerOpen: boolean;
                key?: IGlobalKey<IState<IStatefulWidget>> | undefined;
                scrimColor?: IColor | undefined;
                alignment: DrawerAlignment;
                child: IWidget;
            }
        ) => IDrawerController;
    };
};
export interface IDrawerController {
    child: IWidget;
    alignment: DrawerAlignment;
    dragStartBehavior: DragStartBehavior;
    scrimColor: IColor | undefined;
    enableOpenDragGesture: boolean;
    edgeDragWidth: number | undefined;
    isDrawerOpen: boolean;
    key: IKey | undefined;
    createState: () => IDrawerControllerState;
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
export class DrawerController implements IStatefulWidget, IDiagnosticable {
    public readonly child: IWidget = undefined as any;
    public readonly alignment: DrawerAlignment = undefined as any;
    public readonly dragStartBehavior: DragStartBehavior = undefined as any;
    public readonly scrimColor: IColor | undefined = undefined as any;
    public readonly enableOpenDragGesture: boolean = undefined as any;
    public readonly edgeDragWidth: number | undefined = undefined as any;
    public readonly isDrawerOpen: boolean = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        dragStartBehavior?: DragStartBehavior;
        drawerCallback?: (isOpened: boolean) => void | undefined;
        edgeDragWidth?: number | undefined;
        enableOpenDragGesture?: boolean;
        isDrawerOpen?: boolean;
        key?: IGlobalKey<IState<IStatefulWidget>> | undefined;
        scrimColor?: IColor | undefined;
        alignment: DrawerAlignment;
        child: IWidget;
    }) {
        flutter.material.drawerController(this, {
            ...drawerControllerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IDrawerControllerState =
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
    public createState(): IDrawerControllerState {
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
const drawerControllerDefaultProps = {
    dragStartBehavior: DragStartBehavior.start,
    enableOpenDragGesture: true,
    isDrawerOpen: false,
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
