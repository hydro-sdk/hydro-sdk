import { IList } from "../../dart/core/list";
import { ISize } from "../../dart/ui/size";
import { I_PathFrames } from "./_pathFrames";
import { IAnimatedIconData } from "./animatedIconData";
declare const flutter: {
    material: {
        _animatedIconData: (
            this: void,
            _animatedIconData: I_AnimatedIconData,
            size: ISize,
            paths: IList<I_PathFrames>,
            props: { matchTextDirection: boolean }
        ) => I_AnimatedIconData;
    };
};
export interface I_AnimatedIconData {
    size: ISize;
    paths: IList<I_PathFrames>;
    matchTextDirection: boolean;
    getMatchTextDirection: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _AnimatedIconData implements IAnimatedIconData {
    public readonly size: ISize = undefined as any;
    public readonly paths: IList<I_PathFrames> = undefined as any;
    public readonly matchTextDirection: boolean = undefined as any;
    public constructor(
        size: ISize,
        paths: IList<I_PathFrames>,
        props: { matchTextDirection?: boolean }
    ) {
        flutter.material._animatedIconData(this, size, paths, {
            ..._animatedIconDataDefaultProps,
            ...props,
        });
    }
    private readonly _dart_getMatchTextDirection: () => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getMatchTextDirection(): boolean {
        return this._dart_getMatchTextDirection();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
const _animatedIconDataDefaultProps = {
    matchTextDirection: false,
};
