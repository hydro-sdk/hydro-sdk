declare const flutter: {
    widgets: {
        localHistoryEntry: (
            this: void,
            localHistoryEntry: ILocalHistoryEntry,
            props?: { onRemove?: () => void | undefined }
        ) => ILocalHistoryEntry;
    };
};
export interface ILocalHistoryEntry {
    remove: () => void;
}
export class LocalHistoryEntry {
    public constructor(props?: { onRemove?: () => void | undefined }) {
        flutter.widgets.localHistoryEntry(this, props);
    }
    private readonly _dart_remove: () => void = undefined as any;
    public remove(): void {
        return this._dart_remove();
    }
}
