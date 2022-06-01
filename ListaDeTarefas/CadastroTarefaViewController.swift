//
//  CadastroTarefaViewController.swift
//  ListaDeTarefas
//
//  Created by Igor S. Menezes on 26/05/22.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    @IBOutlet weak var tarefaCampo: UITextField!
    
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        if tarefaCampo.text == "" {
            let alertController = UIAlertController(title: "Tarefa", message: "Por favor, adicione uma tarefa", preferredStyle: .alert)
            let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(acaoConfirmar)
            present(alertController , animated: true, completion: nil)
        }
        else {
            if let textoDigitado = tarefaCampo.text {
               
                let tarefa = TarefaUserDefaults()
                tarefa.salvar(tarefa: textoDigitado)
                tarefaCampo.text = ""
                
                let dados = tarefa.listar()
                print(dados)
               
            }
        }
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
