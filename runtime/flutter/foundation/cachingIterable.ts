
import { IIterator } from "../../dart/core/iterator";
import { IIterableBase } from "../../dart/collection/iterableBase";
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { ISet } from "../../dart/core/set";
declare const flutter: {
foundation: {
cachingIterable: <E>(this: void, cachingIterable: ICachingIterable<E>, _prefillIterator: IIterator<E>) => ICachingIterable<E>
}
};
export interface ICachingIterable
<E>

{
getIterator: () => IIterator<E>;
map: <T>(toElement : (e: E) => T) => IIterable<T>;
where: (test : (element: E) => boolean) => IIterable<E>;
expand: <T>(toElements : (element: E) => IIterable<T>) => IIterable<T>;
take: (count: number) => IIterable<E>;
takeWhile: (test : (value: E) => boolean) => IIterable<E>;
skip: (count: number) => IIterable<E>;
skipWhile: (test : (value: E) => boolean) => IIterable<E>;
getLength: () => number;
toList: ( props : {  growable : boolean,}) => IList<E>;
cast: <R>() => IIterable<R>;
followedBy: (other: IIterable<E>) => IIterable<E>;
whereType: <T>() => IIterable<T>;
contains: (element?: Object | undefined) => boolean;
forEach: (action : (element: E) => void) => void;
reduce: (combine : (value: E, element: E) => E) => E;
fold: <T>(initialValue: T, combine : (previousValue: T, element: E) => T) => T;
every: (test : (element: E) => boolean) => boolean;
join: (separator: string) => string;
any: (test : (element: E) => boolean) => boolean;
toSet: () => ISet<E>;
firstWhere: (test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) => E;
lastWhere: (test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) => E;
singleWhere: (test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) => E;
elementAt: (index: number) => E;
toString: () => string;
getIsEmpty: () => boolean;
getIsNotEmpty: () => boolean;
getFirst: () => E;
getLast: () => E;
getSingle: () => E;
getHashCode: () => number;
}export class CachingIterable
<E>
 implements IIterableBase<E>
{public constructor(_prefillIterator: IIterator<E>){
flutter.foundation.cachingIterable(this, _prefillIterator);}
    private readonly _dart_getIterator: () => IIterator<E> = undefined as any;
    private readonly _dart_map: <T>(toElement : (e: E) => T) => IIterable<T> = undefined as any;
    private readonly _dart_where: (test : (element: E) => boolean) => IIterable<E> = undefined as any;
    private readonly _dart_expand: <T>(toElements : (element: E) => IIterable<T>) => IIterable<T> = undefined as any;
    private readonly _dart_take: (count: number) => IIterable<E> = undefined as any;
    private readonly _dart_takeWhile: (test : (value: E) => boolean) => IIterable<E> = undefined as any;
    private readonly _dart_skip: (count: number) => IIterable<E> = undefined as any;
    private readonly _dart_skipWhile: (test : (value: E) => boolean) => IIterable<E> = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_toList: ( props : {  growable : boolean,}) => IList<E> = undefined as any;
    private readonly _dart_cast: <R>() => IIterable<R> = undefined as any;
    private readonly _dart_followedBy: (other: IIterable<E>) => IIterable<E> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_contains: (element?: Object | undefined) => boolean = undefined as any;
    private readonly _dart_forEach: (action : (element: E) => void) => void = undefined as any;
    private readonly _dart_reduce: (combine : (value: E, element: E) => E) => E = undefined as any;
    private readonly _dart_fold: <T>(initialValue: T, combine : (previousValue: T, element: E) => T) => T = undefined as any;
    private readonly _dart_every: (test : (element: E) => boolean) => boolean = undefined as any;
    private readonly _dart_join: (separator: string) => string = undefined as any;
    private readonly _dart_any: (test : (element: E) => boolean) => boolean = undefined as any;
    private readonly _dart_toSet: () => ISet<E> = undefined as any;
    private readonly _dart_firstWhere: (test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) => E = undefined as any;
    private readonly _dart_lastWhere: (test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) => E = undefined as any;
    private readonly _dart_singleWhere: (test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) => E = undefined as any;
    private readonly _dart_elementAt: (index: number) => E = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_getFirst: () => E = undefined as any;
    private readonly _dart_getLast: () => E = undefined as any;
    private readonly _dart_getSingle: () => E = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public getIterator() : IIterator<E> {
    return this._dart_getIterator();
}
public map<T>(toElement : (e: E) => T) : IIterable<T> {
    return this._dart_map(toElement);
}
public where(test : (element: E) => boolean) : IIterable<E> {
    return this._dart_where(test);
}
public expand<T>(toElements : (element: E) => IIterable<T>) : IIterable<T> {
    return this._dart_expand(toElements);
}
public take(count: number) : IIterable<E> {
    return this._dart_take(count);
}
public takeWhile(test : (value: E) => boolean) : IIterable<E> {
    return this._dart_takeWhile(test);
}
public skip(count: number) : IIterable<E> {
    return this._dart_skip(count);
}
public skipWhile(test : (value: E) => boolean) : IIterable<E> {
    return this._dart_skipWhile(test);
}
public getLength() : number {
    return this._dart_getLength();
}
public toList( props : {  growable? : boolean,}) : IList<E> {
    return this._dart_toList({
...toListDefaultProps,
...props
});
}
public cast<R>() : IIterable<R> {
    return this._dart_cast();
}
public followedBy(other: IIterable<E>) : IIterable<E> {
    return this._dart_followedBy(other);
}
public whereType<T>() : IIterable<T> {
    return this._dart_whereType();
}
public contains(element?: Object | undefined) : boolean {
    return this._dart_contains(element);
}
public forEach(action : (element: E) => void) : void {
    return this._dart_forEach(action);
}
public reduce(combine : (value: E, element: E) => E) : E {
    return this._dart_reduce(combine);
}
public fold<T>(initialValue: T, combine : (previousValue: T, element: E) => T) : T {
    return this._dart_fold(initialValue, combine);
}
public every(test : (element: E) => boolean) : boolean {
    return this._dart_every(test);
}
public join(separator: string = "") : string {
    return this._dart_join(separator);
}
public any(test : (element: E) => boolean) : boolean {
    return this._dart_any(test);
}
public toSet() : ISet<E> {
    return this._dart_toSet();
}
public firstWhere(test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) : E {
    return this._dart_firstWhere(test, props);
}
public lastWhere(test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) : E {
    return this._dart_lastWhere(test, props);
}
public singleWhere(test : (element: E) => boolean, props? : {  orElse? : () => E | undefined,}) : E {
    return this._dart_singleWhere(test, props);
}
public elementAt(index: number) : E {
    return this._dart_elementAt(index);
}
public toString() : string {
    return this._dart_toString();
}
public getIsEmpty() : boolean {
    return this._dart_getIsEmpty();
}
public getIsNotEmpty() : boolean {
    return this._dart_getIsNotEmpty();
}
public getFirst() : E {
    return this._dart_getFirst();
}
public getLast() : E {
    return this._dart_getLast();
}
public getSingle() : E {
    return this._dart_getSingle();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toListDefaultProps = {
    growable: true,
};
