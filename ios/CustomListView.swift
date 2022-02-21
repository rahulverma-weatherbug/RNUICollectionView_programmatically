//
//  CustomListView.swift
//  RNListViewApp
//
//  Created by Rahul Verma on 18/02/22.
//

import UIKit

class CustomListView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
  let names = ["a","b","c","d"]
  
  //@objc var names: [String] = data
  
  private var collectionView : UICollectionView?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    layout.itemSize = CGSize(width: view.frame.size.width/3, height: view.frame.size.width/3)
    collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    guard let collectionView = collectionView else {
      return
    }
    collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    collectionView.dataSource = self
    collectionView.delegate = self
    view.addSubview(collectionView)
    collectionView.frame = view.bounds
    
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return names.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
    cell.configure(label: names[indexPath.row])
    return cell
  }
  
  
}
