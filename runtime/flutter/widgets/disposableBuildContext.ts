import { IBuildContext } from "./buildContext";
import { IState } from "./state";
import { IStatefulWidget } from "./statefulWidget";
declare const flutter: {
    widgets: {
        disposableBuildContext: <T>(
            this: void,
            disposableBuildContext: IDisposableBuildContext<T>,
            _state: T
        ) => IDisposableBuildContext<T>;
    };
};
export interface IDisposableBuildContext<T> {
    getContext: () => IBuildContext | undefined;
    dispose: () => void;
}
export class DisposableBuildContext<T> {
    public constructor(_state: T) {
        flutter.widgets.disposableBuildContext(this, _state);
    }
    private readonly _dart_getContext: () => IBuildContext | undefined =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    public getContext(): IBuildContext | undefined {
        return this._dart_getContext();
    }
    public dispose(): void {
        return this._dart_dispose();
    }
}
