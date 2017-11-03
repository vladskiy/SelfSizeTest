//
//  Cell2.swift
//  CollectionViewAutoSizingTest
//
//  Created by Vladyslav Lypskyi on 11/10/2017.
//  Copyright © 2017 Wasin Wiwongsak. All rights reserved.
//

import UIKit

class Cell2: UICollectionViewCell {
  
  @IBOutlet weak var widthConstraint: NSLayoutConstraint!
  @IBOutlet weak var title: UILabel! {
    didSet {
//      title.preferredMaxLayoutWidth = UIScreen.main.bounds.size.width - 2 * 12
    }
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
    self.contentView.translatesAutoresizingMaskIntoConstraints = false
    let screenWidth = UIScreen.main.bounds.size.width
    widthConstraint.constant = screenWidth - (2 * 12)
  }
  
//  override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
//    layoutAttributes.bounds.size.height = systemLayoutSizeFitting(UILayoutFittingCompressedSize).height
//    return layoutAttributes
//  }
}
