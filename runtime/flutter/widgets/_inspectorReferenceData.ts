declare const flutter: {
    widgets: {
        _inspectorReferenceData: (
            this: void,
            _inspectorReferenceData: I_InspectorReferenceData,
            object: Object
        ) => I_InspectorReferenceData;
    };
};
export interface I_InspectorReferenceData {
    object: Object;
    count: number;
}
export class _InspectorReferenceData {
    public readonly object: Object = undefined as any;
    public readonly count: number = undefined as any;
    public constructor(object: Object) {
        flutter.widgets._inspectorReferenceData(this, object);
    }
}
