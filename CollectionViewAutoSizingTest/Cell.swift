//
//  Cell.swift
//  CollectionViewAutoSizingTest
//
//  Created by Wasin Wiwongsak on 1/25/17.
//  Copyright © 2017 Wasin Wiwongsak. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
  @IBOutlet weak var headerLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel! {
    didSet {
//      descriptionLabel.preferredMaxLayoutWidth = UIScreen.main.bounds.size.width - 2 * 12
    }
  }
  @IBOutlet weak var widthConstraint: NSLayoutConstraint!
  
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
