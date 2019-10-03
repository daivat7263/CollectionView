//
//  DetailsViewController.swift
//  collecttion_view1
//
//  Created by COE-02 on 03/10/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var ImgView: UIImageView!
    
    @IBOutlet weak var lbltitle: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    @IBOutlet weak var lblOfferPrice: UILabel!
    
    
        var productDetails = File()
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            ImgView.image = productDetails.imgProduct
            lblPrice.text = "\(productDetails.OriginalPrice!)"
            lblOfferPrice.text = "\(productDetails.OfferPrice!)"
            lbltitle.text = productDetails.Title!
            // Do any additional setup after loading the view.
        }

        // Do any additional setup after loading the view.
 

  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
