import { IFlutterView } from "./flutterView";
import { IRect, Rect } from "./rect";
import { IWindowPadding, WindowPadding } from "./windowPadding";
declare const dart: {
    ui: {
        viewConfiguration: (
            this: void,
            viewConfiguration: IViewConfiguration,
            props: {
                devicePixelRatio: number;
                geometry: IRect;
                padding: IWindowPadding;
                systemGestureInsets: IWindowPadding;
                viewInsets: IWindowPadding;
                viewPadding: IWindowPadding;
                visible: boolean;
                window?: IFlutterView | undefined;
            }
        ) => IViewConfiguration;
    };
};
export interface IViewConfiguration {
    window: IFlutterView | undefined;
    devicePixelRatio: number;
    geometry: IRect;
    visible: boolean;
    viewInsets: IWindowPadding;
    viewPadding: IWindowPadding;
    systemGestureInsets: IWindowPadding;
    padding: IWindowPadding;
    copyWith: (props?: {
        devicePixelRatio?: number | undefined;
        geometry?: IRect | undefined;
        padding?: IWindowPadding | undefined;
        systemGestureInsets?: IWindowPadding | undefined;
        viewInsets?: IWindowPadding | undefined;
        viewPadding?: IWindowPadding | undefined;
        visible?: boolean | undefined;
        window?: IFlutterView | undefined;
    }) => IViewConfiguration;
    toString: () => string;
}
export class ViewConfiguration {
    public readonly window: IFlutterView | undefined = undefined as any;
    public readonly devicePixelRatio: number = undefined as any;
    public readonly geometry: IRect = undefined as any;
    public readonly visible: boolean = undefined as any;
    public readonly viewInsets: IWindowPadding = undefined as any;
    public readonly viewPadding: IWindowPadding = undefined as any;
    public readonly systemGestureInsets: IWindowPadding = undefined as any;
    public readonly padding: IWindowPadding = undefined as any;
    public constructor(props: {
        devicePixelRatio?: number;
        geometry?: IRect;
        padding?: IWindowPadding;
        systemGestureInsets?: IWindowPadding;
        viewInsets?: IWindowPadding;
        viewPadding?: IWindowPadding;
        visible?: boolean;
        window?: IFlutterView | undefined;
    }) {
        dart.ui.viewConfiguration(this, {
            ...viewConfigurationDefaultProps,
            ...props,
        });
    }
    private readonly _dart_copyWith: (props?: {
        devicePixelRatio?: number | undefined;
        geometry?: IRect | undefined;
        padding?: IWindowPadding | undefined;
        systemGestureInsets?: IWindowPadding | undefined;
        viewInsets?: IWindowPadding | undefined;
        viewPadding?: IWindowPadding | undefined;
        visible?: boolean | undefined;
        window?: IFlutterView | undefined;
    }) => IViewConfiguration = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public copyWith(props?: {
        devicePixelRatio?: number | undefined;
        geometry?: IRect | undefined;
        padding?: IWindowPadding | undefined;
        systemGestureInsets?: IWindowPadding | undefined;
        viewInsets?: IWindowPadding | undefined;
        viewPadding?: IWindowPadding | undefined;
        visible?: boolean | undefined;
        window?: IFlutterView | undefined;
    }): IViewConfiguration {
        return this._dart_copyWith(props);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
const viewConfigurationDefaultProps = {
    devicePixelRatio: 1.0,
    geometry: Rect.zero,
    padding: WindowPadding.zero,
    systemGestureInsets: WindowPadding.zero,
    viewInsets: WindowPadding.zero,
    viewPadding: WindowPadding.zero,
    visible: false,
};
