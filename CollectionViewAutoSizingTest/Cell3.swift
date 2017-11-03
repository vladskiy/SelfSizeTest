//
//  Cell3.swift
//  CollectionViewAutoSizingTest
//
//  Created by Vladyslav Lypskyi on 16/10/2017.
//  Copyright © 2017 Wasin Wiwongsak. All rights reserved.
//

import UIKit

class Cell3: UICollectionViewCell {
  
  @IBOutlet weak var widthConstraint: NSLayoutConstraint!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
    self.contentView.translatesAutoresizingMaskIntoConstraints = false
    let screenWidth = UIScreen.main.bounds.size.width
    widthConstraint.constant = screenWidth// - (2 * 12)
  }
  
  override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
    print("current: \(widthConstraint.constant)")
    widthConstraint.constant = layoutAttributes.bounds.width
    print("new: \(widthConstraint.constant)")
    return super.preferredLayoutAttributesFitting(layoutAttributes)
  }
  
  
}
