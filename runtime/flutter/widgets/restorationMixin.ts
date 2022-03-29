import { IRestorationBucket } from "../services/restorationBucket";
import { IRestorableProperty } from "./restorableProperty";
import { IStatefulWidget } from "./statefulWidget";
export interface IRestorationMixin<S> {
    getRestorationId: () => string | undefined;
    getBucket: () => IRestorationBucket | undefined;
    restoreState: (
        oldBucket: IRestorationBucket | undefined,
        initialRestore: boolean
    ) => void;
    didToggleBucket: (oldBucket?: IRestorationBucket | undefined) => void;
    registerForRestoration: (
        property: IRestorableProperty<Object | undefined>,
        restorationId: string
    ) => void;
    unregisterFromRestoration: (
        property: IRestorableProperty<Object | undefined>
    ) => void;
    didUpdateRestorationId: () => void;
    didUpdateWidget: (oldWidget: unknown) => void;
    getRestorePending: () => boolean;
    didChangeDependencies: () => void;
    dispose: () => void;
}
