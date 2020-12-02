class Cliente {
  
  final String cnpj;
  final String fantasia;
  final String nome;

  Cliente({this.cnpj, this.fantasia, this.nome});

  factory Cliente.fromJson(Map<String, dynamic> json) {
    return Cliente(
      cnpj: json['cnpj'],
      nome: json['nome'],
      fantasia: json['fantasia'] 
      
    );
  }
}