
import { IListenable } from "./listenable";
export interface IValueListenable
<T>
 extends IListenable
{
getValue: () => T;
}