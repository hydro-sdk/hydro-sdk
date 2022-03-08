import { IChangeNotifier } from "../foundation/changeNotifier";
import { IListenable } from "../foundation/listenable";
import { IValueListenable } from "../foundation/valueListenable";
import { IBuildContext } from "../widgets/buildContext";
import { IScaffoldGeometry } from "./scaffoldGeometry";
declare const flutter: {
    material: {
        _scaffoldGeometryNotifier: (
            this: void,
            _scaffoldGeometryNotifier: I_ScaffoldGeometryNotifier,
            geometry: IScaffoldGeometry,
            context: IBuildContext
        ) => I_ScaffoldGeometryNotifier;
    };
};
export interface I_ScaffoldGeometryNotifier {
    context: IBuildContext;
    floatingActionButtonScale: number | undefined;
    geometry: IScaffoldGeometry;
    getValue: () => IScaffoldGeometry;
    addListener: (listener: () => void) => void;
    removeListener: (listener: () => void) => void;
    dispose: () => void;
    getHasListeners: () => boolean;
    toString: () => string;
    getHashCode: () => number;
}
export class _ScaffoldGeometryNotifier
    implements
        IChangeNotifier,
        IValueListenable<IScaffoldGeometry>,
        IListenable
{
    public readonly context: IBuildContext = undefined as any;
    public readonly floatingActionButtonScale: number | undefined =
        undefined as any;
    public readonly geometry: IScaffoldGeometry = undefined as any;
    public constructor(geometry: IScaffoldGeometry, context: IBuildContext) {
        flutter.material._scaffoldGeometryNotifier(this, geometry, context);
    }
    private readonly _dart_getValue: () => IScaffoldGeometry = undefined as any;
    private readonly _dart_addListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_removeListener: (listener: () => void) => void =
        undefined as any;
    private readonly _dart_dispose: () => void = undefined as any;
    private readonly _dart_notifyListeners: () => void = undefined as any;
    private readonly _dart_getHasListeners: () => boolean = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public getValue(): IScaffoldGeometry {
        return this._dart_getValue();
    }
    public addListener(listener: () => void): void {
        return this._dart_addListener(listener);
    }
    public removeListener(listener: () => void): void {
        return this._dart_removeListener(listener);
    }
    public dispose(): void {
        return this._dart_dispose();
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
