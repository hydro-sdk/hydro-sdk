import { double } from "../core/double";
import { IFloat64List } from "../typed_data/float64List";
import { FilterQuality } from "./filterQuality";
import { TileMode } from "./tileMode";
const blurDefaultProps = {
    sigmaX: 0.0,
    sigmaY: 0.0,
    tileMode: TileMode.clamp,
};
const matrixDefaultProps = {
    filterQuality: FilterQuality.low,
};
export interface IImageFilter {}
export class ImageFilter {
    public static blur(props: {
        sigmaX?: number;
        sigmaY?: number;
        tileMode?: TileMode;
    }): IImageFilter {
        return dart.ui.imageFilterBlur({
            ...blurDefaultProps,
            ...props,
        });
    }
    public static matrix(
        matrix4: IFloat64List,
        props: { filterQuality?: FilterQuality }
    ): IImageFilter {
        return dart.ui.imageFilterMatrix(matrix4, {
            ...matrixDefaultProps,
            ...props,
        });
    }
    public static compose(props: {
        inner: IImageFilter;
        outer: IImageFilter;
    }): IImageFilter {
        return dart.ui.imageFilterCompose(props);
    }
}
