//
//  Footer.swift
//  CollectionViewAutoSizingTest
//
//  Created by Vladyslav Lypskyi on 10/10/2017.
//  Copyright © 2017 Wasin Wiwongsak. All rights reserved.
//

import UIKit

fileprivate struct Constants {
  static let cornerRadius = 6.0
  static let lastSectionHeight: CGFloat = 11
  static let otherSectionHeight: CGFloat = 30
}

class Footer: UICollectionReusableView {
  
  @IBOutlet weak var footer: UIView!
  
  override func layoutSubviews() {
    super.layoutSubviews()
//    let path = UIBezierPath(roundedRect: footer.bounds,
//                            byRoundingCorners: [.bottomLeft, .bottomRight],
//                            cornerRadii: CGSize(width: Constants.cornerRadius, height: Constants.cornerRadius))
//    let maskLayer = CAShapeLayer()
//    maskLayer.path = path.cgPath
//    footer.layer.mask = maskLayer
  }
  
  override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
    print("apply before: \(layoutAttributes.frame)")
    super.apply(layoutAttributes)
    print("apply after: \(layoutAttributes.frame)")
  }
  
  override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
    print("Footer - \(layoutAttributes.frame.debugDescription)")
    let attrs = super.preferredLayoutAttributesFitting(layoutAttributes)
    print("after: \(layoutAttributes.frame.debugDescription)")
    setNeedsLayout()
    return attrs
  }
  
}
