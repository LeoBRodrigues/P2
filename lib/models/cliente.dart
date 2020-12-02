class Cliente {

  final String cnpj;
  final String fantasia;
  final String nome;
  final String logradouro;
  final String numero;
  final String cep;
  final String bairro;
  final String municipio;
  final String uf;

  Cliente({this.cnpj, this.fantasia, this.nome, this.logradouro, this.numero, this.cep, this.bairro, this.municipio, this.uf});

  factory Cliente.fromJson(Map<String, dynamic> json) {
    return Cliente(
      cnpj: json['cnpj'],
      nome: json['nome'],
      fantasia: json['fantasia'],
      logradouro: json['logradouro'],
      numero: json['numero'],
      cep: json['cep'],
      bairro: json['bairro'],
      municipio: json['municipio'],
      uf: json['uf']
      
      
    );
  }
}