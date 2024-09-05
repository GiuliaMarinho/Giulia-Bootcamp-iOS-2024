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

// 3 -

//{
//    "id": 101,
//    "marca": "Toyota",
//    "modelo": "Corolla",
//    "ano": 2022,
//    "acessorios": [
//        {
//            "nome": "Teto solar",
//            "preco": 2500.00,
//            "configuracaoAcessorio": {
//                "tipo": "Luxo",
//                "dataCriacao": "2021-06-15"
//            }
//        },
//        {
//            "nome": "Multimídia",
//            "preco": 1200.00,
//            "configuracaoAcessorio": {
//                "tipo": "Tecnologia",
//                "dataCriacao": "2021-08-20"
//            }
//        }
//    ]
//}



// MARK: - Decodable

// Decodable é um protocolo em Swift que permite que você converta dados no formato JSON em um objeto Swift. Este processo é conhecido como decodificação.

// OBS: Quando tentar realizar o decode(parse) ele vai olhar sempre buscando a chave e a tipagem se ambos são IGUAIS! Caso não sejam iguais, ele cai no catch.
// Tudo oque tem no MODELO SWIFT que não seja opcional, ele se torna algo OBRIGATORIO!! Caso o back não retorne aquele campo, ele vai cair no catch. Caso a variavel seja opcional, ai não tem problema, pois seu valor será nil


struct House: Decodable {
  var address: String
  var numberOfRooms: Int
  var hasGarden: Bool
}

let jsonString = """
{
  "address": "Avenida 4562 bairro jardim europa",
  "numberOfRooms": 23435,
  "hasGarden": false
}
"""

if let jsonData = jsonString.data(using: .utf8) {
  do {
    let house = try JSONDecoder().decode(House.self, from: jsonData)
    print("Decodificado com sucesso!!")
    print(house.address)
    print(house.numberOfRooms)
    print(house.hasGarden)
  } catch  {
    // Ele tenta (try) decodificar, se caso não conseguir, ele cai no caso do catch
    print("Error ao decodificar o JSON: \(error.localizedDescription)")
  }
}


// MARK: - CodingKey

struct Animal: Decodable {
  var species: String
  var age: Int
  var habitatType: String
  var isDangerous: Bool

  enum CodingKeys: String, CodingKey {
    case species
    case age
    case habitatType = "habitat_type"
    case isDangerous = "is_dangerous"
  }
}

let jsonStringAnimal = """
{
 "species" : "Tigre",
 "age": 1,
 "habitat_type": "Floresta",
 "is_dangerous": true
}
"""

if let jsonData = jsonStringAnimal.data(using: .utf8) {
  do {
    let animal = try JSONDecoder().decode(Animal.self, from: jsonData)
    print("Animal Decodificado com sucesso!!")
    print(animal.species)
    print(animal.age)
    print(animal.habitatType)
    print(animal.isDangerous)
  } catch  {
    // Ele tenta (try) decodificar, se caso não conseguir, ele cai no caso do catch
    print("Error ao decodificar o JSON: \(error.localizedDescription)")
  }
}

// MARK: Encodable

// Encodable é outro protocolo em Swift. Ele permite que você faça o oposto do que o Decodable faz: você pode converter um objeto Swift em dados no formato JSON. Isso é chamado de codificação.

struct Dog: Encodable {
  var name: String
  var age: Int
  var breed: String
  var isVaccinated: Bool

  enum CodingKeys: String, CodingKey {
    case name
    case age
    case breed
    case isVaccinated = "is_vaccinated"
  }
}

let myDog = Dog(name: "Ayron", age: 1, breed: "Samoieda", isVaccinated: true)

do {
  let encoder = JSONEncoder()
  encoder.outputFormatting = .prettyPrinted // facilita a leitura
  let jsonData = try encoder.encode(myDog)
  if let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
  }
} catch {
  print("Error ao codificar o JSON: \(error.localizedDescription)")
}


// MARK: - Desafios

// 1- Faça o Decodable desse json

struct Film: Decodable {
  var title: String
  var director: String
  var releaseYear: Int
}

let filmJson = """
{
   "title": "Inception",
   "director": "Christopher Nolan",
   "releaseYear": 2010
}

"""


if let jsonData = filmJson.data(using: .utf8) {
  do {
    let Film = try JSONDecoder().decode(Film.self, from: jsonData)
    print("Decodificado com sucesso!!")
    print(Film.title)
    print(Film.director)
    print(Film.releaseYear)
  } catch  {
    print("Error ao decodificar o JSON: \(error.localizedDescription)")
  }
}



// 2 - Faça o Encodable desse modelo

struct Student: Encodable {
    var name: String
    var age: Int
    var grades: [Int]
    
}

let myPerson = Student(name: "Giulia", age: 22, grades: [10] )

do {
  let encoder = JSONEncoder()
  encoder.outputFormatting = .prettyPrinted
  let jsonData = try encoder.encode(myPerson)
  if let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
  }
} catch {
  print("Error ao codificar o JSON: \(error.localizedDescription)")
}

// 3 - Faça o Decode funcionar

//OBS: Você recebeu um JSON de uma API que contém detalhes sobre um veículo. O JSON tem 10 campos, mas você precisa extrair e usar apenas 4 deles: model, make, year, e color. Durante a decodificação, você encontrará alguns erros intencionais que precisam ser corrigidos.

struct Vehicle: Decodable {
    var model: String
    var make: String
    var year: String
    var color: String

}

let jsonStringVehicle = """
{
    "model": "Explorer",
    "make": "Ford",
    "year": "2020",
    "color": "Blue",
    "engine": "3.5L V6",
    "seats": 7,
   "type": "SUV",
   "milage": "12000",
   "price": "35000",
    "airConditioned": true
}
"""

if let jsonData = jsonStringVehicle.data(using: .utf8) {
  do {
    let decoder = JSONDecoder()
    let vehicle = try decoder.decode(Vehicle.self, from: jsonData)
      print("Decodificado com sucesso!!")
      print(vehicle)
  } catch {
    print("Erro ao decodificar o Vehicle: \(error)")
  }
}


