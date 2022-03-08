import { IList } from "../../dart/core/list";
import { IAnimation } from "../animation/animation";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IShapeBorder } from "../painting/shapeBorder";
import { IRenderObject } from "../rendering/renderObject";
import { IBuildContext } from "../widgets/buildContext";
import { IRenderObjectElement } from "../widgets/renderObjectElement";
import { IRenderObjectWidget } from "../widgets/renderObjectWidget";
import { I_ChipRenderTheme } from "./_chipRenderTheme";
import { I_RenderChip } from "./_renderChip";
import { I_RenderChipElement } from "./_renderChipElement";
declare const flutter: {
    material: {
        _chipRenderWidget: (
            this: void,
            _chipRenderWidget: I_ChipRenderWidget,
            props: {
                avatarBorder?: IShapeBorder | undefined;
                isEnabled?: boolean | undefined;
                key?: IKey | undefined;
                value?: boolean | undefined;
                avatarDrawerAnimation: IAnimation<number>;
                checkmarkAnimation: IAnimation<number>;
                deleteDrawerAnimation: IAnimation<number>;
                enableAnimation: IAnimation<number>;
                theme: I_ChipRenderTheme;
            }
        ) => I_ChipRenderWidget;
    };
};
export interface I_ChipRenderWidget {
    theme: I_ChipRenderTheme;
    value: boolean | undefined;
    isEnabled: boolean | undefined;
    checkmarkAnimation: IAnimation<number>;
    avatarDrawerAnimation: IAnimation<number>;
    deleteDrawerAnimation: IAnimation<number>;
    enableAnimation: IAnimation<number>;
    avatarBorder: IShapeBorder | undefined;
    key: IKey | undefined;
    createElement: () => I_RenderChipElement;
    updateRenderObject: (context: IBuildContext, renderObject: unknown) => void;
    createRenderObject: (context: IBuildContext) => IRenderObject;
    didUnmountRenderObject: (renderObject: unknown) => void;
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
export class _ChipRenderWidget implements IRenderObjectWidget, IDiagnosticable {
    public readonly theme: I_ChipRenderTheme = undefined as any;
    public readonly value: boolean | undefined = undefined as any;
    public readonly isEnabled: boolean | undefined = undefined as any;
    public readonly checkmarkAnimation: IAnimation<number> = undefined as any;
    public readonly avatarDrawerAnimation: IAnimation<number> =
        undefined as any;
    public readonly deleteDrawerAnimation: IAnimation<number> =
        undefined as any;
    public readonly enableAnimation: IAnimation<number> = undefined as any;
    public readonly avatarBorder: IShapeBorder | undefined = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        avatarBorder?: IShapeBorder | undefined;
        isEnabled?: boolean | undefined;
        key?: IKey | undefined;
        value?: boolean | undefined;
        avatarDrawerAnimation: IAnimation<number>;
        checkmarkAnimation: IAnimation<number>;
        deleteDrawerAnimation: IAnimation<number>;
        enableAnimation: IAnimation<number>;
        theme: I_ChipRenderTheme;
    }) {
        flutter.material._chipRenderWidget(this, props);
    }
    private readonly _dart_createElement: () => I_RenderChipElement =
        undefined as any;
    private readonly _dart_updateRenderObject: (
        context: IBuildContext,
        renderObject: any
    ) => void = undefined as any;
    private readonly _dart_createRenderObject: (
        context: IBuildContext
    ) => IRenderObject = undefined as any;
    private readonly _dart_didUnmountRenderObject: (renderObject: any) => void =
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
    public createElement(): I_RenderChipElement {
        return this._dart_createElement();
    }
    public updateRenderObject(context: IBuildContext, renderObject: any): void {
        return this._dart_updateRenderObject(context, renderObject);
    }
    public createRenderObject(context: IBuildContext): IRenderObject {
        return this._dart_createRenderObject(context);
    }
    public didUnmountRenderObject(renderObject: any): void {
        return this._dart_didUnmountRenderObject(renderObject);
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
