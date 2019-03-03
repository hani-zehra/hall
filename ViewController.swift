//
//  ViewController.swift
//  CollectionViewTute

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var HallName: [String] = ["Star Hall", "Deluxe Hall", "Desire Hall", "Divine Hall", "Dream Hall"]
    var HallImages: [String] = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HallName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: colvwCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! colvwCell
        cell.lblCell.text = HallName[indexPath.row]
        cell.imgCell.image = UIImage(named: HallImages[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Cell \(indexPath.row) selected")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

