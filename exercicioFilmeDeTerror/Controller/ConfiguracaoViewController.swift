//
//  ConfiguracaoViewController.swift
//  exercicioFilmeDeTerror
//
//  Created by Danielle Nozaki Ogawa on 2022/05/16.
//

import UIKit

class ConfiguracaoViewController: UIViewController {

    @IBOutlet weak var sentimentosPickerView: UIPickerView!
    @IBOutlet weak var dataPickerView: UIDatePicker!
    @IBOutlet weak var ultimoDiaQueAcessouAppLabel: UILabel!
    @IBOutlet weak var proximoDiaParaRelaxar: UILabel!
    
    @IBOutlet weak var sentimentoLabel: UILabel!
    let listaDeSentimentos: [String] = ["Feliz", "Triste", "Angustiado", "Medo", "Alegre"]
    override func viewDidLoad() {
        super.viewDidLoad()
        sentimentosPickerView.dataSource = self
        sentimentosPickerView.delegate = self
        
    }
    @IBAction func mudouData(_ sender: Any) {
        let dataEHora = dataPickerView.date
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC-3")
        
        let dateString = dateFormatter.string(from: dataEHora)
        proximoDiaParaRelaxar.text = "Próximo dia para relaxar: \(dateString)"
        
        let data = Date()
        ultimoDiaQueAcessouAppLabel.text = dateFormatter.string(from: data)
    }
}


extension ConfiguracaoViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listaDeSentimentos.count
    }
}

extension ConfiguracaoViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(listaDeSentimentos[row])
        sentimentoLabel.text = "Como está se sentindo hoje: \(listaDeSentimentos[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listaDeSentimentos[row]
    }
}


