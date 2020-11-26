import { Type } from "../../dart/core/type";
import { BlendMode } from "../../dart/ui/blendMode";
import { Color } from "../../dart/ui/color";
import { FilterQuality } from "../../dart/ui/filterQuality";
import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Key } from "./../foundation/key";
import { Alignment } from "../painting/alignment";
import { BoxFit } from "../painting/boxFit";
import { ImageProvider } from "../painting/imageProvider";
import { ImageRepeat } from "../painting/imageRepeat";
import { NetworkImage } from "../painting/networkImage";
import { ResizeImage } from "../painting/resizeImage";
import { Widget } from "../widget";
import { StatelessWidget } from "./statelessWidget";

export interface ImageProps {
    image: ImageProvider;
    key?: Key | undefined;
    scale?: number | undefined;
    semanticLabel?: string | undefined;
    excludeFromSemantics?: boolean | undefined;
    width?: number | undefined;
    height?: number | undefined;
    color?: Color | undefined;
    colorBlendMode?: BlendMode | undefined;
    fit?: BoxFit | undefined;
    alignment?: Alignment | undefined;
    repeat?: ImageRepeat | undefined;
    matchTextDirection?: boolean | undefined;
    gaplessPlayback?: boolean | undefined;
    filterQuality?: FilterQuality | undefined;
    cacheWidth?: number | undefined;
    cacheHeight?: number | undefined;
}

declare const flutter: {
    widgets: {
        image: (this: void, props: ImageProps) => Image;
    };
};

export class Image extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(Image);
    public src: string;
    public props: ImageProps;
    private constructor(src: string, props: ImageProps) {
        super();
        this.src = src;
        this.props = props;
    }

    public static network(
        src: string,
        props: Omit<ImageProps, "image">
    ): Image {
        const {
            key,
            scale = 1.0,
            semanticLabel,
            excludeFromSemantics = false,
            width,
            height,
            color,
            colorBlendMode,
            fit,
            alignment = Alignment.center,
            repeat = ImageRepeat.noRepeat,
            matchTextDirection = false,
            gaplessPlayback = false,
            filterQuality = FilterQuality.low,
            cacheWidth,
            cacheHeight,
        } = props;

        return new Image(src, {
            key,
            scale,
            semanticLabel,
            excludeFromSemantics,
            width,
            height,
            color,
            colorBlendMode,
            fit,
            alignment,
            repeat,
            matchTextDirection,
            gaplessPlayback,
            filterQuality,
            image: ResizeImage.resizeIfNeeded(
                cacheWidth,
                cacheHeight,
                new NetworkImage(src, { scale: scale })
            ),
        });
    }

    public build(): Widget {
        return flutter.widgets.image(this.props);
    }
}
