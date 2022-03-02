import { ISemanticsEvent } from "./semanticsEvent";
declare const flutter: {
    semantics: {
        tooltipSemanticsEvent: (
            this: void,
            tooltipSemanticsEvent: ITooltipSemanticsEvent,
            message: string
        ) => ITooltipSemanticsEvent;
    };
};
export interface ITooltipSemanticsEvent {
    message: string;
    type: string;
    getDataMap: () => { [index: string]: any };
    toMap: (props?: { nodeId?: number | undefined }) => {
        [index: string]: any;
    };
    toString: () => string;
    getHashCode: () => number;
}
export class TooltipSemanticsEvent implements ISemanticsEvent {
    public readonly message: string = undefined as any;
    public readonly type: string = undefined as any;
    public constructor(message: string) {
        flutter.semantics.tooltipSemanticsEvent(this, message);
    }
    private readonly _dart_getDataMap: () => { [index: string]: any } =
        undefined as any;
    private readonly _dart_toMap: (props?: { nodeId?: number | undefined }) => {
        [index: string]: any;
    } = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getDataMap(): { [index: string]: any } {
        return this._dart_getDataMap();
    }
    public toMap(props?: { nodeId?: number | undefined }): {
        [index: string]: any;
    } {
        return this._dart_toMap(props);
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
