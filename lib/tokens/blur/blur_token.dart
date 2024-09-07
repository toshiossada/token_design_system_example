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
}

final class FAppBlurData extends BaseTokenParser<FAppBlur, int> {
  @override
  Map<FAppBlur, int> get data => const {
        FAppBlur.xs: 8,
        FAppBlur.sm: 16,
        FAppBlur.md: 32,
        FAppBlur.lg: 48,
        FAppBlur.xl: 64
      };
  const FAppBlurData({
    super.defaultData = FAppBlur.xs,
  });
}
