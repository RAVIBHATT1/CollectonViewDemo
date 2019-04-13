//
//  ViewController.swift
//  CollectonViewDemo
//
//  Created by Akash Padhiyar on 10/04/19.
//  Copyright © 2019 Akash Padhiyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arraydata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MyCollectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! MyCollectionViewCell
        cell.MyLabel.text = arraydata[indexPath.row]
        return cell

    }
    

    @IBOutlet weak var MyCollectionView: UICollectionView!
    var arraydata = ["Ravi","Bansi","Kajal","Monika","Mital","Meera","puja","mitali","Rajvi"]
    override func viewDidLoad() {
        super.viewDidLoad()
        MyCollectionView.delegate = self
        MyCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

