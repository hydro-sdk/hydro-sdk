
declare const flutter: {
foundation: {
abstractNode: (this: void, abstractNode: IAbstractNode) => IAbstractNode
}
};
export interface IAbstractNode


{
getDepth: () => number;
redepthChild: (child: IAbstractNode) => void;
redepthChildren: () => void;
getOwner: () => Object | undefined;
getAttached: () => boolean;
attach: (owner: unknown) => void;
detach: () => void;
getParent: () => IAbstractNode | undefined;
adoptChild: (child: unknown) => void;
dropChild: (child: unknown) => void;
}export class AbstractNode


{public constructor(){
flutter.foundation.abstractNode(this);}
    private readonly _dart_getDepth: () => number = undefined as any;
    private readonly _dart_redepthChild: (child: IAbstractNode) => void = undefined as any;
    private readonly _dart_redepthChildren: () => void = undefined as any;
    private readonly _dart_getOwner: () => Object | undefined = undefined as any;
    private readonly _dart_getAttached: () => boolean = undefined as any;
    private readonly _dart_attach: (owner: any) => void = undefined as any;
    private readonly _dart_detach: () => void = undefined as any;
    private readonly _dart_getParent: () => IAbstractNode | undefined = undefined as any;
    private readonly _dart_adoptChild: (child: any) => void = undefined as any;
    private readonly _dart_dropChild: (child: any) => void = undefined as any;
public getDepth() : number {
    return this._dart_getDepth();
}
public redepthChild(child: IAbstractNode) : void {
    return this._dart_redepthChild(child);
}
public redepthChildren() : void {
    return this._dart_redepthChildren();
}
public getOwner() : Object | undefined {
    return this._dart_getOwner();
}
public getAttached() : boolean {
    return this._dart_getAttached();
}
public attach(owner: any) : void {
    return this._dart_attach(owner);
}
public detach() : void {
    return this._dart_detach();
}
public getParent() : IAbstractNode | undefined {
    return this._dart_getParent();
}
public adoptChild(child: any) : void {
    return this._dart_adoptChild(child);
}
public dropChild(child: any) : void {
    return this._dart_dropChild(child);
}
}
