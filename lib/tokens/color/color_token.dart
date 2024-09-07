import 'dart:ui';

import '../base_token.dart';
import '../base_token_parser.dart';

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
}

final class FAppColorData extends BaseTokenParser<FAppColor, Color> {
  @override
  Map<FAppColor, Color> get data => const {
        FAppColor.white: Color(0xFFFFFFFF),
        FAppColor.green1: Color(0xFF035D59),
        FAppColor.green2: Color(0xFF06847B),
        FAppColor.green3: Color(0xFF06847B),
        FAppColor.green4: Color(0xFFB3EFEC),
        FAppColor.green5: Color(0xFF7DBCB7),
        FAppColor.green6: Color(0xFF88B844),
        FAppColor.green7: Color(0xFF88B844),
        FAppColor.green8: Color(0xFFC0DCDA),
        FAppColor.orange1: Color(0xFFF2B166),
        FAppColor.orange2: Color(0xFFFC8D66),
        FAppColor.orange3: Color(0xFFF5DDD4),
        FAppColor.orange4: Color(0xFFFCEEDD),
        FAppColor.orange5: Color(0xFFFEE6DD),
        FAppColor.blue1: Color(0xFF1877F2),
        FAppColor.blue2: Color(0xFF56616B),
        FAppColor.yellow1: Color(0xFFFBEEC1),
        FAppColor.red1: Color(0xFFF26C66),
        FAppColor.red2: Color(0xFFFFE0DF),
        FAppColor.gray1: Color(0x003E3E3E),
        FAppColor.gray2: Color(0x00666666),
        FAppColor.gray3: Color(0x00808080),
        FAppColor.gray4: Color(0x00B9B9B9),
        FAppColor.gray5: Color(0x00E3E3E3),
        FAppColor.gray6: Color(0x00F4F4F4),
        FAppColor.gray7: Color(0x00F3F3F3),
        FAppColor.gray8: Color(0x00EEEEEE),
        FAppColor.gray9: Color(0x00D9DBDE),
        FAppColor.backgroundModal: Color(0x007A8590),
        FAppColor.backgroundLoading: Color(0x007A8590),
      };
  const FAppColorData({
    super.defaultData = FAppColor.white,
  });
}
