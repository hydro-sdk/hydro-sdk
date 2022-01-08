import 'dart:collection';

import 'package:hydro_sdk/swid/actors/messages/classTranslationUnitEmitActorMessageIn.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:theater/theater.dart';

class ClassTranslationUnitEmitActor extends UntypedActor {
  final String name;
  late final String messageOutTopic;
  late final Queue<SwidClass> queue;

  ClassTranslationUnitEmitActor({
    required final this.name,
  });

  @override
  Future<void> onStart(UntypedActorContext context) async =>
      await context.receive<ClassTranslationUnitEmitActorMessageIn>(
        (message) async => await message.when(
          fromSetMessageOutTopic: (val) async {
            messageOutTopic = val.topic;
            return null;
          },
        ),
      );
}
