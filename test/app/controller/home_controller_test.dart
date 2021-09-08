import 'package:conversor_moedas/app/model/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:conversor_moedas/app/controller/home_controller.dart';

main() {
  //teste de unidade
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('deve converter de real para dolar com virgula', () {
    toText.text = '2,0';
    homeController.convert();
    expect(fromText.text, '0.38');
  });

  test('deve converter de real para dolar com ponto', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.38');
  });

  test('deve converter de dolar para real', () {
    toText.text = '1.0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dolar', real: 5.17, dolar: 1.0, euro: 0.84, bitcoin: 0.000021);
    homeController.fromCurrency = CurrencyModel(
        name: 'Real', real: 1.0, dolar: 0.19, euro: 0.16, bitcoin: 0.0000041);
    homeController.convert();
    expect(fromText.text, '5.17');
  });
}
