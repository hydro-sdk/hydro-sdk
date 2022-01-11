import { IDebugReassembleConfig } from "../foundation/debugReassembleConfig";
import { IElement } from "./element";
import { IFocusManager } from "./focusManager";
declare const flutter: {
    widgets: {
        buildOwner: (
            this: void,
            buildOwner: IBuildOwner,
            props?: {
                focusManager?: IFocusManager | undefined;
                onBuildScheduled?: () => void | undefined;
            }
        ) => IBuildOwner;
    };
};
export interface IBuildOwner {
    focusManager: IFocusManager;
    scheduleBuildFor: (element: IElement) => void;
    getDebugBuilding: () => boolean;
    lockState: (callback: () => void) => void;
    buildScope: (context: IElement, callback?: () => void) => void;
    getGlobalKeyCount: () => number;
    finalizeTree: () => void;
    reassemble: (
        root: IElement,
        reassembleConfig?: IDebugReassembleConfig | undefined
    ) => void;
}
export class BuildOwner {
    public readonly focusManager: IFocusManager = undefined as any;
    public constructor(props?: {
        focusManager?: IFocusManager | undefined;
        onBuildScheduled?: () => void | undefined;
    }) {
        flutter.widgets.buildOwner(this, props);
    }
    private readonly _dart_scheduleBuildFor: (element: IElement) => void =
        undefined as any;
    private readonly _dart_getDebugBuilding: () => boolean = undefined as any;
    private readonly _dart_lockState: (callback: () => void) => void =
        undefined as any;
    private readonly _dart_buildScope: (
        context: IElement,
        callback?: () => void
    ) => void = undefined as any;
    private readonly _dart_getGlobalKeyCount: () => number = undefined as any;
    private readonly _dart_finalizeTree: () => void = undefined as any;
    private readonly _dart_reassemble: (
        root: IElement,
        reassembleConfig?: IDebugReassembleConfig | undefined
    ) => void = undefined as any;
    public scheduleBuildFor(element: IElement): void {
        return this._dart_scheduleBuildFor(element);
    }
    public getDebugBuilding(): boolean {
        return this._dart_getDebugBuilding();
    }
    public lockState(callback: () => void): void {
        return this._dart_lockState(callback);
    }
    public buildScope(context: IElement, callback?: () => void): void {
        return this._dart_buildScope(context, callback);
    }
    public getGlobalKeyCount(): number {
        return this._dart_getGlobalKeyCount();
    }
    public finalizeTree(): void {
        return this._dart_finalizeTree();
    }
    public reassemble(
        root: IElement,
        reassembleConfig?: IDebugReassembleConfig | undefined
    ): void {
        return this._dart_reassemble(root, reassembleConfig);
    }
}
