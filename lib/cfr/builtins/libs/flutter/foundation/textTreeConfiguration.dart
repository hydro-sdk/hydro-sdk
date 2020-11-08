import 'package:flutter/foundation.dart';
import 'package:hydro_sdk/cfr/builtins/boxing/boxes.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class RTManagedTextTreeConfiguration extends TextTreeConfiguration
    implements Box<TextTreeConfiguration> {
  RTManagedTextTreeConfiguration(
      {bool addBlankLineIfNoChildren,
      String afterDescription,
      String afterDescriptionIfBody,
      String afterName,
      String afterProperties,
      String beforeName,
      String beforeProperties,
      String bodyIndent,
      String footer,
      bool isBlankLineBetweenPropertiesAndChildren,
      bool isNameOnOwnLine,
      String lineBreak,
      bool lineBreakProperties,
      String mandatoryAfterProperties,
      String mandatoryFooter,
      String propertySeparator,
      bool showChildren,
      String suffixLineOne,
      String linkCharacter,
      String prefixLastChildLineOne,
      String prefixLineOne,
      String prefixOtherLines,
      String prefixOtherLinesRootNode,
      String propertyPrefixIfChildren,
      String propertyPrefixNoChildren,
      @required this.table,
      @required this.hydroState})
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
  }

  final HydroTable table;

  final HydroState hydroState;

  TextTreeConfiguration unwrap() => this;
  TextTreeConfiguration get vmObject => this;
}

void loadTextTreeConfiguration(
    {@required HydroState hydroState, @required HydroTable table}) {
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
}
