import { Future } from "../dart/async/future";
import { Response } from "./response";

export function get(
    url: string,
    props?: {
        headers?: {
            [i: string]: string
        }
    }): Future<Response> {
    return http.get(url, props);
}

declare const http: {
    get: (this: void, ...args: Parameters<typeof get>) => ReturnType<typeof get>
}