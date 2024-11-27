import 'package:collection/collection.dart';
import 'package:tokens_playground/tokens/base_token.dart';

import 'get_token_interface.dart';

abstract class BaseTokenParser<F extends BaseToken, T>
    implements HGetTokenInterface<F, T> {
  Map<F, T> get data;

  Type get tokenType => F;

  const BaseTokenParser();

  @override
  T getByToken(F token) {
    if (data[token] == null) throw Exception('Token not found: $token');
    return data[token]!;
  }

  @override
  F getByName(String name) {
    final result = data.entries
        .firstWhereOrNull((element) => element.key.token == name)
        ?.key;

    if (result == null) throw Exception('Token not found: $name');

    return result;
  }


}
