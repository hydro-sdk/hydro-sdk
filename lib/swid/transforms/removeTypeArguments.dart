String removeTypeArguments({required String str}) {
  var openingBracket = str.indexOf("<");

  if (openingBracket > -1) {
    return str.substring(0, openingBracket);
  }

  return str;
}
