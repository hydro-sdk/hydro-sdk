import { Duration, IDuration } from "../../dart/core/duration";
import { IAnimation } from "../animation/animation";
import { ICurve } from "../animation/curve";
import { Curves } from "../animation/curves";
import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { ITickerProvider } from "../scheduler/tickerProvider";
declare const flutter: {
    material: {
        tabController: (
            this: void,
            tabController: ITabController,
            props: {
                initialIndex: number;
                length: number;
                vsync: ITickerProvider;
            }
        ) => ITabController;
    };
};
export interface ITabController {
    length: number;
    getAnimation: () => IAnimation<number> | undefined;
    getIndex: () => number;
    setIndex: (value: number) => void;
    getPreviousIndex: () => number;
    getIndexIsChanging: () => boolean;
    animateTo: (
        value: number,
        props: { curve: ICurve; duration: IDuration }
    ) => void;
    getOffset: () => number;
    setOffset: (value: number) => void;
    dispose: () => void;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class TabController implements IChangeNotifier, IListenable {
    public readonly length: number = undefined as any;
    public constructor(props: {
        initialIndex?: number;
        length: number;
        vsync: ITickerProvider;
    }) {
        flutter.material.tabController(this, {
            ...tabControllerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getAnimation: () => IAnimation<number> | undefined =
        undefined as any;
    private readonly _dart_getIndex: () => number = undefined as any;
    private readonly _dart_setIndex: (value: number) => void = undefined as any;
    private readonly _dart_getPreviousIndex: () => number = undefined as any;
    private readonly _dart_getIndexIsChanging: () => boolean = undefined as any;
    private readonly _dart_animateTo: (
        value: number,
        props: { curve: ICurve; duration: IDuration }
    ) => void = undefined as any;
    private readonly _dart_getOffset: () => number = undefined as any;
    private readonly _dart_setOffset: (value: number) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getAnimation(): IAnimation<number> | undefined {
        return this._dart_getAnimation();
    }
    public getIndex(): number {
        return this._dart_getIndex();
    }
    public setIndex(value: number): void {
        return this._dart_setIndex(value);
    }
    public getPreviousIndex(): number {
        return this._dart_getPreviousIndex();
    }
    public getIndexIsChanging(): boolean {
        return this._dart_getIndexIsChanging();
    }
    public animateTo(
        value: number,
        props: { curve?: ICurve; duration?: IDuration }
    ): void {
        return this._dart_animateTo(value, {
            ...animateToDefaultProps,
            ...props,
        });
    }
    public getOffset(): number {
        return this._dart_getOffset();
    }
    public setOffset(value: number): void {
        return this._dart_setOffset(value);
    }
    public dispose(): void {
        return this._dart_dispose();
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
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const tabControllerDefaultProps = {
    initialIndex: 0,
};
const animateToDefaultProps = {
    curve: Curves.ease,
    duration: new Duration({ milliseconds: 300 }),
};
