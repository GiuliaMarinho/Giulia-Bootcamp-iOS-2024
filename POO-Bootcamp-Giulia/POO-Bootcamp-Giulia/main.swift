//
//  main.swift
//  POO-Bootcamp-Giulia
//
//  Created by Giulia Marinho on 27/06/24.
//

import Foundation

//MARK: - Classe -> Modelo de um OBJETO!
// Atributo / Propriedades = caracteristicas de um objeto
// Ações = função / métodos
// CLASSE TRABALHA COM REFERENCE TYPE

// Como criar uma classe?
// Utilizamos a palavra reservada 'class' e na sequencia seu nome sendo, SEMPRE COM A PRIMEIRA LETRA MAIUSCULA.

class Automovel {
    
    let cor: String = "Vermelho"
    let quantidadeDeEspelho: Int = 5
    let marca: String = "Ferrari"
    let tipoCombustivel: String = "Alcool"
    let tipoMotor: String = "AP"
    let potencia: Double = 2.0
    let conversivel: Bool = true
    var cavaloDePotencia: Int = 900
    
    func ligarCarro() {
        print("O carro da marca \(marca) está ligado")
    }
    
    func acenderFarois() {
        print("As luzes estão ligadas")
    }
    
    func detalheCompletoAutomovel() -> String {
        let texto: String = "O veiculo da marca: \(marca) tem o motor: \(tipoMotor) que utiliza o combustivel \(tipoCombustivel) e tem um total de \(cavaloDePotencia) cavalos de potencia"
        return texto
    }
    
}


// Criando objeto!
// Um objeto só ganha VIDA, QUANDO GERAMOS A SUA INSTANCIA QUE É O ABRE E FECHA PARENTESES ()
var ferrari: Automovel = Automovel()

//print(ferrari.cavaloDePotencia)
//print(ferrari.cor)
//print(ferrari.conversivel)
//print(ferrari.detalheCompletoAutomovel())

// Para alterar uma propriedade, você precisa chamar o objeto e atribuir um novo valor a propriedade
ferrari.cavaloDePotencia = 1200
print(ferrari.cavaloDePotencia)

var uno: Automovel = Automovel()
uno.cavaloDePotencia = 1500
print(uno.cavaloDePotencia)


//MARK: - Construtores

class Pessoa {
    var nome: String
    var idade: Int
    var peso: Double
    var altura: Double
    
    // Método Construtor -> Ele é quem seta/informa os valores iniciais!!!
    init(nome: String, idade: Int, peso: Double, altura: Double) {
        self.nome = nome
        self.idade = idade
        self.peso = peso
        self.altura = altura
    }
    
}

// Neste exemplo, estamos gerando a instancia de uma forma diferente -> a instancia é gerada QUANDO preenchido todas as propriedades
// do metodo construtor
var caio: Pessoa = Pessoa(nome: "Caio", idade: 22, peso: 80, altura: 1.82)
print(caio.idade)
print(caio.peso)

var pedro: Pessoa = Pessoa(nome: "Pedro", idade: 45, peso: 92, altura: 1.77)
print(pedro.idade)
print(pedro.peso)

// Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!
class Celular {
    var valorPiCelular: Double = 3.14
    var tamanho: Double = 1.432432
    var cor: String
    var preco: Double
    var modelo: String
    
    init(modelo: String, preco: Double, cor: String) {
        self.modelo = modelo
        self.preco = preco
        self.cor = cor
    }
}

var iphone: Celular = Celular(modelo: "Iphone 15", preco: 8000, cor: "Preto")


//MARK: Se caso NÃO TEM VALOR INICIAL, VOCÊ PRECISA PASSAR ELE NO INIT!!!!!!
//MARK: O mesmo se encaixa para tipagens opcionais, POIS o opcional EXISTE ALGO DE INICIO -> QUE É O NIL! Com base nisso
//MARK: não é obrigado a passar ele no construtor. Mas caso queira, sem problemas!

class Bolo {
    
    var peso: Double
    var preco: Double
    var sabor: [String]
    var topoDeBolo: Bool? = nil
    
    init(peso: Double, preco: Double, sabor: [String]) {
        self.peso = peso
        self.preco = preco
        self.sabor = sabor
    }
    
    func adicionarSabor(sabor: String) {
        self.sabor.append(sabor)
    }
}

var boloAniversario: Bolo = Bolo(peso: 10, preco: 200, sabor: ["Chocolate", "Baunilha"])
var boloCasamento: Bolo = Bolo(peso: 50, preco: 2000, sabor: ["Chocolate", "Baunilha", "Maça"])

// MARK: - Exercicios Classe

