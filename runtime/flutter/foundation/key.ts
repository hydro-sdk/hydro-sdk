declare const flutter: {
    foundation: {
        key: (this: void, key: Key, value: string) => Key;
    };
};
export class Key {
    public constructor(value: string) {
        flutter.foundation.key(this, value);
    }
}
