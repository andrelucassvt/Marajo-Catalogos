class Cardapios {
  String id;
  String estabelecimentoId;
  String cardapioPath;

  Cardapios({this.id, this.estabelecimentoId, this.cardapioPath});

  Cardapios.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    estabelecimentoId = json['estabelecimento_id'];
    cardapioPath = json['cardapio_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['estabelecimento_id'] = this.estabelecimentoId;
    data['cardapio_path'] = this.cardapioPath;
    return data;
  }
}