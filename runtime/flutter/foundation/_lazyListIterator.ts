
import { ICachingIterable } from "./cachingIterable";
import { IIterator } from "../../dart/core/iterator";
declare const flutter: {
foundation: {
_lazyListIterator: <E>(this: void, _lazyListIterator: I_LazyListIterator<E>, _owner: ICachingIterable<E>) => I_LazyListIterator<E>
}
};
export interface I_LazyListIterator
<E>

{
getCurrent: () => E;
moveNext: () => boolean;
}export class _LazyListIterator
<E>
 implements IIterator<E>
{public constructor(_owner: ICachingIterable<E>){
flutter.foundation._lazyListIterator(this, _owner);}
    private readonly _dart_getCurrent: () => E = undefined as any;
    private readonly _dart_moveNext: () => boolean = undefined as any;
public getCurrent() : E {
    return this._dart_getCurrent();
}
public moveNext() : boolean {
    return this._dart_moveNext();
}
}
