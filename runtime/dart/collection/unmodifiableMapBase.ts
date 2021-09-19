import { I_UnmodifiableMapMixin } from "./_unmodifiableMapMixin";
import { IMapBase } from "./mapBase";
export interface IUnmodifiableMapBase<K, V>
    extends IMapBase<K, V>,
        I_UnmodifiableMapMixin<K, V> {}
