import { IList } from "../../dart/core/list";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { HitTestBehavior } from "../rendering/hitTestBehavior";
import { IBuildContext } from "./buildContext";
import { IDragTargetDetails } from "./dragTargetDetails";
import { IState } from "./state";
import { IStatefulElement } from "./statefulElement";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        dragTarget: <T>(
            this: void,
            dragTarget: IDragTarget<T>,
            props: {
                hitTestBehavior: HitTestBehavior;
                key?: IKey | undefined;
                onAccept?: (data: T) => void | undefined;
                onAcceptWithDetails?: (
                    details: IDragTargetDetails<T>
                ) => void | undefined;
                onLeave?: (data?: T | undefined) => void | undefined;
                onMove?: (details: IDragTargetDetails<T>) => void | undefined;
                onWillAccept?: (data?: T | undefined) => boolean | undefined;
                builder: (
                    context: IBuildContext,
                    candidateData: IList<T | undefined>,
                    rejectedData: IList<any>
                ) => IWidget;
            }
        ) => IDragTarget<T>;
    };
};
export interface IDragTarget<T> {
    hitTestBehavior: HitTestBehavior;
    key: IKey | undefined;
    createState: () => IState<IDragTarget<T>>;
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
export class DragTarget<T> implements IStatefulWidget, IDiagnosticable {
    public readonly hitTestBehavior: HitTestBehavior = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        hitTestBehavior?: HitTestBehavior;
        key?: IKey | undefined;
        onAccept?: (data: T) => void | undefined;
        onAcceptWithDetails?: (
            details: IDragTargetDetails<T>
        ) => void | undefined;
        onLeave?: (data?: T | undefined) => void | undefined;
        onMove?: (details: IDragTargetDetails<T>) => void | undefined;
        onWillAccept?: (data?: T | undefined) => boolean | undefined;
        builder: (
            context: IBuildContext,
            candidateData: IList<T | undefined>,
            rejectedData: IList<any>
        ) => IWidget;
    }) {
        flutter.widgets.dragTarget(this, {
            ...dragTargetDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IDragTarget<T>> =
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
    public createState(): IState<IDragTarget<T>> {
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
const dragTargetDefaultProps = {
    hitTestBehavior: HitTestBehavior.translucent,
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
