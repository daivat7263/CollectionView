//
//  File.swift
//  collecttion_view1
//
//  Created by COE-02 on 03/10/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import Foundation
import UIKit

class File : NSObject
{
    var imgProduct : UIImage!
    var OriginalPrice :Double!
    var OfferPrice : Double!
    var Title : String!
    
    override init() {
        super.init()
    }
    
    init(img:UIImage,OPrice:Double,Ofprice:Double,name:String)
    {
    self.OfferPrice = Ofprice
        self.Title = name
        self.OriginalPrice = OPrice
        self.imgProduct = img
}
}
