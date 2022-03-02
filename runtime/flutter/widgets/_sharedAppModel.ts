import { IList } from "../../dart/core/list";
import { IMap } from "../../dart/core/map";
import { ISet } from "../../dart/core/set";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { I_SharedAppDataState } from "./_sharedAppDataState";
import { IInheritedModel } from "./inheritedModel";
import { IInheritedModelElement } from "./inheritedModelElement";
import { IWidget } from "./widget";
declare const flutter: {
    widgets: {
        _sharedAppModel: (
            this: void,
            _sharedAppModel: I_SharedAppModel,
            props: {
                key?: IKey | undefined;
                child: IWidget;
                sharedAppDataState: I_SharedAppDataState;
            }
        ) => I_SharedAppModel;
    };
};
export interface I_SharedAppModel {
    sharedAppDataState: I_SharedAppDataState;
    data: IMap<Object, Object | undefined>;
    child: IWidget;
    key: IKey | undefined;
    updateShouldNotify: (old: unknown) => boolean;
    updateShouldNotifyDependent: (old: unknown, keys: ISet<Object>) => boolean;
    createElement: () => IInheritedModelElement<Object>;
    isSupportedAspect: (aspect: Object) => boolean;
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
export class _SharedAppModel
    implements IInheritedModel<Object>, IDiagnosticable
{
    public readonly sharedAppDataState: I_SharedAppDataState = undefined as any;
    public readonly data: IMap<Object, Object | undefined> = undefined as any;
    public readonly child: IWidget = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        key?: IKey | undefined;
        child: IWidget;
        sharedAppDataState: I_SharedAppDataState;
    }) {
        flutter.widgets._sharedAppModel(this, props);
    }
    private readonly _dart_updateShouldNotify: (old: any) => boolean =
        undefined as any;
    private readonly _dart_updateShouldNotifyDependent: (
        old: any,
        keys: ISet<Object>
    ) => boolean = undefined as any;
    private readonly _dart_createElement: () => IInheritedModelElement<Object> =
        undefined as any;
    private readonly _dart_isSupportedAspect: (aspect: Object) => boolean =
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
    public updateShouldNotify(old: any): boolean {
        return this._dart_updateShouldNotify(old);
    }
    public updateShouldNotifyDependent(old: any, keys: ISet<Object>): boolean {
        return this._dart_updateShouldNotifyDependent(old, keys);
    }
    public createElement(): IInheritedModelElement<Object> {
        return this._dart_createElement();
    }
    public isSupportedAspect(aspect: Object): boolean {
        return this._dart_isSupportedAspect(aspect);
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
