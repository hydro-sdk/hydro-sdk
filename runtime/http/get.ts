import { Future } from "../dart/async/future";
import { Response } from "./response";

declare const http: {
    get: (
        this: void,
        url: string,
        props?: {
            headers?: {
                [i: string]: string;
            };
        }
    ) => Future<Response>;
};

export function get(
    url: string,
    props?: {
        headers?: {
            [i: string]: string;
        };
    }
): Future<Response> {
    return http.get(url, props);
}
