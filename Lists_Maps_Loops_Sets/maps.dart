// Maps são a junção de vários itens dentro de uma var
//
//var maps= {
//  "Key" : valor
//}
//

//EVERY faz um teste logico em toda a lista/map e retorna true ou false
everyMap() {
  print('Every map');

  List<Map<String, dynamic>> pessoas = [
    {'nome': 'lucio', 'idade': 38},
    {'nome': 'ana', 'idade': 58},
    {'nome': 'gabriel', 'idade': 33},
  ];

  print(pessoas.every((e) => e.containsKey('nome')));
  print(pessoas.every((e) => e['idade'] >= 35));
}

//WHERE filtra os elementos da coleção criando uma nova do
// mesmo tamanho ou menor
whereMap() {
  print('Where map');

  List<Map<String, dynamic>> produtos = [
    {'nomeProd': 'Notebook positivo', 'valor': 3300, 'windows': true},
    {'nomeProd': 'Notebook intel i3', 'valor': 2300, 'windows': true},
    {'nomeProd': 'Notebook ryzen 9', 'valor': 3000, 'windows': false},
  ];

  final windows = (e) => e['windows'] == true;
  final nome = (e) => e['nomeProd'];
  List<dynamic> result = produtos.where(windows).map(nome).toList();

  print('produtos windows: $result\n');
}

void main(List<String> args) {
  Map<String, dynamic> maps = {
    // Declaração de Maps
//Tipo Map <Tipo_key, Tipo_conteudos> dynamic é um tipo em que pode se inserir qualquer informação.
    "nome": "Rafael",
    "idade": 19,
    "cidade": "Recife"
  };
  // No lugar de posições\indices, Maps tem as keys.
  print(maps["nome"]);
  print(maps["idade"]);
  print(maps["cidade"]);

  everyMap();
  whereMap();
}
