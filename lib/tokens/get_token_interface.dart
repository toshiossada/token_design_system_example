import 'base_token.dart';

abstract interface class HGetTokenInterface<F extends BaseToken, T> {

  T getByToken(F token);


  F getDefaultToken();

  F? getByName(String name);
}
