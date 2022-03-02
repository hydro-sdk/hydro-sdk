import { IDuration } from "../../dart/core/duration";
import { IStackTrace } from "../../dart/core/stackTrace";
declare const flutter: {
    scheduler: {
        _frameCallbackEntry: (
            this: void,
            _frameCallbackEntry: I_FrameCallbackEntry,
            callback: (timeStamp: IDuration) => void,
            props: { rescheduling: boolean }
        ) => I_FrameCallbackEntry;
    };
};
export interface I_FrameCallbackEntry {
    debugStack: IStackTrace | undefined;
}
export class _FrameCallbackEntry {
    public readonly debugStack: IStackTrace | undefined = undefined as any;
    public constructor(
        callback: (timeStamp: IDuration) => void,
        props: { rescheduling?: boolean }
    ) {
        flutter.scheduler._frameCallbackEntry(this, callback, {
            ..._frameCallbackEntryDefaultProps,
            ...props,
        });
    }
}
const _frameCallbackEntryDefaultProps = {
    rescheduling: false,
};
