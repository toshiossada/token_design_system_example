import 'package:flutter_screenutil/flutter_screenutil.dart'
    hide RadiusExtension, SizeExtension;

import '../base_token.dart';
import '../base_token_parser.dart';

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
}

class FAppSizeData extends BaseTokenParser<FAppSize, double> {
  @override
  Map<FAppSize, double> get data => {
        FAppSize.s06: 0.6.sp,
        FAppSize.s0: 0.sp,
        FAppSize.s1: 1.sp,
        FAppSize.s2: 2.sp,
        FAppSize.s3: 3.sp,
        FAppSize.s4: 4.sp,
        FAppSize.s6: 6.sp,
        FAppSize.s7: 7.sp,
        FAppSize.s8: 8.sp,
        FAppSize.s9: 9.sp,
        FAppSize.s10: 10.sp,
        FAppSize.s11: 11.sp,
        FAppSize.s12: 12.sp,
        FAppSize.s13: 13.sp,
        FAppSize.s14: 14.sp,
        FAppSize.s15: 15.sp,
        FAppSize.s16: 16.sp,
        FAppSize.s18: 18.sp,
        FAppSize.s20: 20.sp,
        FAppSize.s22: 22.sp,
        FAppSize.s24: 24.sp,
        FAppSize.s25: 25.sp,
        FAppSize.s26: 26.sp,
        FAppSize.s28: 28.sp,
        FAppSize.s29: 29.sp,
        FAppSize.s30: 30.sp,
        FAppSize.s32: 32.sp,
        FAppSize.s34: 34.sp,
        FAppSize.s36: 36.sp,
        FAppSize.s38: 38.sp,
        FAppSize.s40: 40.sp,
        FAppSize.s42: 42.sp,
        FAppSize.s44: 44.sp,
        FAppSize.s48: 48.sp,
        FAppSize.s52: 52.sp,
        FAppSize.s54: 54.sp,
        FAppSize.s56: 56.sp,
        FAppSize.s60: 60.sp,
        FAppSize.s64: 64.sp,
        FAppSize.s72: 72.sp,
        FAppSize.s80: 80.sp,
        FAppSize.s84: 84.sp,
        FAppSize.s88: 88.sp,
        FAppSize.s100: 100.sp,
        FAppSize.s108: 108.sp,
        FAppSize.s115: 115.sp,
        FAppSize.s124: 124.sp,
        FAppSize.s128: 128.sp,
        FAppSize.s144: 144.sp,
        FAppSize.s149: 149.sp,
        FAppSize.s150: 150.sp,
        FAppSize.s168: 168.sp,
        FAppSize.s187: 187.sp,
        FAppSize.s202: 202.sp,
        FAppSize.s205: 205.sp,
        FAppSize.s208: 208.sp,
        FAppSize.s242: 242.sp,
        FAppSize.s296: 296.sp,
        FAppSize.s310: 310.sp,
        FAppSize.s328: 328.sp,
        FAppSize.s360: 360.sp,
        FAppSize.s375: 375.sp,
      };
  const FAppSizeData();
}
