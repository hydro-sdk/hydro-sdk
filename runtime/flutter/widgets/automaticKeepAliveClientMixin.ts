import { IBuildContext } from "./buildContext";
import { IStatefulWidget } from "./statefulWidget";
import { IWidget } from "./widget";
export interface IAutomaticKeepAliveClientMixin<T> {
    getWantKeepAlive: () => boolean;
    updateKeepAlive: () => void;
    initState: () => void;
    deactivate: () => void;
    build: (context: IBuildContext) => IWidget;
}
