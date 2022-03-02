import { IFuture } from "../../dart/async/future";
import { IDuration } from "../../dart/core/duration";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { ICurve } from "../animation/curve";
import { IListenable } from "../foundation/listenable";
import { IScrollContext } from "./scrollContext";
import { IScrollController } from "./scrollController";
import { IScrollPhysics } from "./scrollPhysics";
import { IScrollPosition } from "./scrollPosition";
declare const flutter: {
    widgets: {
        pageController: (
            this: void,
            pageController: IPageController,
            props: {
                initialPage: number;
                keepPage: boolean;
                viewportFraction: number;
            }
        ) => IPageController;
    };
};
export interface IPageController {
    initialPage: number;
    keepPage: boolean;
    viewportFraction: number;
    keepScrollOffset: boolean;
    debugLabel: string | undefined;
    getPage: () => number | undefined;
    animateToPage: (
        page: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void>;
    jumpToPage: (page: number) => void;
    nextPage: (props: { curve: ICurve; duration: IDuration }) => IFuture<void>;
    previousPage: (props: {
        curve: ICurve;
        duration: IDuration;
    }) => IFuture<void>;
    createScrollPosition: (
        physics: IScrollPhysics,
        context: IScrollContext,
        oldPosition?: IScrollPosition | undefined
    ) => IScrollPosition;
    attach: (position: IScrollPosition) => void;
    animateTo: (
        offset: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void>;
    jumpTo: (value: number) => void;
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
export class PageController implements IScrollController, IListenable {
    public readonly initialPage: number = undefined as any;
    public readonly keepPage: boolean = undefined as any;
    public readonly viewportFraction: number = undefined as any;
    public readonly keepScrollOffset: boolean = undefined as any;
    public readonly debugLabel: string | undefined = undefined as any;
    public constructor(props: {
        initialPage?: number;
        keepPage?: boolean;
        viewportFraction?: number;
    }) {
        flutter.widgets.pageController(this, {
            ...pageControllerDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getPage: () => number | undefined = undefined as any;
    private readonly _dart_animateToPage: (
        page: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_jumpToPage: (page: number) => void =
        undefined as any;
    private readonly _dart_nextPage: (props: {
        curve: ICurve;
        duration: IDuration;
    }) => IFuture<void> = undefined as any;
    private readonly _dart_previousPage: (props: {
        curve: ICurve;
        duration: IDuration;
    }) => IFuture<void> = undefined as any;
    private readonly _dart_createScrollPosition: (
        physics: IScrollPhysics,
        context: IScrollContext,
        oldPosition?: IScrollPosition | undefined
    ) => IScrollPosition = undefined as any;
    private readonly _dart_attach: (position: IScrollPosition) => void =
        undefined as any;
    private readonly _dart_animateTo: (
        offset: number,
        props: { curve: ICurve; duration: IDuration }
    ) => IFuture<void> = undefined as any;
    private readonly _dart_jumpTo: (value: number) => void = undefined as any;
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
    public getPage(): number | undefined {
        return this._dart_getPage();
    }
    public animateToPage(
        page: number,
        props: { curve: ICurve; duration: IDuration }
    ): IFuture<void> {
        return this._dart_animateToPage(page, props);
    }
    public jumpToPage(page: number): void {
        return this._dart_jumpToPage(page);
    }
    public nextPage(props: {
        curve: ICurve;
        duration: IDuration;
    }): IFuture<void> {
        return this._dart_nextPage(props);
    }
    public previousPage(props: {
        curve: ICurve;
        duration: IDuration;
    }): IFuture<void> {
        return this._dart_previousPage(props);
    }
    public createScrollPosition(
        physics: IScrollPhysics,
        context: IScrollContext,
        oldPosition?: IScrollPosition | undefined
    ): IScrollPosition {
        return this._dart_createScrollPosition(physics, context, oldPosition);
    }
    public attach(position: IScrollPosition): void {
        return this._dart_attach(position);
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
const pageControllerDefaultProps = {
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1.0,
};
