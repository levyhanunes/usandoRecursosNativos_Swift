//
//  MenuOpcoesAlunos.swift
//  Agenda
//
//  Created by Alura on 07/12/17.
//  Copyright © 2017 Alura. All rights reserved.
//

import UIKit

enum MenuActionSheetAluno {
    case sms
    case ligacao
    case waze
    case mapa
<<<<<<< HEAD
    case abrirPaginaWeb
=======
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
}

class MenuOpcoesAlunos: NSObject {
    
    func configuraMenuDeOpcoesDoAluno(completion:@escaping(_ opcao:MenuActionSheetAluno) -> Void) -> UIAlertController {
        let menu = UIAlertController(title: "Atencao", message: "escolha uma das opcoes abaixo", preferredStyle: .actionSheet)
        let sms = UIAlertAction(title: "enviar SMS", style: .default) { (acao) in
            completion(.sms)
        }
        menu.addAction(sms)
        
        let ligacao = UIAlertAction(title: "ligar", style: .default) { (acao) in
            completion(.ligacao)
        }
        menu.addAction(ligacao)
        
        let waze = UIAlertAction(title: "localizar no waze", style: .default) { (acao) in
            completion(.waze)
        }
        menu.addAction(waze)
        
        let mapa = UIAlertAction(title: "localizar no mapa", style: .default) { (acao) in
            completion(.mapa)
        }
        menu.addAction(mapa)
        
<<<<<<< HEAD
        let abrirPaginaWeb = UIAlertAction(title: "abrir página", style: .default) { (acao) in
            completion(.abrirPaginaWeb)
        }
        menu.addAction(abrirPaginaWeb)
        
=======
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
        let cancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
        menu.addAction(cancelar)
        
        return menu
    }

}
