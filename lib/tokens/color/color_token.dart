import '../base_token.dart';

enum FAppColor implements BaseToken {
  white(token: r'$color-white'),
  green1(token: r'$color-green-1'),
  green2(token: r'$color-green-2'),
  green3(token: r'$color-green-3'),
  green4(token: r'$color-green-4'),
  green5(token: r'$color-green-5'),
  green6(token: r'$color-green-6'),
  green7(token: r'$color-green-7'),
  green8(token: r'$color-green-8'),
  orange1(token: r'$color-orange-1'),
  orange2(token: r'$color-orange-2'),
  orange3(token: r'$color-orange-3'),
  orange4(token: r'$color-orange-4'),
  orange5(token: r'$color-orange-5'),
  blue1(token: r'$color-blue-1'),
  blue2(token: r'$color-blue-2'),
  yellow1(token: r'$color-yellow-1'),
  red1(token: r'$color-red-1'),
  red2(token: r'$color-red-2'),
  gray1(token: r'$color-gray-1'),
  gray2(token: r'$color-gray-2'),
  gray3(token: r'$color-gray-3'),
  gray4(token: r'$color-gray-4'),
  gray5(token: r'$color-gray-5'),
  gray6(token: r'$color-gray-6'),
  gray7(token: r'$color-gray-7'),
  gray8(token: r'$color-gray-8'),
  gray9(token: r'$color-gray-9'),
  backgroundModal(token: 'color-background-modal'),
  backgroundLoading(token: 'color-background-loading');

  const FAppColor({
    required this.token,
  });

  @override
  final String token;

  static FAppColor getByToken(String token) =>
      FAppColor.values.firstWhere((e) => e.token == token);
  static bool anyToken(String token) =>
      FAppColor.values.any((e) => e.token == token);
}
