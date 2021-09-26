import { IFuture } from "../async/future";
import { IByteData } from "../typed_data/byteData";
declare const dart: {
    ui: {
        channelBuffers: (
            this: void,
            channelBuffers: IChannelBuffers
        ) => IChannelBuffers;
    };
};
export interface IChannelBuffers {
    push: (
        name: string,
        data: IByteData | undefined,
        callback: (data?: IByteData | undefined) => void
    ) => void;
    setListener: (
        name: string,
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => void
    ) => void;
    clearListener: (name: string) => void;
    drain: (
        name: string,
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => IFuture<void>
    ) => IFuture<void>;
    handleMessage: (data: IByteData) => void;
    resize: (name: string, newSize: number) => void;
    allowOverflow: (name: string, allowed: boolean) => void;
}
export class ChannelBuffers {
    public static kDefaultBufferSize = 1;
    public static kControlChannelName = "dev.flutter/channel-buffers";
    public constructor() {
        dart.ui.channelBuffers(this);
    }
    private readonly _dart_push: (
        name: string,
        data: IByteData | undefined,
        callback: (data?: IByteData | undefined) => void
    ) => void = undefined as any;
    private readonly _dart_setListener: (
        name: string,
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => void
    ) => void = undefined as any;
    private readonly _dart_clearListener: (name: string) => void =
        undefined as any;
    private readonly _dart_drain: (
        name: string,
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => IFuture<void>
    ) => IFuture<void> = undefined as any;
    private readonly _dart_handleMessage: (data: IByteData) => void =
        undefined as any;
    private readonly _dart_resize: (name: string, newSize: number) => void =
        undefined as any;
    private readonly _dart_allowOverflow: (
        name: string,
        allowed: boolean
    ) => void = undefined as any;
    public push(
        name: string,
        data: IByteData | undefined,
        callback: (data?: IByteData | undefined) => void
    ): void {
        return this._dart_push(name, data, callback);
    }
    public setListener(
        name: string,
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => void
    ): void {
        return this._dart_setListener(name, callback);
    }
    public clearListener(name: string): void {
        return this._dart_clearListener(name);
    }
    public drain(
        name: string,
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => IFuture<void>
    ): IFuture<void> {
        return this._dart_drain(name, callback);
    }
    public handleMessage(data: IByteData): void {
        return this._dart_handleMessage(data);
    }
    public resize(name: string, newSize: number): void {
        return this._dart_resize(name, newSize);
    }
    public allowOverflow(name: string, allowed: boolean): void {
        return this._dart_allowOverflow(name, allowed);
    }
}
