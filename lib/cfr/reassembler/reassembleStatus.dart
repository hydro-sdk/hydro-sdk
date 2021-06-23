class ReassembleStatus {
  int relocatedProtos;
  int reassembledProtos;
  bool bailedOut;
  String bailOutReason;
  List<List<String>> reassemblyMap;

  ReassembleStatus(
      {required this.relocatedProtos,
      required this.reassembledProtos,
      required this.bailedOut,
      required this.bailOutReason,
      required this.reassemblyMap});
}
