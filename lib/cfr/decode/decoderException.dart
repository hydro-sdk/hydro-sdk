class DecoderException {
  DecoderException(this.error, this.doing, this.byteOffset);
  String error;
  String? doing;
  int byteOffset;
  toString() => "$error while $doing (offset $byteOffset)";
}
