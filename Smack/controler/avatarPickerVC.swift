//
//  avatarPickerVC.swift
//  Smack
//
//  Created by Kirolos on 12/26/18.
//  Copyright © 2018 Kirolos. All rights reserved.
//

import UIKit

class avatarPickerVC: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{

    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var segmentView: UISegmentedControl!
    
    var avatarType = AvatarType.dark
    
    override func viewDidLoad() {
        super.viewDidLoad()
       collectionView.delegate = self
       collectionView.dataSource = self
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? avatarCellCollectionViewCell {
            cell.configureCell(index: indexPath.item, type: avatarType)
            return cell
        }
        
        return avatarCellCollectionViewCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
 
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func segmentControlChange(_ sender: Any) {
        if segmentView.selectedSegmentIndex == 0 {
            avatarType = AvatarType.dark
        } else {
            avatarType = AvatarType.light
        }
        collectionView.reloadData()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var numberOfColoumn : CGFloat = 3
        if UIScreen.main.bounds.width > 320 {
            numberOfColoumn = 4
        }
        let spaceBtweenCells : CGFloat = 10
        let padding : CGFloat = 40
        let cellDismintion = ((collectionView.bounds.width - padding) - (numberOfColoumn - 1) * spaceBtweenCells ) / numberOfColoumn 
        
        return CGSize(width: cellDismintion, height: cellDismintion)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatarType == .dark {
            userDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        } else {
            userDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
