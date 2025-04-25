import '../base_token.dart';

enum FAppTypography implements BaseToken {
  headline1(token: r'Headline 1'),
  headline2(token: r'Headline 2'),
  headline3(token: r'Headline 3'),
  headline4(token: r'Headline 4'),
  body1(token: r'Body 1'),
  body2(token: r'Body 2'),
  body3(token: r'Body 3'),
  body4(token: r'Body 4'),
  body5(token: r'Body 5'),
  body6(token: r'Body 6'),
  body7(token: r'Body 7'),
  body8(token: r'Body 8'),
  captionSmall1(token: r'Caption small 1'),
  captionSmall3(token: r'Caption small 3'),
  captionSmall2(token: r'Caption small 2'),
  captionSmall4(token: r'Caption small 4');

  const FAppTypography({
    required this.token,
  });

  @override
  final String token;

  static FAppTypography getByToken(String token) =>
      FAppTypography.values.firstWhere((e) => e.token == token);
  static bool anyToken(String token) =>
      FAppTypography.values.any((e) => e.token == token);
}
