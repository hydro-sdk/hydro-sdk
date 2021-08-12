declare const dart: {
    core: {
        exception: (
            this: void,
            exception: IException,
            message: any
        ) => IException;
    };
};
export interface IException {}
export class Exception {
    public constructor(message: any) {
        dart.core.exception(this, message);
    }
}
