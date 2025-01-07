import '../base_token.dart';
import '../base_token_parser.dart';

enum FAppBlur implements BaseToken {
  xs(token: r'xs'),
  sm(token: r'sm'),
  md(token: r'md'),
  lg(token: r'lg'),
  xl(token: r'xl');

  const FAppBlur({
    required this.token,
  });

  @override
  final String token;

  static FAppBlur getByToken(String token) =>
      FAppBlur.values.firstWhere((e) => e.token == token);
  static bool anyToken(String token) =>
      FAppBlur.values.any((e) => e.token == token);
}

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
