
export interface IImageCacheStatus


{
pending: boolean;
keepAlive: boolean;
live: boolean;
getTracked: () => boolean;
getUntracked: () => boolean;
getHashCode: () => number;
toString: () => string;
}