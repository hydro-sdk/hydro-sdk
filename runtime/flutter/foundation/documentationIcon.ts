
declare const flutter: {
foundation: {
documentationIcon: (this: void, documentationIcon: IDocumentationIcon, url: string) => IDocumentationIcon
}
};
export interface IDocumentationIcon


{
url: string;
}export class DocumentationIcon


{    public readonly url: string = undefined as any;
public constructor(url: string){
flutter.foundation.documentationIcon(this, url);}
}
