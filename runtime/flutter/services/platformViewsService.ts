import { IFuture } from "../../dart/async/future";
import { TextDirection } from "../../dart/ui/textDirection";
import { IMessageCodec } from "./messageCodec";
import { ISurfaceAndroidViewController } from "./surfaceAndroidViewController";
import { ITextureAndroidViewController } from "./textureAndroidViewController";
import { IUiKitViewController } from "./uiKitViewController";
declare const flutter: {
    services: {
        platformViewsServiceInitAndroidView: (props: {
            creationParams: any;
            creationParamsCodec?: IMessageCodec<any> | undefined;
            onFocus?: () => void | undefined;
            id: number;
            layoutDirection: TextDirection;
            viewType: string;
        }) => ITextureAndroidViewController;
        platformViewsServiceInitSurfaceAndroidView: (props: {
            creationParams: any;
            creationParamsCodec?: IMessageCodec<any> | undefined;
            onFocus?: () => void | undefined;
            id: number;
            layoutDirection: TextDirection;
            viewType: string;
        }) => ISurfaceAndroidViewController;
        platformViewsServiceSynchronizeToNativeViewHierarchy: (
            yes: boolean
        ) => IFuture<void>;
        platformViewsServiceInitUiKitView: (props: {
            creationParams: any;
            creationParamsCodec?: IMessageCodec<any> | undefined;
            id: number;
            layoutDirection: TextDirection;
            viewType: string;
        }) => IFuture<IUiKitViewController>;
    };
};
export interface IPlatformViewsService {}
export class PlatformViewsService {
    public static initAndroidView(props: {
        creationParams: any;
        creationParamsCodec?: IMessageCodec<any> | undefined;
        onFocus?: () => void | undefined;
        id: number;
        layoutDirection: TextDirection;
        viewType: string;
    }): ITextureAndroidViewController {
        return flutter.services.platformViewsServiceInitAndroidView(props);
    }
    public static initSurfaceAndroidView(props: {
        creationParams: any;
        creationParamsCodec?: IMessageCodec<any> | undefined;
        onFocus?: () => void | undefined;
        id: number;
        layoutDirection: TextDirection;
        viewType: string;
    }): ISurfaceAndroidViewController {
        return flutter.services.platformViewsServiceInitSurfaceAndroidView(
            props
        );
    }
    public static synchronizeToNativeViewHierarchy(
        yes: boolean
    ): IFuture<void> {
        return flutter.services.platformViewsServiceSynchronizeToNativeViewHierarchy(
            yes
        );
    }
    public static initUiKitView(props: {
        creationParams: any;
        creationParamsCodec?: IMessageCodec<any> | undefined;
        id: number;
        layoutDirection: TextDirection;
        viewType: string;
    }): IFuture<IUiKitViewController> {
        return flutter.services.platformViewsServiceInitUiKitView(props);
    }
}
