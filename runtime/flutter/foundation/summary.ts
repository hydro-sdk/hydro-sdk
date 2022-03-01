
declare const flutter: {
foundation: {
summary: (this: void, summary: ISummary, text: string) => ISummary
}
};
export interface ISummary


{
text: string;
}export class Summary


{    public readonly text: string = undefined as any;
public constructor(text: string){
flutter.foundation.summary(this, text);}
}
