import {Type} from "../../dart/core/type";

import {JITAllocatingRTManagedBox} from "./../../syntheticBox";
import {ImageProvider} from "./imageProvider";

interface NetworkImageProps {
    scale: number;
}

declare const flutter: {
    painting: {
        networkImage: (this: void, url: string, props: NetworkImageProps) => NetworkImage;
    };
};

export class NetworkImage extends JITAllocatingRTManagedBox<NetworkImageProps, NetworkImage> implements ImageProvider 
{
    public readonly internalRuntimeType = new Type(NetworkImage);
    public url: string;
    public props: NetworkImageProps
    public constructor(url: string, props: NetworkImageProps) 
    {
        super();
        this.url = url;
        this.props = props;
    }

    public unwrap(): NetworkImage 
    {
        return flutter.painting.networkImage(this.url, this.props);
    }
}