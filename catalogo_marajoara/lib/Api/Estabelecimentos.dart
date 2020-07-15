class Estabelecimentos {
  String id;
  String nome;
  String contato;
  String local;
  String categoria;
  String logoPath;

  Estabelecimentos(
      {this.id,
      this.nome,
      this.contato,
      this.local,
      this.categoria,
      this.logoPath});

  Estabelecimentos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    contato = json['contato'];
    local = json['local'];
    categoria = json['categoria'];
    logoPath = json['logo_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['contato'] = this.contato;
    data['local'] = this.local;
    data['categoria'] = this.categoria;
    data['logo_path'] = this.logoPath;
    return data;
  }
}