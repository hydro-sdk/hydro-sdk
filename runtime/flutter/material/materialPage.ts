import { ILocalKey } from "../foundation/localKey";
import { IBuildContext } from "../widgets/buildContext";
import { IPage } from "../widgets/page";
import { IRoute } from "../widgets/route";
import { IRouteSettings } from "../widgets/routeSettings";
import { IWidget } from "../widgets/widget";
declare const flutter: {
    material: {
        materialPage: <T>(
            this: void,
            materialPage: IMaterialPage<T>,
            props: {
                arguments?: Object | undefined;
                fullscreenDialog: boolean;
                key?: ILocalKey | undefined;
                maintainState: boolean;
                name?: string | undefined;
                restorationId?: string | undefined;
                child: IWidget;
            }
        ) => IMaterialPage<T>;
    };
};
export interface IMaterialPage<T> {
    child: IWidget;
    maintainState: boolean;
    fullscreenDialog: boolean;
    key: ILocalKey | undefined;
    restorationId: string | undefined;
    name: string | undefined;
    arguments: Object | undefined;
    createRoute: (context: IBuildContext) => IRoute<T>;
    canUpdate: (other: IPage<any>) => boolean;
    toString: () => string;
    copyWith: (props?: {
        arguments?: Object | undefined;
        name?: string | undefined;
    }) => IRouteSettings;
    getHashCode: () => number;
}
export class MaterialPage<T> implements IPage<T> {
    public readonly child: IWidget = undefined as any;
    public readonly maintainState: boolean = undefined as any;
    public readonly fullscreenDialog: boolean = undefined as any;
    public readonly key: ILocalKey | undefined = undefined as any;
    public readonly restorationId: string | undefined = undefined as any;
    public readonly name: string | undefined = undefined as any;
    public readonly arguments: Object | undefined = undefined as any;
    public constructor(props: {
        arguments?: Object | undefined;
        fullscreenDialog?: boolean;
        key?: ILocalKey | undefined;
        maintainState?: boolean;
        name?: string | undefined;
        restorationId?: string | undefined;
        child: IWidget;
    }) {
        flutter.material.materialPage(this, {
            ...materialPageDefaultProps,
            ...props,
        });
    }
    private readonly _dart_createRoute: (context: IBuildContext) => IRoute<T> =
        undefined as any;
    private readonly _dart_canUpdate: (other: IPage<any>) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_copyWith: (props?: {
        arguments?: Object | undefined;
        name?: string | undefined;
    }) => IRouteSettings = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public createRoute(context: IBuildContext): IRoute<T> {
        return this._dart_createRoute(context);
    }
    public canUpdate(other: IPage<any>): boolean {
        return this._dart_canUpdate(other);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public copyWith(props?: {
        arguments?: Object | undefined;
        name?: string | undefined;
    }): IRouteSettings {
        return this._dart_copyWith(props);
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const materialPageDefaultProps = {
    fullscreenDialog: false,
    maintainState: true,
};
