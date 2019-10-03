//
//  ViewController.swift
//  collecttion_view1
//
//  Created by COE-02 on 27/09/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource
{
    var arr:[File]! = nil
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Mycell", for: indexPath) as! ProductCollectionViewCell
        
        cell.ImgView.image = arr[indexPath.item].imgProduct
        cell.lbl.text = arr[indexPath.item].Title
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let product = arr[indexPath.item]
        let DetailsViewScene = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewScene") as! DetailsViewController
        DetailsViewScene.productDetails = product
        
        self.navigationController?.pushViewController(DetailsViewScene, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arr = [File]()
        
        arr.append(File(img: #imageLiteral(resourceName: "q1"), OPrice: 3500.00, Ofprice: 3100.00, name: "iWatch"))
        arr.append(File(img: #imageLiteral(resourceName: "q2"), OPrice: 4000.00, Ofprice: 3800.00, name: "Logitech"))
        arr.append(File(img: #imageLiteral(resourceName: "q3"), OPrice: 5000.00, Ofprice: 4500.00, name: "Amazon Echo"))
        arr.append(File(img: #imageLiteral(resourceName: "q4"), OPrice: 4000.00, Ofprice: 3500.00, name: "Alexa"))
        arr.append(File(img: #imageLiteral(resourceName: "q6"), OPrice: 8000.00, Ofprice: 7700.00, name: "Philips Web Camera"))

        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}
