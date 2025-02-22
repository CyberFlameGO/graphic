import 'package:graphic/src/common/label.dart';
import 'package:graphic/src/interaction/selection/selection.dart';
import 'package:graphic/src/dataflow/tuple.dart';

import 'aes.dart';

/// The specification of a label attribute.
///
/// How to get label contents form tuples must be indicated by [encode].
class LabelAttr extends Attr<Label> {
  /// Creates a label attribute.
  LabelAttr({
    required Label Function(Tuple) encoder,
    Map<String, Map<bool, SelectionUpdater<Label>>>? updaters,
  }) : super(
          encoder: encoder,
          updaters: updaters,
        );
}
