class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  //construtor nomeado
  CurrencyModel({this.name, this.real, this.dolar, this.euro, this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel> [
      CurrencyModel(name: 'Real', real: 1.0, dolar: 0.19, euro: 0.16, bitcoin: 0.0000041), 
      CurrencyModel(name: 'Dolar', real: 5.17, dolar: 1.0, euro: 0.84, bitcoin: 0.000021),
      CurrencyModel(name: 'Euro', real: 6.13, dolar: 1.19, euro: 1.0, bitcoin: 0.0000025),
      CurrencyModel(name: 'Bitcoin', real: 240000.0, dolar: 46500.0, euro: 39200.0, bitcoin: 1.0)
    ];
  }

}