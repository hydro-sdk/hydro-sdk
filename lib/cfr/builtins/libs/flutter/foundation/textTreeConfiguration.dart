import 'dart:core' as _fac9;

import 'package:flutter/src/foundation/diagnostics.dart' as _eaf3;

import 'package:hydro_sdk/cfr/runtimeSupport.dart' as _36c2;

class VMManagedTextTreeConfiguration
    extends _36c2.VMManagedBox<_eaf3.TextTreeConfiguration> {
  VMManagedTextTreeConfiguration(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table['prefixLineOne'] = vmObject.prefixLineOne;
    table['suffixLineOne'] = vmObject.suffixLineOne;
    table['prefixOtherLines'] = vmObject.prefixOtherLines;
    table['prefixLastChildLineOne'] = vmObject.prefixLastChildLineOne;
    table['prefixOtherLinesRootNode'] = vmObject.prefixOtherLinesRootNode;
    table['propertyPrefixIfChildren'] = vmObject.propertyPrefixIfChildren;
    table['propertyPrefixNoChildren'] = vmObject.propertyPrefixNoChildren;
    table['linkCharacter'] = vmObject.linkCharacter;
    table['childLinkSpace'] = vmObject.childLinkSpace;
    table['lineBreak'] = vmObject.lineBreak;
    table['lineBreakProperties'] = vmObject.lineBreakProperties;
    table['beforeName'] = vmObject.beforeName;
    table['afterName'] = vmObject.afterName;
    table['afterDescriptionIfBody'] = vmObject.afterDescriptionIfBody;
    table['afterDescription'] = vmObject.afterDescription;
    table['beforeProperties'] = vmObject.beforeProperties;
    table['afterProperties'] = vmObject.afterProperties;
    table['mandatoryAfterProperties'] = vmObject.mandatoryAfterProperties;
    table['propertySeparator'] = vmObject.propertySeparator;
    table['bodyIndent'] = vmObject.bodyIndent;
    table['showChildren'] = vmObject.showChildren;
    table['addBlankLineIfNoChildren'] = vmObject.addBlankLineIfNoChildren;
    table['isNameOnOwnLine'] = vmObject.isNameOnOwnLine;
    table['footer'] = vmObject.footer;
    table['mandatoryFooter'] = vmObject.mandatoryFooter;
    table['isBlankLineBetweenPropertiesAndChildren'] =
        vmObject.isBlankLineBetweenPropertiesAndChildren;
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _eaf3.TextTreeConfiguration vmObject;
}

class RTManagedTextTreeConfiguration extends _eaf3.TextTreeConfiguration
    implements _36c2.Box<_eaf3.TextTreeConfiguration> {
  RTManagedTextTreeConfiguration(
      {required _fac9.bool addBlankLineIfNoChildren,
      required _fac9.String afterDescription,
      required _fac9.String afterDescriptionIfBody,
      required _fac9.String afterName,
      required _fac9.String afterProperties,
      required _fac9.String beforeName,
      required _fac9.String beforeProperties,
      required _fac9.String bodyIndent,
      required _fac9.String footer,
      required _fac9.bool isBlankLineBetweenPropertiesAndChildren,
      required _fac9.bool isNameOnOwnLine,
      required _fac9.String lineBreak,
      required _fac9.bool lineBreakProperties,
      required _fac9.String mandatoryAfterProperties,
      required _fac9.String mandatoryFooter,
      required _fac9.String propertySeparator,
      required _fac9.bool showChildren,
      required _fac9.String suffixLineOne,
      required _fac9.String linkCharacter,
      required _fac9.String prefixLastChildLineOne,
      required _fac9.String prefixLineOne,
      required _fac9.String prefixOtherLines,
      required _fac9.String prefixOtherLinesRootNode,
      required _fac9.String propertyPrefixIfChildren,
      required _fac9.String propertyPrefixNoChildren,
      required this.table,
      required this.hydroState})
      : super(
            addBlankLineIfNoChildren: addBlankLineIfNoChildren,
            afterDescription: afterDescription,
            afterDescriptionIfBody: afterDescriptionIfBody,
            afterName: afterName,
            afterProperties: afterProperties,
            beforeName: beforeName,
            beforeProperties: beforeProperties,
            bodyIndent: bodyIndent,
            footer: footer,
            isBlankLineBetweenPropertiesAndChildren:
                isBlankLineBetweenPropertiesAndChildren,
            isNameOnOwnLine: isNameOnOwnLine,
            lineBreak: lineBreak,
            lineBreakProperties: lineBreakProperties,
            mandatoryAfterProperties: mandatoryAfterProperties,
            mandatoryFooter: mandatoryFooter,
            propertySeparator: propertySeparator,
            showChildren: showChildren,
            suffixLineOne: suffixLineOne,
            linkCharacter: linkCharacter,
            prefixLastChildLineOne: prefixLastChildLineOne,
            prefixLineOne: prefixLineOne,
            prefixOtherLines: prefixOtherLines,
            prefixOtherLinesRootNode: prefixOtherLinesRootNode,
            propertyPrefixIfChildren: propertyPrefixIfChildren,
            propertyPrefixNoChildren: propertyPrefixNoChildren) {
    table['vmObject'] = vmObject;
    table['unwrap'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
    table['prefixLineOne'] = _36c2.maybeBoxObject(
        object: this.prefixLineOne,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['suffixLineOne'] = _36c2.maybeBoxObject(
        object: this.suffixLineOne,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixOtherLines'] = _36c2.maybeBoxObject(
        object: this.prefixOtherLines,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixLastChildLineOne'] = _36c2.maybeBoxObject(
        object: this.prefixLastChildLineOne,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['prefixOtherLinesRootNode'] = _36c2.maybeBoxObject(
        object: this.prefixOtherLinesRootNode,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['propertyPrefixIfChildren'] = _36c2.maybeBoxObject(
        object: this.propertyPrefixIfChildren,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['propertyPrefixNoChildren'] = _36c2.maybeBoxObject(
        object: this.propertyPrefixNoChildren,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['linkCharacter'] = _36c2.maybeBoxObject(
        object: this.linkCharacter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['childLinkSpace'] = _36c2.maybeBoxObject(
        object: childLinkSpace,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['lineBreak'] = _36c2.maybeBoxObject(
        object: this.lineBreak,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['lineBreakProperties'] = _36c2.maybeBoxObject(
        object: this.lineBreakProperties,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['beforeName'] = _36c2.maybeBoxObject(
        object: this.beforeName,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['afterName'] = _36c2.maybeBoxObject(
        object: this.afterName,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['afterDescriptionIfBody'] = _36c2.maybeBoxObject(
        object: this.afterDescriptionIfBody,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['afterDescription'] = _36c2.maybeBoxObject(
        object: this.afterDescription,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['beforeProperties'] = _36c2.maybeBoxObject(
        object: this.beforeProperties,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['afterProperties'] = _36c2.maybeBoxObject(
        object: this.afterProperties,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['mandatoryAfterProperties'] = _36c2.maybeBoxObject(
        object: this.mandatoryAfterProperties,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['propertySeparator'] = _36c2.maybeBoxObject(
        object: this.propertySeparator,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['bodyIndent'] = _36c2.maybeBoxObject(
        object: this.bodyIndent,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['showChildren'] = _36c2.maybeBoxObject(
        object: this.showChildren,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['addBlankLineIfNoChildren'] = _36c2.maybeBoxObject(
        object: this.addBlankLineIfNoChildren,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isNameOnOwnLine'] = _36c2.maybeBoxObject(
        object: this.isNameOnOwnLine,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['footer'] = _36c2.maybeBoxObject(
        object: this.footer, hydroState: hydroState, table: _36c2.HydroTable());
    table['mandatoryFooter'] = _36c2.maybeBoxObject(
        object: this.mandatoryFooter,
        hydroState: hydroState,
        table: _36c2.HydroTable());
    table['isBlankLineBetweenPropertiesAndChildren'] = _36c2.maybeBoxObject(
        object: this.isBlankLineBetweenPropertiesAndChildren,
        hydroState: hydroState,
        table: _36c2.HydroTable());
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _eaf3.TextTreeConfiguration unwrap() => this;
  _eaf3.TextTreeConfiguration get vmObject => this;
}

void loadTextTreeConfiguration(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table['textTreeConfiguration'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTextTreeConfiguration(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          addBlankLineIfNoChildren: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['addBlankLineIfNoChildren']
              : null,
          afterDescription: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['afterDescription']
              : null,
          afterDescriptionIfBody: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['afterDescriptionIfBody']
              : null,
          afterName: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['afterName']
              : null,
          afterProperties: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['afterProperties']
              : null,
          beforeName: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['beforeName']
              : null,
          beforeProperties: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['beforeProperties']
              : null,
          bodyIndent: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['bodyIndent']
              : null,
          footer: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['footer']
              : null,
          isBlankLineBetweenPropertiesAndChildren: luaCallerArguments.length >=
                  2
              ? luaCallerArguments[1]['isBlankLineBetweenPropertiesAndChildren']
              : null,
          isNameOnOwnLine: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['isNameOnOwnLine']
              : null,
          lineBreak: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['lineBreak']
              : null,
          lineBreakProperties: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['lineBreakProperties']
              : null,
          mandatoryAfterProperties: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mandatoryAfterProperties']
              : null,
          mandatoryFooter: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['mandatoryFooter']
              : null,
          propertySeparator: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['propertySeparator']
              : null,
          showChildren: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['showChildren']
              : null,
          suffixLineOne: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['suffixLineOne']
              : null,
          linkCharacter: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['linkCharacter']
              : null,
          prefixLastChildLineOne: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['prefixLastChildLineOne']
              : null,
          prefixLineOne: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['prefixLineOne']
              : null,
          prefixOtherLines: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['prefixOtherLines']
              : null,
          prefixOtherLinesRootNode: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['prefixOtherLinesRootNode']
              : null,
          propertyPrefixIfChildren: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['propertyPrefixIfChildren']
              : null,
          propertyPrefixNoChildren: luaCallerArguments.length >= 2
              ? luaCallerArguments[1]['propertyPrefixNoChildren']
              : null)
    ];
  });
  _36c2.registerBoxer<_eaf3.TextTreeConfiguration>(boxer: (
      {required _eaf3.TextTreeConfiguration vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTextTreeConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
