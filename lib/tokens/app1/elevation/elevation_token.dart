import '../../base_token_parser.dart';
import '../../elevation/elevation_token.dart';

final class FAppElevationData extends BaseTokenParser<FAppElevation, int> {
  @override
  Map<FAppElevation, int> get defaultData => {
        FAppElevation.xxs: 2,
        FAppElevation.xs: 6,
        FAppElevation.sm: 16,
        FAppElevation.smNegative: 24,
        FAppElevation.lg: 40,
      };
  const FAppElevationData([super.newData]);
  factory FAppElevationData.fromMap(Map<String, dynamic> json) {
    return const FAppElevationData({});
  }
}
