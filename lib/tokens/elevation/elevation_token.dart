import 'package:tokens_playground/tokens/base_token.dart';

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

  static FAppElevation getByToken(String token) =>
      FAppElevation.values.firstWhere((e) => e.token == token);
  static bool anyToken(String token) =>
      FAppElevation.values.any((e) => e.token == token);
}
