import { BuildOptions } from "../buildOptions";
import {BundleEntry} from "./bundleEntry";

export type BundleInfo = BuildOptions & { entries: Array<BundleEntry>; }