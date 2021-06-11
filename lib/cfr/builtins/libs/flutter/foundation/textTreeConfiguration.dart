import 'package:flutter/foundation.dart';

import 'package:hydro_sdk/cfr/builtins/boxing/boxers.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class VMManagedTextTreeConfiguration
    extends VMManagedBox<TextTreeConfiguration> {
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

  final HydroTable table;

  final HydroState hydroState;

  final TextTreeConfiguration vmObject;
}

class RTManagedTextTreeConfiguration extends TextTreeConfiguration
    implements Box<TextTreeConfiguration> {
  RTManagedTextTreeConfiguration(
      {required bool addBlankLineIfNoChildren,
      required String afterDescription,
      required String afterDescriptionIfBody,
      required String afterName,
      required String afterProperties,
      required String beforeName,
      required String beforeProperties,
      required String bodyIndent,
      required String footer,
      required bool isBlankLineBetweenPropertiesAndChildren,
      required bool isNameOnOwnLine,
      required String lineBreak,
      required bool lineBreakProperties,
      required String mandatoryAfterProperties,
      required String mandatoryFooter,
      required String propertySeparator,
      required bool showChildren,
      required String suffixLineOne,
      required String linkCharacter,
      required String prefixLastChildLineOne,
      required String prefixLineOne,
      required String prefixOtherLines,
      required String prefixOtherLinesRootNode,
      required String propertyPrefixIfChildren,
      required String propertyPrefixNoChildren,
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
    table['unwrap'] = makeLuaDartFunc(func: (List<dynamic> args) {
      return [unwrap()];
    });
    table['prefixLineOne'] = prefixLineOne;
    table['suffixLineOne'] = suffixLineOne;
    table['prefixOtherLines'] = prefixOtherLines;
    table['prefixLastChildLineOne'] = prefixLastChildLineOne;
    table['prefixOtherLinesRootNode'] = prefixOtherLinesRootNode;
    table['propertyPrefixIfChildren'] = propertyPrefixIfChildren;
    table['propertyPrefixNoChildren'] = propertyPrefixNoChildren;
    table['linkCharacter'] = linkCharacter;
    table['childLinkSpace'] = childLinkSpace;
    table['lineBreak'] = lineBreak;
    table['lineBreakProperties'] = lineBreakProperties;
    table['beforeName'] = beforeName;
    table['afterName'] = afterName;
    table['afterDescriptionIfBody'] = afterDescriptionIfBody;
    table['afterDescription'] = afterDescription;
    table['beforeProperties'] = beforeProperties;
    table['afterProperties'] = afterProperties;
    table['mandatoryAfterProperties'] = mandatoryAfterProperties;
    table['propertySeparator'] = propertySeparator;
    table['bodyIndent'] = bodyIndent;
    table['showChildren'] = showChildren;
    table['addBlankLineIfNoChildren'] = addBlankLineIfNoChildren;
    table['isNameOnOwnLine'] = isNameOnOwnLine;
    table['footer'] = footer;
    table['mandatoryFooter'] = mandatoryFooter;
    table['isBlankLineBetweenPropertiesAndChildren'] =
        isBlankLineBetweenPropertiesAndChildren;
  }

  final HydroTable table;

  final HydroState hydroState;

  TextTreeConfiguration unwrap() => this;
  TextTreeConfiguration get vmObject => this;
}

void loadTextTreeConfiguration(
    {required HydroState hydroState, required HydroTable table}) {
  table['textTreeConfiguration'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedTextTreeConfiguration(
          table: args[0],
          hydroState: hydroState,
          addBlankLineIfNoChildren: args[1]['addBlankLineIfNoChildren'],
          afterDescription: args[1]['afterDescription'],
          afterDescriptionIfBody: args[1]['afterDescriptionIfBody'],
          afterName: args[1]['afterName'],
          afterProperties: args[1]['afterProperties'],
          beforeName: args[1]['beforeName'],
          beforeProperties: args[1]['beforeProperties'],
          bodyIndent: args[1]['bodyIndent'],
          footer: args[1]['footer'],
          isBlankLineBetweenPropertiesAndChildren: args[1]
              ['isBlankLineBetweenPropertiesAndChildren'],
          isNameOnOwnLine: args[1]['isNameOnOwnLine'],
          lineBreak: args[1]['lineBreak'],
          lineBreakProperties: args[1]['lineBreakProperties'],
          mandatoryAfterProperties: args[1]['mandatoryAfterProperties'],
          mandatoryFooter: args[1]['mandatoryFooter'],
          propertySeparator: args[1]['propertySeparator'],
          showChildren: args[1]['showChildren'],
          suffixLineOne: args[1]['suffixLineOne'],
          linkCharacter: args[1]['linkCharacter'],
          prefixLastChildLineOne: args[1]['prefixLastChildLineOne'],
          prefixLineOne: args[1]['prefixLineOne'],
          prefixOtherLines: args[1]['prefixOtherLines'],
          prefixOtherLinesRootNode: args[1]['prefixOtherLinesRootNode'],
          propertyPrefixIfChildren: args[1]['propertyPrefixIfChildren'],
          propertyPrefixNoChildren: args[1]['propertyPrefixNoChildren'])
    ];
  });
  registerBoxer<TextTreeConfiguration>(boxer: (
      {required TextTreeConfiguration vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedTextTreeConfiguration(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
