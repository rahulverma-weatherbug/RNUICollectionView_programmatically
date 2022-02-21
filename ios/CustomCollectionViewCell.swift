//
//  CustomCollectionViewCell.swift
//  RNListViewApp
//
//  Created by Rahul Verma on 21/02/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
  
  static let identifier = "CustomCollectionViewCell"
  
  private let myLabel: UILabel = {
    let label = UILabel()
    label.text = "Custom"
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.backgroundColor = .systemRed
    contentView.addSubview(myLabel)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  //for assigning the frame
  override func layoutSubviews() {
    super.layoutSubviews()
    
    myLabel.frame = CGRect(x: 5, y: contentView.frame.size.height - 50, width: contentView.frame.size.width-10, height: 50)
  }
  
  public func configure(label: String){
    myLabel.text = label
  }
  
  //reset each cell when its deque by the view
  override func prepareForReuse() {
    super.prepareForReuse()
    myLabel.text = nil
  }
  
}
