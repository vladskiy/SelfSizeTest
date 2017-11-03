// Copyright (c) 2016 Lebara. All rights reserved.
// Author:  Andrew Kharchyshyn <akharchyshyn@gmail.com>

import UIKit

class SingleTitleCell: UICollectionViewCell {
  
  @IBOutlet weak var titleLabel: UILabel!
  
  override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
    layoutAttributes.bounds.size.height = systemLayoutSizeFitting(UILayoutFittingCompressedSize).height
    return layoutAttributes
  }
}

extension SingleTitleCell {
  
  func setupWithViewModel(viewModel: String?) {
    titleLabel.text = viewModel
//    guard let viewModel = viewModel as? TitleCellViewModel else { return }
//    setupWith(dataSource: viewModel)
  }
}
