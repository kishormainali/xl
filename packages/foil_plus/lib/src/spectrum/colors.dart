/// Offers `Color` operators & operator exposure methods, shading methods
/// `Color.withBlack()` and `withWhite()`, and `Spectrum` color utilities
/// such as complementary colors or `MaterialColor` generation.
///
/// ---
/// This import is a module library for `package:spectrum`.
///
/// For `gradients` functionality:
///
///     import 'package:spectrum/gradients.dart';
///
/// Or for the all-in-one library:
///
///     import 'package:spectrum/spectrum.dart';
///
/// ##### Color API References: [`Shading`](https://pub.dev/documentation/spectrum/latest/spectrum/Shading.html) | [`ColorOperators`](https://pub.dev/documentation/spectrum/latest/spectrum/ColorOperators.html) | [`ColorOperatorsMethods`](https://pub.dev/documentation/spectrum/latest/spectrum/ColorOperatorsMethods.html) | [`Spectrum`](https://pub.dev/documentation/spectrum/latest/spectrum/Spectrum-class.html) | [`SpectrumUtils`](https://pub.dev/documentation/spectrum/latest/spectrum/SpectrumUtils.html)
/// ##### [🐸 Zaba.app ― simple packages, simple names.](https://pub.dev/publishers/zaba.app/packages)
library colors;

export 'colors/operators.dart';
export 'colors/shading.dart';
export 'colors/spectrum.dart';
