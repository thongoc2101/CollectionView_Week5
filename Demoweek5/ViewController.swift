//
//  ViewController.swift
//  Demoweek5
//
//  Created by Cntt04 on 4/26/17.
//  Copyright © 2017 Cntt04. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    
    var images = ["hinh1", "hinh2", "hinh3", "hinh4", "hinh5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.MyCollectionView.delegate = self
        self.MyCollectionView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
            }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell", for: indexPath) as! MyCollectionViewCell
        
        // set images
        cell.MyImageView.image = UIImage(named: images[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected row is ", indexPath.row)
    }
}

