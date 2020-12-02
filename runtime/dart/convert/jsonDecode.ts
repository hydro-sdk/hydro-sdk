declare const dart: {
    convert: {
        jsonDecode: (this: void, source: string) => any;
    };
};

export function jsonDecode(source: string): any {
    return dart.convert.jsonDecode(source);
}
