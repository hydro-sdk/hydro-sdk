
declare const flutter: {
foundation: {
key: (this: void, key: IKey, value: string) => IKey
}
};
export interface IKey


{
}export class Key


{public constructor(value: string){
flutter.foundation.key(this, value);}
}
