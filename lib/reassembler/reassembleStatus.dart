import 'package:meta/meta.dart';

class ReassembleStatus {
  int relocatedProtos;
  int reassembledProtos;
  bool bailedOut;
  String bailOutReason;

  ReassembleStatus(
      {@required this.relocatedProtos,
      @required this.reassembledProtos,
      @required this.bailedOut,
      @required this.bailOutReason});
}