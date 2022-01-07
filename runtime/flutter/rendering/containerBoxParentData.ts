import { IOffset } from "../../dart/ui/offset";
import { IBoxParentData } from "./boxParentData";
import { IContainerParentDataMixin } from "./containerParentDataMixin";
import { IRenderObject } from "./renderObject";
declare const flutter: {
    rendering: {
        containerBoxParentData: <ChildType>(
            this: void,
            containerBoxParentData: IContainerBoxParentData<ChildType>
        ) => IContainerBoxParentData<ChildType>;
    };
};
export interface IContainerBoxParentData<ChildType> {
    previousSibling: ChildType | undefined;
    nextSibling: ChildType | undefined;
    offset: IOffset;
    detach: () => void;
    toString: () => string;
    getHashCode: () => number;
}
export class ContainerBoxParentData<ChildType>
    implements IBoxParentData, IContainerParentDataMixin<ChildType>
{
    public readonly previousSibling: ChildType | undefined = undefined as any;
    public readonly nextSibling: ChildType | undefined = undefined as any;
    public readonly offset: IOffset = undefined as any;
    public constructor() {
        flutter.rendering.containerBoxParentData(this);
    }
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
    public detach(): void {
        return this._dart_detach();
    }
    public toString(): string {
        return this._dart_toString();
    }
    public getHashCode(): number {
        return this._dart_getHashCode();
    }
}
