
import { IIterable } from "../../dart/core/iterable";
import { IList } from "../../dart/core/list";
import { ISet } from "../../dart/core/set";
import { IIterator } from "../../dart/core/iterator";
declare const flutter: {
foundation: {
hashedObserverList: <T>(this: void, hashedObserverList: IHashedObserverList<T>) => IHashedObserverList<T>
}
};
export interface IHashedObserverList
<T>

{
add: (item: T) => void;
remove: (item: T) => boolean;
contains: (element?: Object | undefined) => boolean;
getIterator: () => IIterator<T>;
getIsEmpty: () => boolean;
getIsNotEmpty: () => boolean;
cast: <R>() => IIterable<R>;
followedBy: (other: IIterable<T>) => IIterable<T>;
map: <T>(toElement : (e: T) => T) => IIterable<T>;
where: (test : (element: T) => boolean) => IIterable<T>;
whereType: <T>() => IIterable<T>;
expand: <T>(toElements : (element: T) => IIterable<T>) => IIterable<T>;
forEach: (action : (element: T) => void) => void;
reduce: (combine : (value: T, element: T) => T) => T;
fold: <T>(initialValue: T, combine : (previousValue: T, element: T) => T) => T;
every: (test : (element: T) => boolean) => boolean;
join: (separator: string) => string;
any: (test : (element: T) => boolean) => boolean;
toList: ( props : {  growable : boolean,}) => IList<T>;
toSet: () => ISet<T>;
take: (count: number) => IIterable<T>;
takeWhile: (test : (value: T) => boolean) => IIterable<T>;
skip: (count: number) => IIterable<T>;
skipWhile: (test : (value: T) => boolean) => IIterable<T>;
firstWhere: (test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) => T;
lastWhere: (test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) => T;
singleWhere: (test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) => T;
elementAt: (index: number) => T;
toString: () => string;
getLength: () => number;
getFirst: () => T;
getLast: () => T;
getSingle: () => T;
getHashCode: () => number;
}export class HashedObserverList
<T>
 implements IIterable<T>
{public constructor(){
flutter.foundation.hashedObserverList(this);}
    private readonly _dart_add: (item: T) => void = undefined as any;
    private readonly _dart_remove: (item: T) => boolean = undefined as any;
    private readonly _dart_contains: (element?: Object | undefined) => boolean = undefined as any;
    private readonly _dart_getIterator: () => IIterator<T> = undefined as any;
    private readonly _dart_getIsEmpty: () => boolean = undefined as any;
    private readonly _dart_getIsNotEmpty: () => boolean = undefined as any;
    private readonly _dart_cast: <R>() => IIterable<R> = undefined as any;
    private readonly _dart_followedBy: (other: IIterable<T>) => IIterable<T> = undefined as any;
    private readonly _dart_map: <T>(toElement : (e: T) => T) => IIterable<T> = undefined as any;
    private readonly _dart_where: (test : (element: T) => boolean) => IIterable<T> = undefined as any;
    private readonly _dart_whereType: <T>() => IIterable<T> = undefined as any;
    private readonly _dart_expand: <T>(toElements : (element: T) => IIterable<T>) => IIterable<T> = undefined as any;
    private readonly _dart_forEach: (action : (element: T) => void) => void = undefined as any;
    private readonly _dart_reduce: (combine : (value: T, element: T) => T) => T = undefined as any;
    private readonly _dart_fold: <T>(initialValue: T, combine : (previousValue: T, element: T) => T) => T = undefined as any;
    private readonly _dart_every: (test : (element: T) => boolean) => boolean = undefined as any;
    private readonly _dart_join: (separator: string) => string = undefined as any;
    private readonly _dart_any: (test : (element: T) => boolean) => boolean = undefined as any;
    private readonly _dart_toList: ( props : {  growable : boolean,}) => IList<T> = undefined as any;
    private readonly _dart_toSet: () => ISet<T> = undefined as any;
    private readonly _dart_take: (count: number) => IIterable<T> = undefined as any;
    private readonly _dart_takeWhile: (test : (value: T) => boolean) => IIterable<T> = undefined as any;
    private readonly _dart_skip: (count: number) => IIterable<T> = undefined as any;
    private readonly _dart_skipWhile: (test : (value: T) => boolean) => IIterable<T> = undefined as any;
    private readonly _dart_firstWhere: (test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) => T = undefined as any;
    private readonly _dart_lastWhere: (test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) => T = undefined as any;
    private readonly _dart_singleWhere: (test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) => T = undefined as any;
    private readonly _dart_elementAt: (index: number) => T = undefined as any;
    private readonly _dart_toString: () => string = undefined as any;
    private readonly _dart_getLength: () => number = undefined as any;
    private readonly _dart_getFirst: () => T = undefined as any;
    private readonly _dart_getLast: () => T = undefined as any;
    private readonly _dart_getSingle: () => T = undefined as any;
    private readonly _dart_getHashCode: () => number = undefined as any;
public add(item: T) : void {
    return this._dart_add(item);
}
public remove(item: T) : boolean {
    return this._dart_remove(item);
}
public contains(element?: Object | undefined) : boolean {
    return this._dart_contains(element);
}
public getIterator() : IIterator<T> {
    return this._dart_getIterator();
}
public getIsEmpty() : boolean {
    return this._dart_getIsEmpty();
}
public getIsNotEmpty() : boolean {
    return this._dart_getIsNotEmpty();
}
public cast<R>() : IIterable<R> {
    return this._dart_cast();
}
public followedBy(other: IIterable<T>) : IIterable<T> {
    return this._dart_followedBy(other);
}
public map<T>(toElement : (e: T) => T) : IIterable<T> {
    return this._dart_map(toElement);
}
public where(test : (element: T) => boolean) : IIterable<T> {
    return this._dart_where(test);
}
public whereType<T>() : IIterable<T> {
    return this._dart_whereType();
}
public expand<T>(toElements : (element: T) => IIterable<T>) : IIterable<T> {
    return this._dart_expand(toElements);
}
public forEach(action : (element: T) => void) : void {
    return this._dart_forEach(action);
}
public reduce(combine : (value: T, element: T) => T) : T {
    return this._dart_reduce(combine);
}
public fold<T>(initialValue: T, combine : (previousValue: T, element: T) => T) : T {
    return this._dart_fold(initialValue, combine);
}
public every(test : (element: T) => boolean) : boolean {
    return this._dart_every(test);
}
public join(separator: string = "") : string {
    return this._dart_join(separator);
}
public any(test : (element: T) => boolean) : boolean {
    return this._dart_any(test);
}
public toList( props : {  growable? : boolean,}) : IList<T> {
    return this._dart_toList({
...toListDefaultProps,
...props
});
}
public toSet() : ISet<T> {
    return this._dart_toSet();
}
public take(count: number) : IIterable<T> {
    return this._dart_take(count);
}
public takeWhile(test : (value: T) => boolean) : IIterable<T> {
    return this._dart_takeWhile(test);
}
public skip(count: number) : IIterable<T> {
    return this._dart_skip(count);
}
public skipWhile(test : (value: T) => boolean) : IIterable<T> {
    return this._dart_skipWhile(test);
}
public firstWhere(test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) : T {
    return this._dart_firstWhere(test, props);
}
public lastWhere(test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) : T {
    return this._dart_lastWhere(test, props);
}
public singleWhere(test : (element: T) => boolean, props? : {  orElse? : () => T | undefined,}) : T {
    return this._dart_singleWhere(test, props);
}
public elementAt(index: number) : T {
    return this._dart_elementAt(index);
}
public toString() : string {
    return this._dart_toString();
}
public getLength() : number {
    return this._dart_getLength();
}
public getFirst() : T {
    return this._dart_getFirst();
}
public getLast() : T {
    return this._dart_getLast();
}
public getSingle() : T {
    return this._dart_getSingle();
}
public getHashCode() : number {
    return this._dart_getHashCode();
}
}
const toListDefaultProps = {
    growable: true,
};
