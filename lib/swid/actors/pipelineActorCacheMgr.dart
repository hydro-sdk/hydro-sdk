import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:meta/meta.dart';
import 'package:theater/theater.dart';
import 'package:tuple/tuple.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipelineCacheMgr.dart';

class PipelineActorCacheMgr<T extends UntypedActorProperties,
    U extends NodeActorContext<T>> implements ISwarsPipelineCacheMgr {
  @nonVirtual
  @protected
  final Tuple3<String, U, String> topicContext;

  PipelineActorCacheMgr({
    required this.topicContext,
  });

  @override
  void onCacheMiss({
    required final String cacheGroup,
    required final String hashKey,
    required final ISwarsTermResult<dynamic> result,
  }) {}
}
