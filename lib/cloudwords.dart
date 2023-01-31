import 'dart:math';
import 'dart:ui';
import 'dart:math' as math;

class CloudWords {
  final String word;
  final Color color =
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  final int size;
  final bool rotated = Random().nextBool();
  CloudWords(this.word, this.size);
}
