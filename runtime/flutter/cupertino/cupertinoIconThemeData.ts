import { IColor } from "../../dart/ui/color";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IBuildContext } from "../widgets/buildContext";
import { IIconThemeData } from "../widgets/iconThemeData";
declare const flutter: {
    cupertino: {
        cupertinoIconThemeData: (
            this: void,
            cupertinoIconThemeData: ICupertinoIconThemeData,
            props?: {
                color?: IColor | undefined;
                opacity?: number | undefined;
                size?: number | undefined;
            }
        ) => ICupertinoIconThemeData;
    };
};
export interface ICupertinoIconThemeData {
    color: IColor | undefined;
    size: number | undefined;
    resolve: (context: IBuildContext) => IIconThemeData;
    copyWith: (props?: {
        color?: IColor | undefined;
        opacity?: number | undefined;
        size?: number | undefined;
    }) => ICupertinoIconThemeData;
    debugFillProperties: (properties: IDiagnosticPropertiesBuilder) => void;
    toStringShort: () => string;
    toString: (props: { minLevel: DiagnosticLevel }) => string;
    toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode;
    merge: (other?: IIconThemeData | undefined) => IIconThemeData;
    getIsConcrete: () => boolean;
    getOpacity: () => number | undefined;
    getHashCode: () => number;
}
export class CupertinoIconThemeData
    implements Omit<IIconThemeData, "debugFillProperties">, IDiagnosticable
{
    public readonly color: IColor | undefined = undefined as any;
    public readonly size: number | undefined = undefined as any;
    public constructor(props?: {
        color?: IColor | undefined;
        opacity?: number | undefined;
        size?: number | undefined;
    }) {
        flutter.cupertino.cupertinoIconThemeData(this, props);
    }
    private readonly _dart_resolve: (context: IBuildContext) => IIconThemeData =
        undefined as any;
    private readonly _dart_copyWith: (props?: {
        color?: IColor | undefined;
        opacity?: number | undefined;
        size?: number | undefined;
    }) => ICupertinoIconThemeData = undefined as any;
    private readonly _dart_debugFillProperties: (
        properties: IDiagnosticPropertiesBuilder
    ) => void = undefined as any;
    private readonly _dart_toStringShort: () => string = undefined as any;
    private readonly _dart_toString: (props: {
        minLevel: DiagnosticLevel;
    }) => string = undefined as any;
    private readonly _dart_toDiagnosticsNode: (props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }) => IDiagnosticsNode = undefined as any;
    private readonly _dart_merge: (
        other?: IIconThemeData | undefined
    ) => IIconThemeData = undefined as any;
    private readonly _dart_getIsConcrete: () => boolean = undefined as any;
    private readonly _dart_getOpacity: () => number | undefined =
        undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public resolve(context: IBuildContext): IIconThemeData {
        return this._dart_resolve(context);
    }
    public copyWith(props?: {
        color?: IColor | undefined;
        opacity?: number | undefined;
        size?: number | undefined;
    }): ICupertinoIconThemeData {
        return this._dart_copyWith(props);
    }
    public debugFillProperties(properties: IDiagnosticPropertiesBuilder): void {
        return this._dart_debugFillProperties(properties);
    }
    public toStringShort(): string {
        return this._dart_toStringShort();
    }
    public toString(props: { minLevel?: DiagnosticLevel }): string {
        return this._dart_toString({
            ...toStringDefaultProps,
            ...props,
        });
    }
    public toDiagnosticsNode(props?: {
        name?: string | undefined;
        style?: DiagnosticsTreeStyle | undefined;
    }): IDiagnosticsNode {
        return this._dart_toDiagnosticsNode(props);
    }
    public merge(other?: IIconThemeData | undefined): IIconThemeData {
        return this._dart_merge(other);
    }
    public getIsConcrete(): boolean {
        return this._dart_getIsConcrete();
    }
    public getOpacity(): number | undefined {
        return this._dart_getOpacity();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const toStringDefaultProps = {
    minLevel: DiagnosticLevel.info,
};
