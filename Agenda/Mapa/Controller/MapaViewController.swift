//
//  MapaViewController.swift
//  Agenda
//
//  Created by Alura on 11/12/17.
//  Copyright © 2017 Alura. All rights reserved.
//

import UIKit
import MapKit

<<<<<<< HEAD
class MapaViewController: UIViewController, CLLocationManagerDelegate {
=======
class MapaViewController: UIViewController {
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var mapa: MKMapView!
    
    // MARK: - Variavel
    
    var aluno:Aluno?
<<<<<<< HEAD
    lazy var localizacao = Localizacao()
    lazy var gerenciadorDeLocalizacao = CLLocationManager()
=======
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = getTitulo()
<<<<<<< HEAD
        verificaAutorizacaoDoUsuario()
        localizacaoInicial()
        mapa.delegate = localizacao
        gerenciadorDeLocalizacao.delegate = self
=======
        localizacaoInicial()
        localizarAluno()
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
    }
    
    // MARK: - Métodos
    
    func getTitulo() -> String {
        return "Localizar Alunos"
    }
    
<<<<<<< HEAD
    func verificaAutorizacaoDoUsuario() {
        if CLLocationManager.locationServicesEnabled() {
            switch CLLocationManager.authorizationStatus() {
            case .authorizedWhenInUse:
                let botao = Localizacao().configuraBotaoLocalizacaoAtual(mapa: mapa)
                mapa.addSubview(botao)
                gerenciadorDeLocalizacao.startUpdatingLocation()
                break
            case .notDetermined:
                gerenciadorDeLocalizacao.requestWhenInUseAuthorization()
                break
            
            case .denied:
                
                break
            default:
                break
            }
        }
    }
    
    func localizacaoInicial() {
        Localizacao().converteEnderecoEmCoordenadas(endereco: "Caelum - São Paulo") { (localizacaoEncontrada) in
            let pino = Localizacao().configuraPino(titulo: "Caelum", localizacao: localizacaoEncontrada, cor: .black, icone: UIImage(named: "icon_caelum"))
            let regiao = MKCoordinateRegionMakeWithDistance(pino.coordinate, 5000, 5000)
            self.mapa.setRegion(regiao, animated: true)
            self.mapa.addAnnotation(pino)
            self.localizarAluno()
=======
    func localizacaoInicial() {
        Localizacao().converteEnderecoEmCoordenadas(endereco: "Caelum - São Paulo") { (localizacaoEncontrada) in
            let pino = self.configuraPino(titulo: "Caelum", localizacao: localizacaoEncontrada)
            let regiao = MKCoordinateRegionMakeWithDistance(pino.coordinate, 5000, 5000)
            self.mapa.setRegion(regiao, animated: true)
            self.mapa.addAnnotation(pino)
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
        }
    }
    
    func localizarAluno() {
        if let aluno = aluno {
            Localizacao().converteEnderecoEmCoordenadas(endereco: aluno.endereco!, local: { (localizacaoEncontrada) in
<<<<<<< HEAD
                let pino = Localizacao().configuraPino(titulo: aluno.nome!, localizacao: localizacaoEncontrada, cor: nil, icone: nil)
                self.mapa.addAnnotation(pino)
                self.mapa.showAnnotations(self.mapa.annotations, animated: true)
=======
                let pino = self.configuraPino(titulo: aluno.nome!, localizacao: localizacaoEncontrada)
                self.mapa.addAnnotation(pino)
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
            })
        }
    }
    
<<<<<<< HEAD
    // MARK: - CLLocationManagerDelegate
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse:
            let botao = Localizacao().configuraBotaoLocalizacaoAtual(mapa: mapa)
            mapa.addSubview(botao)
            gerenciadorDeLocalizacao.startUpdatingLocation()
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
    }


}










=======
    func configuraPino(titulo:String, localizacao:CLPlacemark) -> MKPointAnnotation {
        let pino = MKPointAnnotation()
        pino.title = titulo
        pino.coordinate = localizacao.location!.coordinate
        
        return pino
    }
    
    


}
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
