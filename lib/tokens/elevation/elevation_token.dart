import '../base_token.dart';
import '../base_token_parser.dart';

enum FAppElevation implements BaseToken {
  xxs(token: r'xxs'),
  xs(token: r'xs'),
  sm(token: r'sm'),
  smNegative(token: r'sm'),
  lg(token: r'lg'),
  ;

  const FAppElevation({
    required this.token,
  });

  @override
  final String token;
}

final class FAppElevationData extends BaseTokenParser<FAppElevation, int> {
  @override
  Map<FAppElevation, int> get data => {
        FAppElevation.xxs: 2,
        FAppElevation.xs: 6,
        FAppElevation.sm: 16,
        FAppElevation.smNegative: 24,
        FAppElevation.lg: 40,
      };
  const FAppElevationData({
    super.defaultData = FAppElevation.xxs,
  });
}
