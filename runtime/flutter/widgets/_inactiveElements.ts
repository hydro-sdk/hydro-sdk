import { IElement } from "./element";
declare const flutter: {
    widgets: {
        _inactiveElements: (
            this: void,
            _inactiveElements: I_InactiveElements
        ) => I_InactiveElements;
    };
};
export interface I_InactiveElements {
    add: (element: IElement) => void;
    remove: (element: IElement) => void;
    debugContains: (element: IElement) => boolean;
}
export class _InactiveElements {
    public constructor() {
        flutter.widgets._inactiveElements(this);
    }
    private readonly _dart_add: (element: IElement) => void = undefined as any;
    private readonly _dart_remove: (element: IElement) => void =
        undefined as any;
    private readonly _dart_debugContains: (element: IElement) => boolean =
        undefined as any;
    public add(element: IElement): void {
        return this._dart_add(element);
    }
    public remove(element: IElement): void {
        return this._dart_remove(element);
    }
    public debugContains(element: IElement): boolean {
        return this._dart_debugContains(element);
    }
}
