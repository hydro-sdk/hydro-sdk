declare const dart: {
    ui: {
        sceneHost: (
            this: void,
            sceneHost: ISceneHost,
            viewHolderToken: any,
            viewConnectedCallback?: () => void,
            viewDisconnectedCallback?: () => void,
            viewStateChangedCallback?: (__: boolean) => void
        ) => ISceneHost;
    };
};
export interface ISceneHost {
    dispose: () => void;
    setProperties: (
        width: number,
        height: number,
        insetTop: number,
        insetRight: number,
        insetBottom: number,
        insetLeft: number,
        focusable: boolean
    ) => void;
}
export class SceneHost {
    public constructor(
        viewHolderToken: any,
        viewConnectedCallback?: () => void,
        viewDisconnectedCallback?: () => void,
        viewStateChangedCallback?: (__: boolean) => void
    ) {
        dart.ui.sceneHost(
            this,
            viewHolderToken,
            viewConnectedCallback,
            viewDisconnectedCallback,
            viewStateChangedCallback
        );
    }
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_setProperties: (
        width: number,
        height: number,
        insetTop: number,
        insetRight: number,
        insetBottom: number,
        insetLeft: number,
        focusable: boolean
    ) => void = undefined as any;
    public dispose(): void {
        return this._dart_dispose();
    }
    public setProperties(
        width: number,
        height: number,
        insetTop: number,
        insetRight: number,
        insetBottom: number,
        insetLeft: number,
        focusable: boolean
    ): void {
        return this._dart_setProperties(
            width,
            height,
            insetTop,
            insetRight,
            insetBottom,
            insetLeft,
            focusable
        );
    }
}
