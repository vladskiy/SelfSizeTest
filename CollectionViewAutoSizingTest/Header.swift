//
//  Header.swift
//  CollectionViewAutoSizingTest
//
//  Created by Vladyslav Lypskyi on 10/10/2017.
//  Copyright © 2017 Wasin Wiwongsak. All rights reserved.
//

import UIKit

private struct Constants {
  static let cornerRadius = 6.0
}

class Header: UICollectionReusableView {
  
  override func layoutSubviews() {
    super.layoutSubviews()
    let path = UIBezierPath(roundedRect: self.bounds,
                            byRoundingCorners: [.topLeft, .topRight],
                            cornerRadii: CGSize(width: Constants.cornerRadius, height: Constants.cornerRadius))
    let maskLayer = CAShapeLayer()
    maskLayer.path = path.cgPath
    layer.mask = maskLayer
  }
  
}
