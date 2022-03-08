declare const flutter: {
    material: {
        _textSelectionToolbarItemData: (
            this: void,
            _textSelectionToolbarItemData: I_TextSelectionToolbarItemData,
            props: { label: string; onPressed: () => void }
        ) => I_TextSelectionToolbarItemData;
    };
};
export interface I_TextSelectionToolbarItemData {
    label: string;
}
export class _TextSelectionToolbarItemData {
    public readonly label: string = undefined as any;
    public constructor(props: { label: string; onPressed: () => void }) {
        flutter.material._textSelectionToolbarItemData(this, props);
    }
}
