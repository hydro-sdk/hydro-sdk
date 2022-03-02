import { IFuture } from "../../dart/async/future";
declare const flutter: {
    services: {
        deferredComponentInstallDeferredComponent: (props: {
            componentName: string;
        }) => IFuture<void>;
        deferredComponentUninstallDeferredComponent: (props: {
            componentName: string;
        }) => IFuture<void>;
    };
};
export interface IDeferredComponent {}
export class DeferredComponent {
    public static installDeferredComponent(props: {
        componentName: string;
    }): IFuture<void> {
        return flutter.services.deferredComponentInstallDeferredComponent(
            props
        );
    }
    public static uninstallDeferredComponent(props: {
        componentName: string;
    }): IFuture<void> {
        return flutter.services.deferredComponentUninstallDeferredComponent(
            props
        );
    }
}