// Exercício 1: Conta Poupança
// Objetivo: Desenvolver uma classe chamada 'ContaPoupanca' para gerenciar os depósitos em uma conta poupança de banco.
//
// Descrição:
// Propriedades:
// - saldo (Double): O saldo atual na conta.
// Construtor:
// - Inicialize o saldo.
// Métodos:
// - depositar(valor: Double): Adiciona(+) o valor especificado ao saldo atual. (saldo = saldo + valor especificado)
// - consultarSaldo() -> Double: Retorna o saldo atual da conta.

//   Para usar este método, você deve criar uma instância da classe, chamar este método e armazenar o valor retornado em uma variável. Em seguida, você pode imprimir esse valor.
// print("Saldo atual: R$\(saldoAtual)")

class ContaPoupanca {
    var saldo: Double
    
    init(saldo: Double) {
        self.saldo = saldo
    }

    func depositar(valor: Double) {
        saldo = saldo + valor
    }
    
    func consultarSaldo()-> Double {
        return saldo
    }
}

var conta: ContaPoupanca = ContaPoupanca(saldo: 550.00 )
print(conta.consultarSaldo())
conta.depositar(valor: 550.00)
print(conta.consultarSaldo())

// Exercício 2: Gerenciador de Filmes
// Objetivo: Desenvolver uma classe chamada 'Filme' para gerenciar informações sobre filmes em um acervo pessoal.
//
// Descrição:
// Propriedades:
// - titulo (String): O título do filme.
// - diretor (String): O diretor do filme.
// - ano (Int): O ano de lançamento do filme.
// Construtor:
// - Inicialize titulo, diretor e ano.
// Métodos:
// - exibirInfo() -> String: Retorna uma string com todas as informações do filme formatadas.

//   Para usar este método, crie uma instância da classe, chame o método e armazene a informação retornada em uma variável. Em seguida, imprima essa variável para visualizar os detalhes do filme.

class Filme {
    var titulo: String
    var diretor: String
    var ano: Int
    
    init(titulo: String, diretor: String, ano: Int) {
        
        self.titulo = titulo
        self.diretor = diretor
        self.ano = ano
    }
    
    func exibirInfo() -> String {
        var informacoes: String = " O filme \(titulo) foi ao ar pelo diretor \(diretor), no ano de \(ano)"
        return informacoes
    }
}

var filme2: Filme = Filme(titulo: "Diarios de um vampiro", diretor: "Julie Plec", ano: 2009)
print(filme2.exibirInfo())


// Exercício 3: Sistema de Registro de Alunos
// Objetivo: Criar uma classe chamada 'Aluno' para armazenar dados e calcular a média de notas de alunos em uma escola.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do aluno.
// - notas (Array<Double>): Uma lista de notas do aluno.
// Construtor:
// - Inicialize nome e notas.
// Métodos:
// - calcularMedia() -> Double: Calcula e retorna a média das notas do aluno utilizando um laço de repetição para somar as notas.

//   Para utilizar este método, crie uma instância da classe, invoque o método para calcular a média, armazene esse valor em uma variável e imprima a média para visualizar.
// print("Média das notas de \(aluno.nome): \(media)")


class Aluno {
    
    var nome: String
    var notas: [Double]
    
    init(nome: String, notas: [Double]) {
        self.nome = nome
        self.notas = notas
    }
    
    func calcularMedia() -> Double {
        var soma: Double = 0
        for nota in notas {
            soma = soma + nota
        }
        return soma / Double(notas.count)
    }
}

var alunaGiulia: Aluno = Aluno(nome: "Giulia", notas: [7,6,5,4])
print("Media das notas de \(alunaGiulia.nome): \(alunaGiulia.calcularMedia())")

// MARK: - Herança

// Classe PAI
class Animal {

  var nome: String
  var cor: String
  var peso: Double

  init(nome: String, cor: String, peso: Double) {
    self.nome = nome
    self.cor = cor
    self.peso = peso
  }
}

// Classe Filha(classe na qual HERDA as propriedades e metodos do pai)
// A classe filha ela contem TUDO OQUE O PAI (NO NOSSO EXEMPLO É A CLASSE ANIMAL) CONTEM, E + OQUE ELA JÁ CONTEM!
class Gato: Animal {

  var contemRabo: Bool = true
  var bebeLeite: Bool

  // toda a vez que você utilizar a palavra super, significa que você está chamando algo da classe PAI(no nosso exemplo, o init da classe Animal)
  init(bebeLeite: Bool, nome: String, cor: String, peso: Double) {
    self.bebeLeite = bebeLeite
    super.init(nome: nome, cor: cor, peso: peso)
  }

}

var bartolomeu: Gato = Gato(bebeLeite: true, nome: "Bartolomeu", cor: "Marrom", peso: 5)
