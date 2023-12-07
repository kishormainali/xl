/// Wrap a widget with `Foil`, providing a rainbow shimmer
/// that twinkles as the accelerometer moves as well as
/// tons of additional neat gradient features.
///
/// ## [pub.dev Listing](https://pub.dev/packages/foil_plus)
/// ### Extra Goodies
///
/// 1. `Foils` abstract class with a variety of `Gradient`s
///
/// 2. `package:spectrum`
///    1. `GradientUtils` extensions for each `Gradient` & `Gradient.copyWith()`
///    2. Three new variety of `Gradient` that do not gradate,
///    but hard-transition:
///       - `LinearSteps`
///       - `RadialSteps`
///       - `SweepSteps` 😏
///   3. `GradientTween` specializing `Tween<Gradient>` to use
///   bespoke `IntermediateGradient`s and `Gradient.lerp()`.
library foil_plus;

export 'src/models/crinkle.dart';
export 'src/models/foils.dart';
export 'src/models/scalar.dart';
export 'src/models/sheet.dart';
export 'src/models/transformation.dart';
export 'src/spectrum/spectrum.dart';
export 'src/widgets/foil.dart';
export 'src/widgets/roll.dart'; // work in progress
