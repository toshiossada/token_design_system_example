import 'base_token.dart';

abstract interface class HGetTokenInterface<F extends BaseToken, T> {

  T getByToken(F token);

  F getByName(String name);
}
