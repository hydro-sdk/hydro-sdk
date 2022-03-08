import { _CornerId } from "./_cornerId";
declare const flutter: {
    material: {
        _diagonal: (
            this: void,
            _diagonal: I_Diagonal,
            beginId: _CornerId,
            endId: _CornerId
        ) => I_Diagonal;
    };
};
export interface I_Diagonal {
    beginId: _CornerId;
    endId: _CornerId;
}
export class _Diagonal {
    public readonly beginId: _CornerId = undefined as any;
    public readonly endId: _CornerId = undefined as any;
    public constructor(beginId: _CornerId, endId: _CornerId) {
        flutter.material._diagonal(this, beginId, endId);
    }
}
