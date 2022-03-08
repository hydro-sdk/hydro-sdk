import { IFuture } from "../../dart/async/future";
import { IDuration } from "../../dart/core/duration";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { ICurve } from "../animation/curve";
import { IListenable } from "../foundation/listenable";
import { IScrollContext } from "../widgets/scrollContext";
import { IScrollController } from "../widgets/scrollController";
import { IScrollPhysics } from "../widgets/scrollPhysics";
import { IScrollPosition } from "../widgets/scrollPosition";
import { I_TabBarState } from "./_tabBarState";
declare const flutter: {
    material: {
        _tabBarScrollController: (
            this: void,
            _tabBarScrollController: I_TabBarScrollController,
            tabBar: I_TabBarState
        ) => I_TabBarScrollController;
    };
};
export interface I_TabBarScrollController {
    tabBar: I_TabBarState;
    keepScrollOffset: boolean;
    debugLabel: string | undefined;
    createScrollPosition: (
        physics: IScrollPhysics,
        context: IScrollContext,
        oldPosition?: IScrollPosition | undefined
    ) => IScrollPosition;
    animateTo: (
        offset: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void>;
    jumpTo: (value: number) => void;
    attach: (position: IScrollPosition) => void;
    detach: (position: IScrollPosition) => void;
    dispose: () => void;
    toString: () => string;
    debugFillDescription: (description: IList<string>) => void;
    getInitialScrollOffset: () => number;
    getPositions: () => IIterable<IScrollPosition>;
    getHasClients: () => boolean;
    getPosition: () => IScrollPosition;
    getOffset: () => number;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    getHashCode: () => number;
}
export class _TabBarScrollController implements IScrollController, IListenable {
    public readonly tabBar: I_TabBarState = undefined as any;
    public readonly keepScrollOffset: boolean = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public constructor(tabBar: I_TabBarState) {
        flutter.material._tabBarScrollController(this, tabBar);
    }
    private readonly _dart_createScrollPosition: (
        physics: IScrollPhysics,
        context: IScrollContext,
        oldPosition?: IScrollPosition | undefined
    ) => IScrollPosition = undefined as any;
    private readonly _dart_animateTo: (
        offset: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_jumpTo: (value: number) => void = undefined as any;
    private readonly _dart_attach: (position: IScrollPosition) => void =
        undefined as any;
    private readonly _dart_detach: (position: IScrollPosition) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_debugFillDescription: (
        description: IList<string>
    ) => void = undefined as any;
    private readonly _dart_getInitialScrollOffset: () => number =
        undefined as any;
    private readonly _dart_getPositions: () => IIterable<IScrollPosition> =
        undefined as any;
    private readonly _dart_getHasClients: () => boolean = undefined as any;
    private readonly _dart_getPosition: () => IScrollPosition =
        undefined as any;
    private readonly _dart_getOffset: () => number = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public createScrollPosition(
        physics: IScrollPhysics,
        context: IScrollContext,
        oldPosition?: IScrollPosition | undefined
    ): IScrollPosition {
        return this._dart_createScrollPosition(physics, context, oldPosition);
    }
    public animateTo(
        offset: number,
        props: { curve: ICurve; duration: IDuration }
    ): IFuture<void> {
        return this._dart_animateTo(offset, props);
    }
    public jumpTo(value: number): void {
        return this._dart_jumpTo(value);
    }
    public attach(position: IScrollPosition): void {
        return this._dart_attach(position);
    }
    public detach(position: IScrollPosition): void {
        return this._dart_detach(position);
    }
    public dispose(): void {
        return this._dart_dispose();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public debugFillDescription(description: IList<string>): void {
        return this._dart_debugFillDescription(description);
    }
    public getInitialScrollOffset(): number {
        return this._dart_getInitialScrollOffset();
    }
    public getPositions(): IIterable<IScrollPosition> {
        return this._dart_getPositions();
    }
    public getHasClients(): boolean {
        return this._dart_getHasClients();
    }
    public getPosition(): IScrollPosition {
        return this._dart_getPosition();
    }
    public getOffset(): number {
        return this._dart_getOffset();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public notifyListeners(): void {
        return this._dart_notifyListeners();
    }
    public getHasListeners(): boolean {
        return this._dart_getHasListeners();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
