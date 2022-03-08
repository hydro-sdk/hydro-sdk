import { IRect } from "../../dart/ui/rect";
declare const flutter: {
    material: {
        scaffoldGeometry: (
            this: void,
            scaffoldGeometry: IScaffoldGeometry,
            props?: {
                bottomNavigationBarTop?: number | undefined;
                floatingActionButtonArea?: IRect | undefined;
            }
        ) => IScaffoldGeometry;
    };
};
export interface IScaffoldGeometry {
    bottomNavigationBarTop: number | undefined;
    floatingActionButtonArea: IRect | undefined;
    copyWith: (props?: {
        bottomNavigationBarTop?: number | undefined;
        floatingActionButtonArea?: IRect | undefined;
    }) => IScaffoldGeometry;
}
export class ScaffoldGeometry {
    public readonly bottomNavigationBarTop: number | undefined =
        undefined as any;
    public readonly floatingActionButtonArea: IRect | undefined =
        undefined as any;
    public constructor(props?: {
        bottomNavigationBarTop?: number | undefined;
        floatingActionButtonArea?: IRect | undefined;
    }) {
        flutter.material.scaffoldGeometry(this, props);
    }
    private readonly _dart_copyWith: (props?: {
        bottomNavigationBarTop?: number | undefined;
        floatingActionButtonArea?: IRect | undefined;
    }) => IScaffoldGeometry = undefined as any;
    public copyWith(props?: {
        bottomNavigationBarTop?: number | undefined;
        floatingActionButtonArea?: IRect | undefined;
    }): IScaffoldGeometry {
        return this._dart_copyWith(props);
    }
}
