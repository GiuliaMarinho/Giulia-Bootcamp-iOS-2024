//
//  main.swift
//  DesafioClasseHeranca
//
//  Created by Caio Fabrini on 28/06/24.
//

import Foundation



// Exercício 1: Controle de Estoque
// Objetivo: Criar uma classe chamada 'Produto' para gerenciar o estoque de produtos em uma loja.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do produto.
// - quantidade (Int): Quantidade do produto em estoque.
// Construtor:
// - Inicialize nome e quantidade.
// Métodos:
// - adicionarEstoque(qtd: Int): Adiciona a quantidade especificada ao estoque existente.
// - removerEstoque(qtd: Int) -> Bool: Tenta remover a quantidade especificada do estoque; retorna true se for bem-sucedido, false se não houver estoque suficiente.



// Exercício 2: Sistema de Agendamento de Consultas
// Objetivo: Criar uma classe chamada 'Consulta' para gerenciar agendamentos médicos.
//
// Descrição:
// Propriedades:
// - paciente (String): Nome do paciente.
// - data (String): Data agendada para a consulta.
// Construtor:
// - Inicialize paciente e data.
// Métodos:
// - reagendar(dataNova: String): Altera a data da consulta para uma nova data fornecida.




// Exercício 3: Monitoramento de Velocidade
// Objetivo: Desenvolver uma classe chamada 'Veiculo' que monitora a velocidade atual e verifica se está acima do limite.
//
// Descrição:
// Propriedades:
// - velocidadeAtual (Double): A velocidade atual do veículo em km/h.
// - limiteVelocidade (Double): O limite de velocidade em km/h.
// Construtor:
// - Inicialize a velocidadeAtual e limiteVelocidade.
// Métodos:
// - verificarVelocidade() -> String: Retorna uma mensagem indicando se o veículo está acima do limite de velocidade ou não.





// Exercício 4: Sistema de Reservas de Salas
// Objetivo: Criar uma classe chamada 'Sala' para gerenciar as reservas de salas em um centro de conferências.
//
// Descrição:
// Propriedades:
// - numero (Int): Número da sala.
// - reservada (Bool): Indica se a sala está reservada.
// Construtor:
// - Inicialize numero e começe com reservada definido como false.
// Métodos:
// - reservar(): Altera o estado de 'reservada' para true.
// - liberar(): Altera o estado de 'reservada' para false.




// Exercício 5: Gerenciador de Perfis de Usuário
// Objetivo: Desenvolver uma classe chamada 'Usuario' para gerenciar as informações de perfil dos usuários de um sistema.
//
// Descrição:
// Propriedades:
// - nomeUsuario (String): Nome de usuário.
// - email (String): Email do usuário.
// - ativo (Bool): Indica se o perfil do usuário está ativo.
// Construtor:
// - Inicialize nomeUsuario, email e comece com ativo definido como true.
// Métodos:
// - desativarPerfil(): Altera o estado de 'ativo' para false, desativando o perfil do usuário.




// Exercício 6: Sistema de VeiculosPotentes
// Objetivo: Criar uma classe base chamada 'VeiculosPotentes' e duas subclasses 'Carro' e 'Motocicleta' que herdem de 'Veiculo'.
//
// Descrição:
// Classe Base:
// - Veiculo
// Propriedades:
// - marca (String)
// - modelo (String)
// - ano (Int)
// Construtor:
// - Inicialize marca, modelo e ano.
// Subclasses:
// - Carro: Adiciona a propriedade 'numeroDePortas' (Int).
// - Motocicleta: Adiciona a propriedade 'cilindrada' (Int).



// Exercício 7: Hierarquia Acadêmica
// Objetivo: Desenvolver uma classe 'Pessoa' e duas subclasses 'Aluno' e 'Professor' que herdem de 'Pessoa'.
//
// Descrição:
// Classe Base:
// - Pessoa
// Propriedades:
// - nome (String)
// - idade (Int)
// Construtor:
// - Inicialize nome e idade.
// Subclasses:
// - Aluno: Adiciona a propriedade 'curso' (String).
// - Professor: Adiciona a propriedade 'departamento' (String).



