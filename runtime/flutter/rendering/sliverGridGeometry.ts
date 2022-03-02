import { IBoxConstraints } from "./boxConstraints";
import { ISliverConstraints } from "./sliverConstraints";
declare const flutter: {
    rendering: {
        sliverGridGeometry: (
            this: void,
            sliverGridGeometry: ISliverGridGeometry,
            props: {
                crossAxisExtent: number;
                crossAxisOffset: number;
                mainAxisExtent: number;
                scrollOffset: number;
            }
        ) => ISliverGridGeometry;
    };
};
export interface ISliverGridGeometry {
    scrollOffset: number;
    crossAxisOffset: number;
    mainAxisExtent: number;
    crossAxisExtent: number;
    getTrailingScrollOffset: () => number;
    getBoxConstraints: (constraints: ISliverConstraints) => IBoxConstraints;
    toString: () => string;
}
export class SliverGridGeometry {
    public readonly scrollOffset: number = undefined as any;
    public readonly crossAxisOffset: number = undefined as any;
    public readonly mainAxisExtent: number = undefined as any;
    public readonly crossAxisExtent: number = undefined as any;
    public constructor(props: {
        crossAxisExtent: number;
        crossAxisOffset: number;
        mainAxisExtent: number;
        scrollOffset: number;
    }) {
        flutter.rendering.sliverGridGeometry(this, props);
    }
    private readonly _dart_getTrailingScrollOffset: () => number =
        undefined as any;
    private readonly _dart_getBoxConstraints: (
        constraints: ISliverConstraints
    ) => IBoxConstraints = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getTrailingScrollOffset(): number {
        return this._dart_getTrailingScrollOffset();
    }
    public getBoxConstraints(constraints: ISliverConstraints): IBoxConstraints {
        return this._dart_getBoxConstraints(constraints);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
