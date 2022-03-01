
declare const flutter: {
foundation: {
_prefixedStringBuilder: (this: void, _prefixedStringBuilder: I_PrefixedStringBuilder, props : {  wrapWidth? : number | undefined, prefixLineOne : string, prefixOtherLines? : string | undefined,}) => I_PrefixedStringBuilder
}
};
export interface I_PrefixedStringBuilder


{
prefixLineOne: string;
wrapWidth: number | undefined;
getPrefixOtherLines: () => string | undefined;
setPrefixOtherLines: (prefix?: string | undefined) => void;
incrementPrefixOtherLines: (suffix: string, props : {  updateCurrentLine : boolean,}) => void;
getRequiresMultipleLines: () => boolean;
getIsCurrentLineEmpty: () => boolean;
write: (s: string, props : {  allowWrap : boolean,}) => void;
writeRawLines: (lines: string) => void;
writeStretched: (text: string, targetLineLength: number) => void;
build: () => string;
}export class _PrefixedStringBuilder


{    public readonly prefixLineOne: string = undefined as any;
    public readonly wrapWidth: number | undefined = undefined as any;
public constructor( props : {  wrapWidth? : number | undefined, prefixLineOne : string, prefixOtherLines? : string | undefined,}){
flutter.foundation._prefixedStringBuilder(this, props);}
    private readonly _dart_getPrefixOtherLines: () => string | undefined = undefined as any;
    private readonly _dart_setPrefixOtherLines: (prefix?: string | undefined) => void = undefined as any;
    private readonly _dart_incrementPrefixOtherLines: (suffix: string, props : {  updateCurrentLine : boolean,}) => void = undefined as any;
    private readonly _dart_getRequiresMultipleLines: () => boolean = undefined as any;
    private readonly _dart_getIsCurrentLineEmpty: () => boolean = undefined as any;
    private readonly _dart_write: (s: string, props : {  allowWrap : boolean,}) => void = undefined as any;
    private readonly _dart_writeRawLines: (lines: string) => void = undefined as any;
    private readonly _dart_writeStretched: (text: string, targetLineLength: number) => void = undefined as any;
    private readonly _dart_build: () => string = undefined as any;
public getPrefixOtherLines() : string | undefined {
    return this._dart_getPrefixOtherLines();
}
public setPrefixOtherLines(prefix?: string | undefined) : void {
    return this._dart_setPrefixOtherLines(prefix);
}
public incrementPrefixOtherLines(suffix: string, props : {  updateCurrentLine : boolean,}) : void {
    return this._dart_incrementPrefixOtherLines(suffix, props);
}
public getRequiresMultipleLines() : boolean {
    return this._dart_getRequiresMultipleLines();
}
public getIsCurrentLineEmpty() : boolean {
    return this._dart_getIsCurrentLineEmpty();
}
public write(s: string, props : {  allowWrap? : boolean,}) : void {
    return this._dart_write(s, {
...writeDefaultProps,
...props
});
}
public writeRawLines(lines: string) : void {
    return this._dart_writeRawLines(lines);
}
public writeStretched(text: string, targetLineLength: number) : void {
    return this._dart_writeStretched(text, targetLineLength);
}
public build() : string {
    return this._dart_build();
}
}
const writeDefaultProps = {
    allowWrap: false,
};
