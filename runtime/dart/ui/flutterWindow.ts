import { IFlutterView } from "./flutterView";
import { IPlatformDispatcher } from "./platformDispatcher";
import { IRect } from "./rect";
import { IScene } from "./scene";
import { ISize } from "./size";
import { IViewConfiguration } from "./viewConfiguration";
import { IWindowPadding } from "./windowPadding";
declare const dart: {
    ui: {};
};
export interface IFlutterWindow {
    platformDispatcher: IPlatformDispatcher;
    getViewConfiguration: () => IViewConfiguration;
    render: (scene: IScene) => void;
    getPlatformDispatcher: () => IPlatformDispatcher;
    getDevicePixelRatio: () => number;
    getPhysicalGeometry: () => IRect;
    getPhysicalSize: () => ISize;
    getViewInsets: () => IWindowPadding;
    getViewPadding: () => IWindowPadding;
    getSystemGestureInsets: () => IWindowPadding;
    getPadding: () => IWindowPadding;
    toString: () => string;
    getHashCode: () => number;
}
export class FlutterWindow implements IFlutterView {
    public readonly platformDispatcher: IPlatformDispatcher = undefined as any;
    private readonly _dart_getViewConfiguration: () => IViewConfiguration =
        undefined as any;
    private readonly _dart_render: (scene: IScene) => void = undefined as any;
    private readonly _dart_getPlatformDispatcher: () => IPlatformDispatcher =
        undefined as any;
    private readonly _dart_getDevicePixelRatio: () => number = undefined as any;
    private readonly _dart_getPhysicalGeometry: () => IRect = undefined as any;
    private readonly _dart_getPhysicalSize: () => ISize = undefined as any;
    private readonly _dart_getViewInsets: () => IWindowPadding =
        undefined as any;
    private readonly _dart_getViewPadding: () => IWindowPadding =
        undefined as any;
    private readonly _dart_getSystemGestureInsets: () => IWindowPadding =
        undefined as any;
    private readonly _dart_getPadding: () => IWindowPadding = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getViewConfiguration(): IViewConfiguration {
        return this._dart_getViewConfiguration();
    }
    public render(scene: IScene): void {
        return this._dart_render(scene);
    }
    public getPlatformDispatcher(): IPlatformDispatcher {
        return this._dart_getPlatformDispatcher();
    }
    public getDevicePixelRatio(): number {
        return this._dart_getDevicePixelRatio();
    }
    public getPhysicalGeometry(): IRect {
        return this._dart_getPhysicalGeometry();
    }
    public getPhysicalSize(): ISize {
        return this._dart_getPhysicalSize();
    }
    public getViewInsets(): IWindowPadding {
        return this._dart_getViewInsets();
    }
    public getViewPadding(): IWindowPadding {
        return this._dart_getViewPadding();
    }
    public getSystemGestureInsets(): IWindowPadding {
        return this._dart_getSystemGestureInsets();
    }
    public getPadding(): IWindowPadding {
        return this._dart_getPadding();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
