import 'package:flutter_screenutil/flutter_screenutil.dart'
    hide RadiusExtension, SizeExtension;

import '../base_token.dart';

extension ScreenUtilsNumberExtension on num {
  double get w => ScreenUtil().setWidth(this);

  double get h => ScreenUtil().setHeight(this);

  double get r => ScreenUtil().radius(this);

  double get sp => ScreenUtil().setSp(this);
}

enum FAppSize implements BaseToken {
  s06(token: '0_6'),
  s0(token: '0'),
  s1(token: '1'),
  s2(token: '2'),
  s3(token: '3'),
  s4(token: '4'),
  s6(token: '6'),
  s7(token: '7'),
  s8(token: '8'),
  s9(token: '9'),
  s10(token: '10'),
  s11(token: '11'),
  s12(token: '12'),
  s13(token: '13'),
  s14(token: '14'),
  s15(token: '15'),
  s16(token: '16'),
  s18(token: '18'),
  s20(token: '20'),
  s22(token: '22'),
  s24(token: '24'),
  s25(token: '25'),
  s26(token: '26'),
  s28(token: '28'),
  s29(token: '29'),
  s30(token: '30'),
  s32(token: '32'),
  s34(token: '34'),
  s36(token: '36'),
  s38(token: '38'),
  s40(token: '40'),
  s42(token: '42'),
  s44(token: '44'),
  s48(token: '48'),
  s52(token: '52'),
  s54(token: '54'),
  s56(token: '56'),
  s60(token: '60'),
  s64(token: '64'),
  s72(token: '72'),
  s80(token: '80'),
  s84(token: '84'),
  s88(token: '88'),
  s100(token: '100'),
  s108(token: '108'),
  s115(token: '115'),
  s124(token: '124'),
  s128(token: '128'),
  s144(token: '144'),
  s149(token: '149'),
  s150(token: '150'),
  s168(token: '168'),
  s187(token: '187'),
  s202(token: '202'),
  s205(token: '205'),
  s208(token: '208'),
  s242(token: '242'),
  s296(token: '296'),
  s310(token: '310'),
  s328(token: '328'),
  s360(token: '360'),
  s375(token: '375');

  const FAppSize({
    required this.token,
  });

  @override
  final String token;

  static FAppSize getByToken(String token) =>
      FAppSize.values.firstWhere((e) => e.token == token);
  static bool anyToken(String token) =>
      FAppSize.values.any((e) => e.token == token);
}
