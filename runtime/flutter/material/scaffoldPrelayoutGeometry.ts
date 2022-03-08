import { ISize } from "../../dart/ui/size";
import { TextDirection } from "../../dart/ui/textDirection";
import { IEdgeInsets } from "../painting/edgeInsets";
declare const flutter: {
    material: {
        scaffoldPrelayoutGeometry: (
            this: void,
            scaffoldPrelayoutGeometry: IScaffoldPrelayoutGeometry,
            props: {
                bottomSheetSize: ISize;
                contentBottom: number;
                contentTop: number;
                floatingActionButtonSize: ISize;
                materialBannerSize: ISize;
                minInsets: IEdgeInsets;
                minViewPadding: IEdgeInsets;
                scaffoldSize: ISize;
                snackBarSize: ISize;
                textDirection: TextDirection;
            }
        ) => IScaffoldPrelayoutGeometry;
    };
};
export interface IScaffoldPrelayoutGeometry {
    floatingActionButtonSize: ISize;
    bottomSheetSize: ISize;
    contentBottom: number;
    contentTop: number;
    minInsets: IEdgeInsets;
    minViewPadding: IEdgeInsets;
    scaffoldSize: ISize;
    snackBarSize: ISize;
    materialBannerSize: ISize;
    textDirection: TextDirection;
}
export class ScaffoldPrelayoutGeometry {
    public readonly floatingActionButtonSize: ISize = undefined as any;
    public readonly bottomSheetSize: ISize = undefined as any;
    public readonly contentBottom: number = undefined as any;
    public readonly contentTop: number = undefined as any;
    public readonly minInsets: IEdgeInsets = undefined as any;
    public readonly minViewPadding: IEdgeInsets = undefined as any;
    public readonly scaffoldSize: ISize = undefined as any;
    public readonly snackBarSize: ISize = undefined as any;
    public readonly materialBannerSize: ISize = undefined as any;
    public readonly textDirection: TextDirection = undefined as any;
    public constructor(props: {
        bottomSheetSize: ISize;
        contentBottom: number;
        contentTop: number;
        floatingActionButtonSize: ISize;
        materialBannerSize: ISize;
        minInsets: IEdgeInsets;
        minViewPadding: IEdgeInsets;
        scaffoldSize: ISize;
        snackBarSize: ISize;
        textDirection: TextDirection;
    }) {
        flutter.material.scaffoldPrelayoutGeometry(this, props);
    }
}
