import '../../base_token_parser.dart';
import '../../elevation/elevation_token.dart';

final class App2ElevationData extends BaseTokenParser<FAppElevation, int> {
  @override
  Map<FAppElevation, int> get defaultData => {
        FAppElevation.xxs: 2,
        FAppElevation.xs: 6,
        FAppElevation.sm: 16,
        FAppElevation.smNegative: 24,
        FAppElevation.lg: 40,
      };
  const App2ElevationData([super.newData]);
  factory App2ElevationData.fromMap(Map<String, dynamic> json) {
    return const App2ElevationData({});
  }
}
