String removeTypeArguments({required final String str}) {
  var openingBracket = str.indexOf("<");

  if (openingBracket > -1) {
    return str.substring(0, openingBracket);
  }

  return str;
}
