import { Category } from "./category";

export class Product {
    public category: Category;
    public id: number;
    public isFeatured: boolean;
    public name: string;
    public price: number;

    public constructor(props: {
        category: Category;
        id: number;
        isFeatured: boolean;
        name: string;
        price: number;
    }) {
        this.category = props.category;
        this.id = props.id;
        this.isFeatured = props.isFeatured;
        this.name = props.name;
        this.price = props.price;
    }

    public assetName = () => `https://raw.githubusercontent.com/material-components/material-components-flutter-codelabs-packages/develop/shrine_images/lib/${this.id}-0.jpg`;
}