import { Type } from "../../dart/core/type";
import { JITAllocatingRTManagedBox } from "../../syntheticBox";
import { ImageProvider } from "./imageProvider";

export interface ResizeImageProps {
    width?: number | undefined;
    height?: number | undefined;
}

declare const flutter: {
    painting: {
        resizeImage: (
            this: void,
            imageProvider: ImageProvider,
            props: ResizeImageProps
        ) => ResizeImage;
    };
};

export class ResizeImage
    extends JITAllocatingRTManagedBox<ResizeImageProps, ResizeImage>
    implements ImageProvider {
    public readonly internalRuntimeType = new Type(ResizeImage);
    public imageProvider: ImageProvider;
    public props: ResizeImageProps;
    private constructor(imageProvider: ImageProvider, props: ResizeImageProps) {
        super();

        this.imageProvider = imageProvider;
        this.props = props;
    }

    public static resizeIfNeeded(
        cacheWidth: number | undefined,
        cacheHeight: number | undefined,
        provider: ImageProvider
    ): ImageProvider {
        if (cacheWidth !== undefined || cacheHeight !== undefined) {
            return new ResizeImage(provider, {
                width: cacheWidth,
                height: cacheHeight,
            });
        }
        return provider;
    }

    public unwrap(): ResizeImage {
        return flutter.painting.resizeImage(this.imageProvider, this.props);
    }
}
