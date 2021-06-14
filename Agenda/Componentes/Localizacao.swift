//
//  Localizacao.swift
//  Agenda
//
//  Created by Alura on 11/12/17.
//  Copyright © 2017 Alura. All rights reserved.
//

import UIKit
<<<<<<< HEAD
import MapKit

class Localizacao: NSObject, MKMapViewDelegate {
=======
import CoreLocation

class Localizacao: NSObject {
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406
    
    func converteEnderecoEmCoordenadas(endereco:String, local:@escaping(_ local:CLPlacemark) -> Void) {
        let conversor = CLGeocoder()
        conversor.geocodeAddressString(endereco) { (listaDeLocalizacoes, error) in
            if let localizacao = listaDeLocalizacoes?.first {
                local(localizacao)
            }
        }
    }
<<<<<<< HEAD
    
    func configuraPino(titulo:String, localizacao:CLPlacemark, cor:UIColor?, icone:UIImage?) -> Pino {
        let pino = Pino(coordenada: localizacao.location!.coordinate)
        pino.title = titulo
        pino.color = cor
        pino.icon = icone
        
        return pino
    }
    
    func configuraBotaoLocalizacaoAtual(mapa:MKMapView) -> MKUserTrackingButton {
        let botao = MKUserTrackingButton(mapView: mapa)
        botao.frame.origin.x = 10
        botao.frame.origin.y = 10
        
        return botao
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is Pino {
            let annotationView = annotation as! Pino
            var pinoView = mapView.dequeueReusableAnnotationView(withIdentifier: annotationView.title!) as? MKMarkerAnnotationView
            pinoView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: annotationView.title!)
            
            pinoView?.annotation = annotationView
            pinoView?.glyphImage = annotationView.icon
            pinoView?.markerTintColor = annotationView.color
            
            return pinoView
        }
        return nil
    }
=======
>>>>>>> 7916cb3353c90ee871ccfc2977e3943225b83406

}
