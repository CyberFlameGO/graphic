import 'dart:ui';

import 'segment.dart';
import 'cubic.dart';

class MoveSegment extends Segment {
  MoveSegment({
    required this.end,
  
    String? tag,
  }) : super(
    tag: tag,
  );
  
  final Offset end;

  @override
  void drawPath(Path path) =>
    path.moveTo(end.dx, end.dy);

  @override
  MoveSegment lerpFrom(covariant MoveSegment from, double t) => MoveSegment(
    end: Offset.lerp(from.end, end, t)!,
    tag: tag,
  );

  @override
  CubicSegment toCubic(Offset start) {
    throw UnsupportedError('Move segment can not be converted to cubic.');
  }
  
  @override
  MoveSegment sow(Offset position) => MoveSegment(
    end: position,
    tag: tag,
  );

  @override
  Offset getEnd() => end;
}