// Exercício 8: Sistema de Organização de Conteúdo
// Objetivo: Criar uma classe 'ConteudoDigital' e duas subclasses 'Video' e 'Artigo' que herdem de 'ConteudoDigital'.
//
// Descrição:
// Classe Base:
// - ConteudoDigital
// Propriedades:
// - titulo (String)
// - autor (String)
// Construtor:
// - Inicialize titulo e autor.
// Subclasses:
// - Video: Adiciona a propriedade 'duracao' (Int, em minutos).
// - Artigo: Adiciona a propriedade 'numeroDePalavras' (Int).



// Exercício 9: Hierarquia de Imóveis
// Objetivo: Criar uma classe 'Imovel' e duas subclasses 'Casa' e 'Apartamento' que herdem de 'Imovel'.
//
// Descrição:
// Classe Base:
// - Imovel
// Propriedades:
// - endereco (String)
// - preco (Double)
// Construtor:
// - Inicialize endereco e preco.
// Subclasses:
// - Casa: Adiciona a propriedade 'tamanhoDoTerreno' (Double, em metros quadrados).
// - Apartamento: Adiciona a propriedade 'andar' (Int).




// Exercício 10: Cadeia de Restaurantes
// Objetivo: Desenvolver uma classe 'Restaurante' e duas subclasses 'RestauranteFastFood' e 'RestauranteGourmet' que herdem de 'Restaurante'.
//
// Descrição:
// Classe Base:
// - Restaurante
// Propriedades:
// - nome (String)
// - localizacao (String)
// Construtor:
// - Inicialize nome e localização.
// Subclasses:
// - RestauranteFastFood: Adiciona a propriedade 'tempoMedioDeEntrega' (Int, em minutos).
// - RestauranteGourmet: Adiciona a propriedade 'chef' (String).

















// MARK: - RESOLUÇÃO


// PARA QUE VOCÊS NÃO TENHAM PROBLEMA, A RESOLUÇÃO DE TODOS OS EXERCICIOS ESTÁ COM O NOME DAS CLASSES COM O FINAL 2 PARA QUE VOCÊS NÃO TENHAM PROBLEMA DE EXISTIR 2 CLASSES COM O MESMO NOME!




// Exercício 1: Controle de Estoque
// Objetivo: Criar uma classe chamada 'Produto' para gerenciar o estoque de produtos em uma loja.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do produto.
// - quantidade (Int): Quantidade do produto em estoque.
// Construtor:
// - Inicialize nome e quantidade.
// Métodos:
// - adicionarEstoque(qtd: Int): Adiciona a quantidade especificada ao estoque existente.
// - removerEstoque(qtd: Int) -> Bool: Tenta remover a quantidade especificada do estoque; retorna true se for bem-sucedido, false se não houver estoque suficiente.
class Produto2 {
  var nome: String
  var quantidade: Int

  init(nome: String, quantidade: Int) {
    self.nome = nome
    self.quantidade = quantidade
  }

  func adicionarEstoque(qtd: Int) {
    quantidade += qtd
  }

  func removerEstoque(qtd: Int) -> Bool {
    if quantidade >= qtd {
      quantidade -= qtd
      return true
    } else {
      return false
    }
  }
}

// Exercício 2: Sistema de Agendamento de Consultas
// Objetivo: Criar uma classe chamada 'Consulta' para gerenciar agendamentos médicos.
//
// Descrição:
// Propriedades:
// - paciente (String): Nome do paciente.
// - data (String): Data agendada para a consulta.
// Construtor:
// - Inicialize paciente e data.
// Métodos:
// - reagendar(dataNova: String): Altera a data da consulta para uma nova data fornecida.
class Consulta2 {
  var paciente: String
  var data: String

  init(paciente: String, data: String) {
    self.paciente = paciente
    self.data = data
  }

  func reagendar(dataNova: String) {
    data = dataNova
  }
}

// Exercício 3: Monitoramento de Velocidade
// Objetivo: Desenvolver uma classe chamada 'Veiculo' que monitora a velocidade atual e verifica se está acima do limite.
//
// Descrição:
// Propriedades:
// - velocidadeAtual (Double): A velocidade atual do veículo em km/h.
// - limiteVelocidade (Double): O limite de velocidade em km/h.
// Construtor:
// - Inicialize a velocidadeAtual e limiteVelocidade.
// Métodos:
// - verificarVelocidade() -> String: Retorna uma mensagem indicando se o veículo está acima do limite de velocidade ou não.
class Veiculo2 {
  var velocidadeAtual: Double
  var limiteVelocidade: Double

