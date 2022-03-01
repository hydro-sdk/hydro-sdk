
declare const flutter: {
widgets: {
toolbarOptions: (this: void, toolbarOptions: IToolbarOptions, props : {  copy : boolean, cut : boolean, paste : boolean, selectAll : boolean,}) => IToolbarOptions
}
};
export interface IToolbarOptions


{
copy: boolean;
cut: boolean;
paste: boolean;
selectAll: boolean;
}export class ToolbarOptions


{    public readonly copy: boolean = undefined as any;
    public readonly cut: boolean = undefined as any;
    public readonly paste: boolean = undefined as any;
    public readonly selectAll: boolean = undefined as any;
public constructor( props : {  copy? : boolean, cut? : boolean, paste? : boolean, selectAll? : boolean,}){
flutter.widgets.toolbarOptions(this, {
...toolbarOptionsDefaultProps,
...props
});}
}
const toolbarOptionsDefaultProps = {
    copy: false,
    cut: false,
    paste: false,
    selectAll: false,
};
