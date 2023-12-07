import 'package:flutter_test/flutter_test.dart';
import 'package:xl_plus/src/calculation.dart';
import 'package:xl_plus/src/models/reference_position.dart';

enum OffsetDefault { topLeft, bottomRight, center }

void main() {
  group('RangeParallaxFactorCalculator Test', () {
    RelativeParallaxFactorCalculator getBasicCalculator({
      required OffsetDefault offsetType,
      ReferencePosition referencePosition = const ReferencePosition(0.5, 0.5),
      bool negate = false,
    }) {
      Offset position;
      switch (offsetType) {
        case OffsetDefault.topLeft:
          position = const Offset(0, 0);
          break;
        case OffsetDefault.bottomRight:
          position = const Offset(1000, 500);
          break;
        case OffsetDefault.center:
          position = const Offset(500, 250);
          break;
      }
      final calculator = RelativeParallaxFactorCalculator(
        width: 1000,
        height: 500,
        referencePosition: referencePosition,
        position: position,
        negative: negate,
      );
      return calculator;
    }

    test('Center is 0', () {
      final calculator = getBasicCalculator(offsetType: OffsetDefault.center);
      final result = calculator.calculate();
      expect(result.x, 0);
    });
    test('Left is 1', () {
      final calculator = getBasicCalculator(offsetType: OffsetDefault.topLeft);

      final result = calculator.calculate();
      expect(result.x, 1);
    });
    test('Right is -1', () {
      final calculator = getBasicCalculator(offsetType: OffsetDefault.bottomRight);
      final result = calculator.calculate();
      expect(result.x, -1);
    });
    test('Negation Mirrors Values', () {
      final leftCalculator = getBasicCalculator(
        offsetType: OffsetDefault.topLeft,
        negate: true,
      );
      final rightCalculator = getBasicCalculator(
        offsetType: OffsetDefault.bottomRight,
        negate: true,
      );
      final leftResult = leftCalculator.calculate();
      final rightResult = rightCalculator.calculate();
      expect(leftResult.x, -1);
      expect(rightResult.x, 1);
    });

    test('Reference Position alters values', () {
      final calculator = getBasicCalculator(
        offsetType: OffsetDefault.topLeft,
        negate: true,
        referencePosition: const ReferencePosition(0, 0),
      );
      final result = calculator.calculate();
      expect(result.x, 0);

      final calculator2 = getBasicCalculator(
        offsetType: OffsetDefault.bottomRight,
        negate: true,
        referencePosition: const ReferencePosition(0, 0),
      );
      final result2 = calculator2.calculate();
      expect(result2.x, 2);
    });
  });
}
