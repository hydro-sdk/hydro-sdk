import { IListBase } from "../collection/listBase";
import { IListMixin } from "../collection/listMixin";
import { IUnmodifiableListMixin } from "./unmodifiableListMixin";
export interface IUnmodifiableListBase<E>
    extends Omit<
            IListBase<E>,
            | "forEach"
            | "contains"
            | "join"
            | "whereType"
            | "map"
            | "reduce"
            | "skipWhile"
            | "takeWhile"
            | "toList"
            | "add"
            | "remove"
            | "clear"
            | "cast"
            | "sort"
            | "shuffle"
            | "asMap"
            | "sublist"
            | "getRange"
            | "removeRange"
            | "fillRange"
            | "setRange"
            | "replaceRange"
            | "indexOf"
            | "indexWhere"
            | "lastIndexOf"
            | "lastIndexWhere"
            | "insertAll"
            | "setAll"
            | "toString"
            | "iterator"
            | "isEmpty"
            | "isNotEmpty"
            | "first="
            | "last="
            | "reversed"
            | "length="
        >,
        IUnmodifiableListMixin<E> {}
