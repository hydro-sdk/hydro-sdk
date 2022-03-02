import { IList } from "../../dart/core/list";
import { IKeyEvent } from "./keyEvent";
import { IRawKeyEvent } from "./rawKeyEvent";
declare const flutter: {
    services: {
        keyMessage: (
            this: void,
            keyMessage: IKeyMessage,
            events: IList<IKeyEvent>,
            rawEvent: IRawKeyEvent
        ) => IKeyMessage;
    };
};
export interface IKeyMessage {
    events: IList<IKeyEvent>;
    rawEvent: IRawKeyEvent;
    toString: () => string;
}
export class KeyMessage {
    public readonly events: IList<IKeyEvent> = undefined as any;
    public readonly rawEvent: IRawKeyEvent = undefined as any;
    public constructor(events: IList<IKeyEvent>, rawEvent: IRawKeyEvent) {
        flutter.services.keyMessage(this, events, rawEvent);
    }
    private readonly _dart_toString: () => string = undefined as any;
    public toString(): string {
        return this._dart_toString();
    }
}
