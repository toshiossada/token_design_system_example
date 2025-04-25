import '../../base_token_parser.dart';
import '../../blur/blur_token.dart';

final class App2BlurData extends BaseTokenParser<FAppBlur, int> {
  @override
  Map<FAppBlur, int> get defaultData => const {
        FAppBlur.xs: 8,
        FAppBlur.sm: 16,
        FAppBlur.md: 32,
        FAppBlur.lg: 48,
        FAppBlur.xl: 64
      };
  const App2BlurData([super.newData]);

  factory App2BlurData.fromMap(Map<String, dynamic> json) {
    return const App2BlurData({});
  }
}
