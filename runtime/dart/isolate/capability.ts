declare const dart: {
    isolate: {
        capability: (this: void, capability: ICapability) => ICapability;
    };
};
export interface ICapability {}
export class Capability {
    public constructor() {
        dart.isolate.capability(this);
    }
}
