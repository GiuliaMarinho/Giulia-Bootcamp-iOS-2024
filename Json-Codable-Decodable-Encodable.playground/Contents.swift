import UIKit


//{
//   "nome": "Giulia Marinho",
//   "idade": 22,
//   "professor": false,
//   "cursos":["ios", "swift", "swiftUI"],
//   "endereco": {
//     "cidade": "Nuporanga",
//     "estado": "SP"
//   }
//}


struct Professor {
    var nome: String
    var idade: Int
    var professor: Bool
    var curso: [String]
    var endereco: Endereco
}

struct Endereco {
    var cidade: String
    var estado: String
}

//{
//    "pessoa": {
//        "nome": "guilherme",
//        "idade": 17,
//        "sobrenome" : "Braganca"
//      }
// }

struct MinhaSogra {
    var pessoa: Pessoa
}

struct Pessoa {
    var nome: String
    var idade: Int
    var sobrenome: String
}

// Exemplo LISTA

//[
//   {
//    "nome": "Caio",
//    "idade": 22
//   },
//   {
//    "nome": "Matheus",
//    "idade": 25
//   },
//   {
//    "nome": "Lucas",
//    "idade": 32
//   }
//]

struct Aluno {
    var nome: String
    var idade: Int
}

var listaAluno: [Aluno] = [
    Aluno(nome: "Caio", idade: 22),
    Aluno(nome: "Matheus", idade: 25),
    Aluno(nome: "Lucas", idade: 32),
]

// Exercicios

// 1 - Escreva um JSON que represente uma lista com dois objetos do tipo Pessoa, onde o primeiro tem nome “Ana” e idade 28, e o segundo, nome “Ricardo” e idade 35.

//[
//  {
//    "nome": "Ana",
//    "idade": 28
//  },
//  {
//    "nome": "Ricardo",
//    "idade": 35
//  }
//]

// 2 - Crie um JSON que represente um array de objetos, cada um representando um produto com id, nome e preço. Inclua pelo menos três produtos no array. Por fim, crie um modelo swift desse Json, e alem disso tambem crie um objeto com os valores iguais ao do json.
//
//[
//    {
//      "id": 1,
//      "nome": "Produto 1",
//      "preço": 10.00
//    },
//    {
//      "id": 2,
//      "nome": "Produto 2",
//      "preço": 30.00
//    },
//    {
//      "id": 3,
//      "nome": "Produto 3",
//      "preço": 60.00
//    }
//  ]
struct ProdutoEscolar {
    
    var id : Int
    var nome: String
    var preco: Double
    
}

let listaProdutoEscolar: [ProdutoEscolar] = [
    ProdutoEscolar(id: 1, nome: "Produto 1", preco: 10.00),
    ProdutoEscolar(id: 2, nome: "Produto 2", preco: 30.00),
    ProdutoEscolar(id: 3, nome: "Produto 3", preco: 60.00)
]

// 3 - Crie um JSON representando o objeto Veiculo fornecido em Swift

struct Veiculo {
    var id: Int
    var marca: String
    var modelo: String
    var ano: Int
    var acessorios: [Acessorio]
}

struct Acessorio {
    var nome: String
    var preco: Double
    var configuracaoAcessorio: ConfiguracaoAcessorio
}

struct ConfiguracaoAcessorio {
    var tipo: String
    var dataCriacao: String
}
// Objeto com valores
let veiculo = Veiculo(
    id: 101,
    marca: "Toyota",
    modelo: "Corolla",
    ano: 2022,
    acessorios: [
        Acessorio(
            nome: "Teto solar",
            preco: 2500.00,
            configuracaoAcessorio: ConfiguracaoAcessorio(
                tipo: "Luxo",
                dataCriacao: "2021-06-15"
            )
        ),
        Acessorio(
            nome: "Multimídia",
            preco: 1200.00,
            configuracaoAcessorio: ConfiguracaoAcessorio(
                tipo: "Tecnologia",
                dataCriacao: "2021-08-20"
            )
        )
    ]
)