  init(velocidadeAtual: Double, limiteVelocidade: Double) {
    self.velocidadeAtual = velocidadeAtual
    self.limiteVelocidade = limiteVelocidade
  }

  func verificarVelocidade() -> String {
    if velocidadeAtual > limiteVelocidade {
      return "Velocidade acima do limite!"
    } else {
      return "Velocidade dentro do limite."
    }
  }
}

// Exercício 4: Sistema de Reservas de Salas
// Objetivo: Criar uma classe chamada 'Sala' para gerenciar as reservas de salas em um centro de conferências.
//
// Descrição:
// Propriedades:
// - numero (Int): Número da sala.
// - reservada (Bool): Indica se a sala está reservada.
// Construtor:
// - Inicialize numero e começe com reservada definido como false.
// Métodos:
// - reservar(): Altera o estado de 'reservada' para true.
// - liberar(): Altera o estado de 'reservada' para false.
class Sala2 {
  var numero: Int
  var reservada: Bool

  init(numero: Int) {
    self.numero = numero
    self.reservada = false
  }

  func reservar() {
    reservada = true
  }

  func liberar() {
    reservada = false
  }
}

// Exercício 5: Gerenciador de Perfis de Usuário
// Objetivo: Desenvolver uma classe chamada 'Usuario' para gerenciar as informações de perfil dos usuários de um sistema.
//
// Descrição:
// Propriedades:
// - nomeUsuario (String): Nome de usuário.
// - email (String): Email do usuário.
// - ativo (Bool): Indica se o perfil do usuário está ativo.
// Construtor:
// - Inicialize nomeUsuario, email e comece com ativo definido como true.
// Métodos:
// - desativarPerfil(): Altera o estado de 'ativo' para false, desativando o perfil do usuário.
class Usuario2 {
  var nomeUsuario: String
  var email: String
  var ativo: Bool

  init(nomeUsuario: String, email: String) {
    self.nomeUsuario = nomeUsuario
    self.email = email
    self.ativo = true
  }

  func desativarPerfil() {
    ativo = false
  }
}



// Exercício 6: Sistema de VeiculosPotentes
// Objetivo: Criar uma classe base chamada 'VeiculosPotentes' e duas subclasses 'Carro' e 'Motocicleta' que herdem de 'Veiculo'.
//
// Descrição:
// Classe Base:
// - Veiculo
// Propriedades:
// - marca (String)
// - modelo (String)
// - ano (Int)
// Construtor:
// - Inicialize marca, modelo e ano.
// Subclasses:
// - Carro: Adiciona a propriedade 'numeroDePortas' (Int).
// - Motocicleta: Adiciona a propriedade 'cilindrada' (Int).
class VeiculosPotentes2 {
    var marca: String
    var modelo: String
    var ano: Int

    init(marca: String, modelo: String, ano: Int) {
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
    }
}

class Carro2: VeiculosPotentes2 {
    var numeroDePortas: Int

    init(marca: String, modelo: String, ano: Int, numeroDePortas: Int) {
        self.numeroDePortas = numeroDePortas
        super.init(marca: marca, modelo: modelo, ano: ano)
    }
}

class Motocicleta2: VeiculosPotentes2 {
    var cilindrada: Int

    init(marca: String, modelo: String, ano: Int, cilindrada: Int) {
        self.cilindrada = cilindrada
        super.init(marca: marca, modelo: modelo, ano: ano)
    }
}

// Exercício 7: Hierarquia Acadêmica
// Objetivo: Desenvolver uma classe 'Pessoa' e duas subclasses 'Aluno' e 'Professor' que herdem de 'Pessoa'.
//
// Descrição:
// Classe Base:
// - Pessoa
// Propriedades:
// - nome (String)
// - idade (Int)
// Construtor:
// - Inicialize nome e idade.
// Subclasses:
// - Aluno: Adiciona a propriedade 'curso' (String).
// - Professor: Adiciona a propriedade 'departamento' (String).
class Pessoa2 {
    var nome: String
    var idade: Int

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
}

