import { Brightness } from "../../dart/ui/brightness";
import { IColor } from "../../dart/ui/color";
import { IEdgeInsets } from "../painting/edgeInsets";
import { IWidget } from "../widgets/widget";
import { IVisualDensity } from "./visualDensity";
declare const flutter: {
    material: {
        _chipRenderTheme: (
            this: void,
            _chipRenderTheme: I_ChipRenderTheme,
            props: {
                avatar: IWidget;
                brightness: Brightness;
                canTapBody: boolean;
                checkmarkColor?: IColor | undefined;
                deleteIcon: IWidget;
                label: IWidget;
                labelPadding: IEdgeInsets;
                padding: IEdgeInsets;
                showAvatar: boolean;
                showCheckmark: boolean;
                visualDensity: IVisualDensity;
            }
        ) => I_ChipRenderTheme;
    };
};
export interface I_ChipRenderTheme {
    avatar: IWidget;
    label: IWidget;
    deleteIcon: IWidget;
    brightness: Brightness;
    padding: IEdgeInsets;
    visualDensity: IVisualDensity;
    labelPadding: IEdgeInsets;
    showAvatar: boolean;
    showCheckmark: boolean;
    checkmarkColor: IColor | undefined;
    canTapBody: boolean;
    getHashCode: () => number;
}
export class _ChipRenderTheme {
    public readonly avatar: IWidget = undefined as any;
    public readonly label: IWidget = undefined as any;
    public readonly deleteIcon: IWidget = undefined as any;
    public readonly brightness: Brightness = undefined as any;
    public readonly padding: IEdgeInsets = undefined as any;
    public readonly visualDensity: IVisualDensity = undefined as any;
    public readonly labelPadding: IEdgeInsets = undefined as any;
    public readonly showAvatar: boolean = undefined as any;
    public readonly showCheckmark: boolean = undefined as any;
    public readonly checkmarkColor: IColor | undefined = undefined as any;
    public readonly canTapBody: boolean = undefined as any;
    public constructor(props: {
        avatar: IWidget;
        brightness: Brightness;
        canTapBody: boolean;
        checkmarkColor?: IColor | undefined;
        deleteIcon: IWidget;
        label: IWidget;
        labelPadding: IEdgeInsets;
        padding: IEdgeInsets;
        showAvatar: boolean;
        showCheckmark: boolean;
        visualDensity: IVisualDensity;
    }) {
        flutter.material._chipRenderTheme(this, props);
    }
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
