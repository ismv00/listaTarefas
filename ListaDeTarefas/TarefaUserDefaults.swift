//
//  TarefaUserDefaults.swift
//  ListaDeTarefas
//
//  Created by Igor S. Menezes on 26/05/22.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func salvar(tarefa: String){
        //recuperar tarefas já salvas
        tarefas = listar()
        
        
        //salvar tarefa
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> Array<String>{
        //recupera os dados
        let dados = UserDefaults.standard.object(forKey: chave)
        
        
        // verificar se tem dados, se sim, retorna os dados, senao, retorna array vazio
        if dados != nil {
            return dados as! Array<String>
        }else {
            return []
        }
    }
    
    func remover(indice: Int) {
        tarefas = listar() // Recupera as tarefas já salvas
        tarefas.remove(at: indice) // Remove pelo indice
        UserDefaults.standard.set(tarefas, forKey: chave) // salva as tarefas novamente
    }
}
