import '../../base_token_parser.dart';
import '../../blur/blur_token.dart';

final class FAppBlurData extends BaseTokenParser<FAppBlur, int> {
  @override
  Map<FAppBlur, int> get defaultData => const {
        FAppBlur.xs: 8,
        FAppBlur.sm: 16,
        FAppBlur.md: 32,
        FAppBlur.lg: 48,
        FAppBlur.xl: 64
      };
  const FAppBlurData([super.newData]);

  factory FAppBlurData.fromMap(Map<String, dynamic> json) {
    return const FAppBlurData({});
  }
}
