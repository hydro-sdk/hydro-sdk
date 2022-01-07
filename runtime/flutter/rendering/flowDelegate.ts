import { ISize } from "../../dart/ui/size";
import { IListenable } from "../foundation/listenable";
import { IBoxConstraints } from "./boxConstraints";
import { IFlowPaintingContext } from "./flowPaintingContext";
declare const flutter: {
    rendering: {
        flowDelegate: (
            this: void,
            flowDelegate: IFlowDelegate,
            props?: { repaint?: IListenable | undefined }
        ) => IFlowDelegate;
    };
};
export interface IFlowDelegate {
    getSize: (constraints: IBoxConstraints) => ISize;
    getConstraintsForChild: (
        i: number,
        constraints: IBoxConstraints
    ) => IBoxConstraints;
    paintChildren: (context: IFlowPaintingContext) => void;
    shouldRelayout: (oldDelegate: unknown) => boolean;
    shouldRepaint: (oldDelegate: unknown) => boolean;
    toString: () => string;
}
export class FlowDelegate {
    public constructor(props?: { repaint?: IListenable | undefined }) {
        flutter.rendering.flowDelegate(this, props);
    }
    private readonly _dart_getSize: (constraints: IBoxConstraints) => ISize =
        undefined as any;
    private readonly _dart_getConstraintsForChild: (
        i: number,
        constraints: IBoxConstraints
    ) => IBoxConstraints = undefined as any;
    private readonly _dart_paintChildren: (
        context: IFlowPaintingContext
    ) => void = undefined as any;
    private readonly _dart_shouldRelayout: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_shouldRepaint: (oldDelegate: any) => boolean =
        undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    public getSize(constraints: IBoxConstraints): ISize {
        return this._dart_getSize(constraints);
    }
    public getConstraintsForChild(
        i: number,
        constraints: IBoxConstraints
    ): IBoxConstraints {
        return this._dart_getConstraintsForChild(i, constraints);
    }
    public paintChildren(context: IFlowPaintingContext): void {
        return this._dart_paintChildren(context);
    }
    public shouldRelayout(oldDelegate: any): boolean {
        return this._dart_shouldRelayout(oldDelegate);
    }
    public shouldRepaint(oldDelegate: any): boolean {
        return this._dart_shouldRepaint(oldDelegate);
    }
    public toString(): string {
        return this._dart_toString();
    }
}
