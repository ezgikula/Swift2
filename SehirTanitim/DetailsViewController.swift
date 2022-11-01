//
//  DetailsViewController.swift
//  SehirTanitim
//
//  Created by Ezgi  on 13.02.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var bolgeIsmiLabel: UILabel!
    
    var secilenSehir: Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sehirIsmiLabel.text = secilenSehir?.isim
        bolgeIsmiLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
        
    }
    

}
