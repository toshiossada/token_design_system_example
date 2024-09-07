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
  s_0_6(token: '0_6'),
  s_0(token: '0'),
  s_1(token: '1'),
  s_2(token: '2'),
  s_3(token: '3'),
  s_4(token: '4'),
  s_6(token: '6'),
  s_7(token: '7'),
  s_8(token: '8'),
  s_9(token: '9'),
  s_10(token: '10'),
  s_11(token: '11'),
  s_12(token: '12'),
  s_13(token: '13'),
  s_14(token: '14'),
  s_15(token: '15'),
  s_16(token: '16'),
  s_18(token: '18'),
  s_20(token: '20'),
  s_22(token: '22'),
  s_24(token: '24'),
  s_25(token: '25'),
  s_26(token: '26'),
  s_28(token: '28'),
  s_29(token: '29'),
  s_30(token: '30'),
  s_32(token: '32'),
  s_34(token: '34'),
  s_36(token: '36'),
  s_38(token: '38'),
  s_40(token: '40'),
  s_42(token: '42'),
  s_44(token: '44'),
  s_48(token: '48'),
  s_52(token: '52'),
  s_54(token: '54'),
  s_56(token: '56'),
  s_60(token: '60'),
  s_64(token: '64'),
  s_72(token: '72'),
  s_80(token: '80'),
  s_84(token: '84'),
  s_88(token: '88'),
  s_100(token: '100'),
  s_108(token: '108'),
  s_115(token: '115'),
  s_124(token: '124'),
  s_128(token: '128'),
  s_144(token: '144'),
  s_149(token: '149'),
  s_150(token: '150'),
  s_168(token: '168'),
  s_187(token: '187'),
  s_202(token: '202'),
  s_205(token: '205'),
  s_208(token: '208'),
  s_242(token: '242'),
  s_296(token: '296'),
  s_310(token: '310'),
  s_328(token: '328'),
  s_360(token: '360'),
  s_375(token: '375');

  const FAppSize({
    required this.token,
  });

  @override
  final String token;
}

class FAppSizeData extends BaseTokenParser<FAppSize, double> {
  @override
  Map<FAppSize, double> get data => {
        FAppSize.s_0_6: 0.6.sp,
        FAppSize.s_0: 0.sp,
        FAppSize.s_1: 1.sp,
        FAppSize.s_2: 2.sp,
        FAppSize.s_3: 3.sp,
        FAppSize.s_4: 4.sp,
        FAppSize.s_6: 6.sp,
        FAppSize.s_7: 7.sp,
        FAppSize.s_8: 8.sp,
        FAppSize.s_9: 9.sp,
        FAppSize.s_10: 10.sp,
        FAppSize.s_11: 11.sp,
        FAppSize.s_12: 12.sp,
        FAppSize.s_13: 13.sp,
        FAppSize.s_14: 14.sp,
        FAppSize.s_15: 15.sp,
        FAppSize.s_16: 16.sp,
        FAppSize.s_18: 18.sp,
        FAppSize.s_20: 20.sp,
        FAppSize.s_22: 22.sp,
        FAppSize.s_24: 24.sp,
        FAppSize.s_25: 25.sp,
        FAppSize.s_26: 26.sp,
        FAppSize.s_28: 28.sp,
        FAppSize.s_29: 29.sp,
        FAppSize.s_30: 30.sp,
        FAppSize.s_32: 32.sp,
        FAppSize.s_34: 34.sp,
        FAppSize.s_36: 36.sp,
        FAppSize.s_38: 38.sp,
        FAppSize.s_40: 40.sp,
        FAppSize.s_42: 42.sp,
        FAppSize.s_44: 44.sp,
        FAppSize.s_48: 48.sp,
        FAppSize.s_52: 52.sp,
        FAppSize.s_54: 54.sp,
        FAppSize.s_56: 56.sp,
        FAppSize.s_60: 60.sp,
        FAppSize.s_64: 64.sp,
        FAppSize.s_72: 72.sp,
        FAppSize.s_80: 80.sp,
        FAppSize.s_84: 84.sp,
        FAppSize.s_88: 88.sp,
        FAppSize.s_100: 100.sp,
        FAppSize.s_108: 108.sp,
        FAppSize.s_115: 115.sp,
        FAppSize.s_124: 124.sp,
        FAppSize.s_128: 128.sp,
        FAppSize.s_144: 144.sp,
        FAppSize.s_149: 149.sp,
        FAppSize.s_150: 150.sp,
        FAppSize.s_168: 168.sp,
        FAppSize.s_187: 187.sp,
        FAppSize.s_202: 202.sp,
        FAppSize.s_205: 205.sp,
        FAppSize.s_208: 208.sp,
        FAppSize.s_242: 242.sp,
        FAppSize.s_296: 296.sp,
        FAppSize.s_310: 310.sp,
        FAppSize.s_328: 328.sp,
        FAppSize.s_360: 360.sp,
        FAppSize.s_375: 375.sp,
      };
  const FAppSizeData({
    super.defaultData = FAppSize.s_1,
  });
}
