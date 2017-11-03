
//  Layout.swift
//  CollectionViewAutoSizingTest
//
//  Created by Vladyslav Lypskyi on 10/10/2017.
//  Copyright © 2017 Wasin Wiwongsak. All rights reserved.
//

import UIKit

class Layout: UICollectionViewFlowLayout {
  
  override func prepare() {
    super.prepare()
    guard let collectionView = collectionView else {
      return
    }
    
    let width: CGFloat = collectionView.bounds.width - (2 * 12)
//    headerReferenceSize = CGSize(width: width, height: 70)
//    footerReferenceSize = CGSize(width: width, height: 41)
    
//    minimumInteritemSpacing = 0
//    minimumLineSpacing = 0
//    sectionInset = UIEdgeInsets.zero
    
//    collectionView.contentInset = UIEdgeInsets(top: 10,
//                                               left: 12,
//                                               bottom: 10,
//                                               right: 12)
  }
  
  
  override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
    let allAttributes = super.layoutAttributesForElements(in: rect)
    return allAttributes?.flatMap { attributes in
      switch attributes.representedElementCategory {
      case .cell:
        return layoutAttributesForItem(at: attributes.indexPath)
//      case .supplementaryView:
//        return layoutAttributesForSupplementaryView(ofKind: attributes.representedElementKind!, at: attributes.indexPath)
      default:
        return attributes
      }
    }
  }

  override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
    let attributes = super.layoutAttributesForItem(at: indexPath)?.copy() as? UICollectionViewLayoutAttributes
    guard let collectionView = collectionView else { return attributes }
    attributes?.bounds.size.width = collectionView.bounds.width - collectionView.contentInset.right - collectionView.contentInset.left - sectionInset.left - sectionInset.right
    return attributes
  }
//
//  override func layoutAttributesForSupplementaryView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
//    let attributes = super.layoutAttributesForSupplementaryView(ofKind: elementKind, at: indexPath)?.copy() as? UICollectionViewLayoutAttributes
//    guard let collectionView = collectionView else { return attributes }
//    attributes?.bounds.size.width = collectionView.bounds.width - collectionView.contentInset.right - collectionView.contentInset.left - sectionInset.left - sectionInset.right
//    return attributes
//  }
  
}
