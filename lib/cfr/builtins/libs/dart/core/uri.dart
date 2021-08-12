import 'dart:convert';
import 'dart:core';

import 'package:hydro_sdk/cfr/runtimeSupport.dart';

class VMManagedUri extends VMManagedBox<Uri> {
  VMManagedUri(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['getScheme'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.scheme,
      ];
    });
    table['getAuthority'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.authority,
      ];
    });
    table['getUserInfo'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.userInfo,
      ];
    });
    table['getHost'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.host,
      ];
    });
    table['getPort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.port,
      ];
    });
    table['getPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.path,
      ];
    });
    table['getQuery'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.query,
      ];
    });
    table['getFragment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.fragment,
      ];
    });
    table['getPathSegments'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<List<dynamic>>(
            object: vmObject.pathSegments,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getQueryParameters'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.queryParameters,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getQueryParametersAll'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Map>(
            object: vmObject.queryParametersAll,
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['getIsAbsolute'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isAbsolute,
      ];
    });
    table['getHasScheme'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasScheme,
      ];
    });
    table['getHasAuthority'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasAuthority,
      ];
    });
    table['getHasPort'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasPort,
      ];
    });
    table['getHasQuery'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasQuery,
      ];
    });
    table['getHasFragment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasFragment,
      ];
    });
    table['getHasEmptyPath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasEmptyPath,
      ];
    });
    table['getHasAbsolutePath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hasAbsolutePath,
      ];
    });
    table['getOrigin'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.origin,
      ];
    });
    table['isScheme'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.isScheme(luaCallerArguments[1]),
      ];
    });
    table['toFilePath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toFilePath(windows: luaCallerArguments[1]['windows']),
      ];
    });
    table['getData'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      final returnValue = vmObject.data;
      if (returnValue != null) {
        return [
          maybeBoxObject<UriData?>(
              object: returnValue, hydroState: hydroState, table: HydroTable()),
        ];
      }
      return [];
    });
    table['getHashCode'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.hashCode,
      ];
    });
    table['toString'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        vmObject.toString(),
      ];
    });
    table['replace'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uri>(
            object: vmObject.replace(
                fragment: luaCallerArguments[1]['fragment'],
                host: luaCallerArguments[1]['host'],
                path: luaCallerArguments[1]['path'],
                pathSegments: maybeUnBoxAndBuildArgument<Iterable<String>?>(
                    luaCallerArguments[1]['pathSegments'],
                    parentState: hydroState),
                port: luaCallerArguments[1]['port'],
                query: luaCallerArguments[1]['query'],
                queryParameters:
                    maybeUnBoxAndBuildArgument<Map<String, dynamic>?>(
                        luaCallerArguments[1]['queryParameters'],
                        parentState: hydroState),
                scheme: luaCallerArguments[1]['scheme'],
                userInfo: luaCallerArguments[1]['userInfo']),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['removeFragment'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uri>(
            object: vmObject.removeFragment(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['resolve'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uri>(
            object: vmObject.resolve(luaCallerArguments[1]),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['resolveUri'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uri>(
            object: vmObject.resolveUri(maybeUnBoxAndBuildArgument<Uri>(
                luaCallerArguments[1],
                parentState: hydroState)),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
    table['normalizePath'] =
        makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
      return [
        maybeBoxObject<Uri>(
            object: vmObject.normalizePath(),
            hydroState: hydroState,
            table: HydroTable()),
      ];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final Uri vmObject;
}

void loadUri({required HydroState hydroState, required HydroTable table}) {
  table['uri'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri(
              fragment: luaCallerArguments[1]['fragment'],
              host: luaCallerArguments[1]['host'],
              path: luaCallerArguments[1]['path'],
              pathSegments: maybeUnBoxAndBuildArgument<Iterable<String>?>(
                  luaCallerArguments[1]['pathSegments'],
                  parentState: hydroState),
              port: luaCallerArguments[1]['port'],
              query: luaCallerArguments[1]['query'],
              queryParameters:
                  maybeUnBoxAndBuildArgument<Map<String, dynamic>?>(
                      luaCallerArguments[1]['queryParameters'],
                      parentState: hydroState),
              scheme: luaCallerArguments[1]['scheme'],
              userInfo: luaCallerArguments[1]['userInfo']),
          hydroState: hydroState,
          table: luaCallerArguments[0])
    ];
  });
  table['uriHttp'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri.http(
              luaCallerArguments[1],
              luaCallerArguments[2],
              maybeUnBoxAndBuildArgument<Map<String, dynamic>?>(
                  luaCallerArguments[3],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriHttps'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri.https(
              luaCallerArguments[1],
              luaCallerArguments[2],
              maybeUnBoxAndBuildArgument<Map<String, dynamic>?>(
                  luaCallerArguments[3],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriFile'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri.file(luaCallerArguments[1],
              windows: luaCallerArguments[2]['windows']),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriDirectory'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri.directory(luaCallerArguments[1],
              windows: luaCallerArguments[2]['windows']),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriDataFromString'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri.dataFromString(luaCallerArguments[1],
              base64: luaCallerArguments[2]['base64'],
              encoding: maybeUnBoxAndBuildArgument<Encoding?>(
                  luaCallerArguments[2]['encoding'],
                  parentState: hydroState),
              mimeType: luaCallerArguments[2]['mimeType'],
              parameters: maybeUnBoxAndBuildArgument<Map<String, String>?>(
                  luaCallerArguments[2]['parameters'],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriDataFromBytes'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri.dataFromBytes(
              maybeUnBoxAndBuildArgument<List<int>>(luaCallerArguments[1],
                  parentState: hydroState),
              mimeType: luaCallerArguments[2]['mimeType'],
              parameters: maybeUnBoxAndBuildArgument<Map<String, String>?>(
                  luaCallerArguments[2]['parameters'],
                  parentState: hydroState),
              percentEncoded: luaCallerArguments[2]['percentEncoded']),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriBase'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri.base, hydroState: hydroState, table: HydroTable()),
    ];
  });
  table['uriParse'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Uri>(
          object: Uri.parse(luaCallerArguments[1], luaCallerArguments[2],
              luaCallerArguments[3]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriTryParse'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    final returnValue = Uri.tryParse(
        luaCallerArguments[1], luaCallerArguments[2], luaCallerArguments[3]);
    if (returnValue != null) {
      return [
        maybeBoxObject<Uri?>(
            object: returnValue, hydroState: hydroState, table: HydroTable()),
      ];
    }
    return [];
  });
  table['uriEncodeComponent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Uri.encodeComponent(luaCallerArguments[1]),
    ];
  });
  table['uriEncodeQueryComponent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Uri.encodeQueryComponent(luaCallerArguments[1],
          encoding: maybeUnBoxAndBuildArgument<Encoding>(
              luaCallerArguments[2]['encoding'],
              parentState: hydroState)),
    ];
  });
  table['uriDecodeComponent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Uri.decodeComponent(luaCallerArguments[1]),
    ];
  });
  table['uriDecodeQueryComponent'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Uri.decodeQueryComponent(luaCallerArguments[1],
          encoding: maybeUnBoxAndBuildArgument<Encoding>(
              luaCallerArguments[2]['encoding'],
              parentState: hydroState)),
    ];
  });
  table['uriEncodeFull'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Uri.encodeFull(luaCallerArguments[1]),
    ];
  });
  table['uriDecodeFull'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      Uri.decodeFull(luaCallerArguments[1]),
    ];
  });
  table['uriSplitQueryString'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<Map>(
          object: Uri.splitQueryString(luaCallerArguments[1],
              encoding: maybeUnBoxAndBuildArgument<Encoding>(
                  luaCallerArguments[2]['encoding'],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriParseIPv4Address'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: Uri.parseIPv4Address(luaCallerArguments[1]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table['uriParseIPv6Address'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: Uri.parseIPv6Address(luaCallerArguments[1],
              luaCallerArguments[2], luaCallerArguments[3]),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<Uri>(boxer: (
      {required Uri vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedUri(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
