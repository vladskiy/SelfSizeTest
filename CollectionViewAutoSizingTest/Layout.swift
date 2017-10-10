//
//  Layout.swift
//  CollectionViewAutoSizingTest
//
//  Created by Vladyslav Lypskyi on 10/10/2017.
//  Copyright © 2017 Wasin Wiwongsak. All rights reserved.
//

import UIKit

class Layout: UICollectionViewFlowLayout {
  
  override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
    return true
  }
  
  override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
    let allAttributes = super.layoutAttributesForElements(in: rect)
    return allAttributes?.flatMap { attributes in
      switch attributes.representedElementCategory {
      case .cell:
        return layoutAttributesForItem(at: attributes.indexPath)
      case .supplementaryView:
        return layoutAttributesForSupplementaryView(ofKind: attributes.representedElementKind!, at: attributes.indexPath)
      default:
        return attributes
      }
    }
  }
  
  override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
    let attributes = super.layoutAttributesForItem(at: indexPath)?.copy() as? UICollectionViewLayoutAttributes
    guard let collectionView = collectionView else { return attributes }
    attributes?.bounds.size.width = collectionView.bounds.width - collectionView.contentInset.right - collectionView.contentInset.left - sectionInset.left - sectionInset.right
    //    print(String(describing: attributes))
    //sectionInset.left - sectionInset.right
    return attributes
  }
  
  override func layoutAttributesForSupplementaryView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
    let attributes = super.layoutAttributesForSupplementaryView(ofKind: elementKind, at: indexPath)?.copy() as? UICollectionViewLayoutAttributes
    guard let collectionView = collectionView else { return attributes }
    attributes?.bounds.size.width = collectionView.bounds.width - collectionView.contentInset.right - collectionView.contentInset.left - sectionInset.left - sectionInset.right
    return attributes
  }
  
}