class Aluno2: Pessoa2 {
    var curso: String

    init(nome: String, idade: Int, curso: String) {
        self.curso = curso
        super.init(nome: nome, idade: idade)
    }
}

class Professor2: Pessoa2 {
    var departamento: String

    init(nome: String, idade: Int, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, idade: idade)
    }
}

// Exercício 8: Sistema de Organização de Conteúdo
// Objetivo: Criar uma classe 'ConteudoDigital' e duas subclasses 'Video' e 'Artigo' que herdem de 'ConteudoDigital'.
//
// Descrição:
// Classe Base:
// - ConteudoDigital
// Propriedades:
// - titulo (String)
// - autor (String)
// Construtor:
// - Inicialize titulo e autor.
// Subclasses:
// - Video: Adiciona a propriedade 'duracao' (Int, em minutos).
// - Artigo: Adiciona a propriedade 'numeroDePalavras' (Int).
class ConteudoDigital2 {
    var titulo: String
    var autor: String

    init(titulo: String, autor: String) {
        self.titulo = titulo
        self.autor = autor
    }
}

class Video2: ConteudoDigital2 {
    var duracao: Int

    init(titulo: String, autor: String, duracao: Int) {
        self.duracao = duracao
        super.init(titulo: titulo, autor: autor)
    }
}

class Artigo2: ConteudoDigital2 {
    var numeroDePalavras: Int

    init(titulo: String, autor: String, numeroDePalavras: Int) {
        self.numeroDePalavras = numeroDePalavras
        super.init(titulo: titulo, autor: autor)
    }
}

// Exercício 9: Hierarquia de Imóveis
// Objetivo: Criar uma classe 'Imovel' e duas subclasses 'Casa' e 'Apartamento' que herdem de 'Imovel'.
//
// Descrição:
// Classe Base:
// - Imovel
// Propriedades:
// - endereco (String)
// - preco (Double)
// Construtor:
// - Inicialize endereco e preco.
// Subclasses:
// - Casa: Adiciona a propriedade 'tamanhoDoTerreno' (Double, em metros quadrados).
// - Apartamento: Adiciona a propriedade 'andar' (Int).
class Imovel2 {
    var endereco: String
    var preco: Double

    init(endereco: String, preco: Double) {
        self.endereco = endereco
        self.preco = preco
    }
}

class Casa2: Imovel2 {
    var tamanhoDoTerreno: Double

    init(endereco: String, preco: Double, tamanhoDoTerreno: Double) {
        self.tamanhoDoTerreno = tamanhoDoTerreno
        super.init(endereco: endereco, preco: preco)
    }
}

class Apartamento2: Imovel2 {
    var andar: Int

    init(endereco: String, preco: Double, andar: Int) {
        self.andar = andar
        super.init(endereco: endereco, preco: preco)
    }
}

// Exercício 10: Cadeia de Restaurantes
// Objetivo: Desenvolver uma classe 'Restaurante' e duas subclasses 'RestauranteFastFood' e 'RestauranteGourmet' que herdem de 'Restaurante'.
//
// Descrição:
// Classe Base:
// - Restaurante
// Propriedades:
// - nome (String)
// - localizacao (String)
// Construtor:
// - Inicialize nome e localização.
// Subclasses:
// - RestauranteFastFood: Adiciona a propriedade 'tempoMedioDeEntrega' (Int, em minutos).
// - RestauranteGourmet: Adiciona a propriedade 'chef' (String).
class Restaurante2 {
    var nome: String
    var localizacao: String

    init(nome: String, localizacao: String) {
        self.nome = nome
        self.localizacao = localizacao
    }
}

class RestauranteFastFood2: Restaurante2 {
    var tempoMedioDeEntrega: Int

    init(nome: String, localizacao: String, tempoMedioDeEntrega: Int) {
        self.tempoMedioDeEntrega = tempoMedioDeEntrega
        super.init(nome: nome, localizacao: localizacao)
    }
}

class RestauranteGourmet2: Restaurante2 {
    var chef: String

    init(nome: String, localizacao: String, chef: String) {
        self.chef = chef
        super.init(nome: nome, localizacao: localizacao)
    }
}
