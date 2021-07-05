import { IByteData } from "../typed_data/byteData";
import { I_StoredMessage } from "./_storedMessage";
import { ChannelBuffers } from "./channelBuffers";
declare const dart: {
    ui: {
        _channel: (
            this: void,
            _channel: I_Channel,
            _capacity: number
        ) => I_Channel;
    };
};
export interface I_Channel {
    debugEnableDiscardWarnings: boolean;
    getLength: () => number;
    getCapacity: () => number;
    setCapacity: (newSize: number) => void;
    push: (message: I_StoredMessage) => boolean;
    pop: () => I_StoredMessage;
    setListener: (
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => void
    ) => void;
    clearListener: () => void;
}
export class _Channel {
    public readonly debugEnableDiscardWarnings: boolean = undefined as any;
    public constructor(_capacity: number = ChannelBuffers.kDefaultBufferSize) {
        dart.ui._channel(this, _capacity);
    }
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getCapacity: () => number = undefined as any;
    private readonly _dart_setCapacity: (newSize: number) => void =
        undefined as any;
    private readonly _dart_push: (message: I_StoredMessage) => boolean =
        undefined as any;
    private readonly _dart_pop: () => I_StoredMessage = undefined as any;
    private readonly _dart_setListener: (
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => void
    ) => void = undefined as any;
    private readonly _dart_clearListener: () => void = undefined as any;
    public getLength(): number {
        return this._dart_getLength();
    }
    public getCapacity(): number {
        return this._dart_getCapacity();
    }
    public setCapacity(newSize: number): void {
        return this._dart_setCapacity(newSize);
    }
    public push(message: I_StoredMessage): boolean {
        return this._dart_push(message);
    }
    public pop(): I_StoredMessage {
        return this._dart_pop();
    }
    public setListener(
        callback: (
            data: IByteData | undefined,
            callback: (data?: IByteData | undefined) => void
        ) => void
    ): void {
        return this._dart_setListener(callback);
    }
    public clearListener(): void {
        return this._dart_clearListener();
    }
}
