
import { IList } from "../../dart/core/list";
declare const flutter: {
foundation: {
category: (this: void, category: ICategory, sections: IList<string>) => ICategory
}
};
export interface ICategory


{
sections: IList<string>;
}export class Category


{    public readonly sections: IList<string> = undefined as any;
public constructor(sections: IList<string>){
flutter.foundation.category(this, sections);}
}
