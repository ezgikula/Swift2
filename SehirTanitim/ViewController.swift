//
//  ViewController.swift
//  SehirTanitim
//
//  Created by Ezgi  on 13.02.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi :Sehir?

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
    
       let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named:"istanbul")!)
       let izmir = Sehir(isim: "İzmir", bolge: "Ege", gorsel: UIImage(named:"izmir")!)
       let mardin = Sehir(isim: "Mardin", bolge: "Güneydoğu Anadolu", gorsel: UIImage(named:"mardin")!)
       let antalya = Sehir(isim: "Antalya", bolge: "Akdeniz", gorsel: UIImage(named:"antalya")!)
       let ankara = Sehir(isim: "Ankara", bolge: "İç Anadolu", gorsel: UIImage(named:"ankara")!)
        let nevsehir = Sehir(isim: "Nevşehir", bolge: "İç Anadolu", gorsel: UIImage(named:"nevsehir")!)
      sehirDizisi = [istanbul,izmir,mardin,antalya,ankara,nevsehir]

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }
}

