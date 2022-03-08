import { IList } from "../../dart/core/list";
import { IColor } from "../../dart/ui/color";
import { ISize, Size } from "../../dart/ui/size";
import { IDiagnosticable } from "../foundation/diagnosticable";
import { DiagnosticLevel } from "../foundation/diagnosticLevel";
import { IDiagnosticPropertiesBuilder } from "../foundation/diagnosticPropertiesBuilder";
import { IDiagnosticsNode } from "../foundation/diagnosticsNode";
import { DiagnosticsTreeStyle } from "../foundation/diagnosticsTreeStyle";
import { IKey } from "../foundation/key";
import { IDecoration } from "../painting/decoration";
import { EdgeInsets } from "../painting/edgeInsets";
import { IEdgeInsetsGeometry } from "../painting/edgeInsetsGeometry";
import { IState } from "../widgets/state";
import { IStatefulElement } from "../widgets/statefulElement";
import { IStatefulWidget } from "../widgets/statefulWidget";
import { IWidget } from "../widgets/widget";
import { Colors } from "./colors";
declare const flutter: {
    material: {
        userAccountsDrawerHeader: (
            this: void,
            userAccountsDrawerHeader: IUserAccountsDrawerHeader,
            props: {
                arrowColor: IColor;
                currentAccountPicture?: IWidget | undefined;
                currentAccountPictureSize: ISize;
                decoration?: IDecoration | undefined;
                key?: IKey | undefined;
                margin?: IEdgeInsetsGeometry | undefined;
                onDetailsPressed?: () => void | undefined;
                otherAccountsPictures?: IList<IWidget> | undefined;
                otherAccountsPicturesSize: ISize;
                accountEmail?: IWidget | undefined;
                accountName?: IWidget | undefined;
            }
        ) => IUserAccountsDrawerHeader;
    };
};
export interface IUserAccountsDrawerHeader {
    decoration: IDecoration | undefined;
    margin: IEdgeInsetsGeometry | undefined;
    currentAccountPicture: IWidget | undefined;
    otherAccountsPictures: IList<IWidget> | undefined;
    currentAccountPictureSize: ISize;
    otherAccountsPicturesSize: ISize;
    accountName: IWidget | undefined;
    accountEmail: IWidget | undefined;
    arrowColor: IColor;
    key: IKey | undefined;
    createState: () => IState<IUserAccountsDrawerHeader>;
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
export class UserAccountsDrawerHeader
    implements IStatefulWidget, IDiagnosticable
{
    public readonly decoration: IDecoration | undefined = undefined as any;
    public readonly margin: IEdgeInsetsGeometry | undefined = undefined as any;
    public readonly currentAccountPicture: IWidget | undefined =
        undefined as any;
    public readonly otherAccountsPictures: IList<IWidget> | undefined =
        undefined as any;
    public readonly currentAccountPictureSize: ISize = undefined as any;
    public readonly otherAccountsPicturesSize: ISize = undefined as any;
    public readonly accountName: IWidget | undefined = undefined as any;
    public readonly accountEmail: IWidget | undefined = undefined as any;
    public readonly arrowColor: IColor = undefined as any;
    public readonly key: IKey | undefined = undefined as any;
    public constructor(props: {
        arrowColor?: IColor;
        currentAccountPicture?: IWidget | undefined;
        currentAccountPictureSize?: ISize;
        decoration?: IDecoration | undefined;
        key?: IKey | undefined;
        margin?: IEdgeInsetsGeometry | undefined;
        onDetailsPressed?: () => void | undefined;
        otherAccountsPictures?: IList<IWidget> | undefined;
        otherAccountsPicturesSize?: ISize;
        accountEmail?: IWidget | undefined;
        accountName?: IWidget | undefined;
    }) {
        flutter.material.userAccountsDrawerHeader(this, {
            ...userAccountsDrawerHeaderDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createState: () => IState<IUserAccountsDrawerHeader> =
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
    public createState(): IState<IUserAccountsDrawerHeader> {
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
const userAccountsDrawerHeaderDefaultProps = {
    arrowColor: Colors.white,
    currentAccountPictureSize: Size.square(72.0),
    margin: EdgeInsets.only(),
    otherAccountsPicturesSize: Size.square(40.0),
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
