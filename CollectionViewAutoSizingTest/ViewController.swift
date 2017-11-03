//
//  ViewController.swift
//  CollectionViewAutoSizingTest
//
//  Created by Wasin Wiwongsak on 1/25/17.
//  Copyright © 2017 Wasin Wiwongsak. All rights reserved.
//

import UIKit

fileprivate struct Constants {
  
  struct Shadow {
    static let offset: CGSize = CGSize(width: 0.0, height: 4.0)
    static let radius: CGFloat = 2
    static let opacity: Float = 0.1
    static let color: CGColor = UIColor.black.cgColor
  }
}

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  @IBOutlet weak var collectionView: UICollectionView!
  
  let randomTexts = ["Aenean dapibus urna a ullamcorper malesuada. Ut tempor.",
                     "Sed venenatis ligula massa, a vulputate ipsum fringilla eget. Ut justo erat, facilisis id rhoncus cursus, fringilla at.",
                     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum lobortis nibh metus, elementum tempus libero ornare vitae. Etiam sed leo pretium, consectetur turpis non, dapibus purus. Suspendisse potenti. Ut ut eros nunc. Cras nulla justo, porttitor non sapien at, iaculis.",
                     "Maecenas pellentesque sed magna in congue. Sed non lacus in mi posuere scelerisque. Aenean.",
                     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eget ex a velit tincidunt sodales. Donec elementum nisi at enim tempus, et rutrum erat semper. Phasellus ultricies est nec finibus."]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    collectionView.register(UINib.init(nibName: "Cell", bundle: nil), forCellWithReuseIdentifier: "Cell")
    collectionView.register(UINib.init(nibName: "Cell2", bundle: nil), forCellWithReuseIdentifier: "Cell2")
    collectionView.register(UINib.init(nibName: "Cell3", bundle: nil), forCellWithReuseIdentifier: "Cell3")
    collectionView.register(UINib.init(nibName: "SingleTitleCell", bundle: nil), forCellWithReuseIdentifier: "SingleTitleCell")
    
//    let headerNib = UINib(nibName: "Header", bundle: nil)
//    let footerNib = UINib(nibName: "Footer", bundle: nil)
//    collectionView.register(headerNib, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "Header")
//    collectionView.register(footerNib, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "Footer")
    
    if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
      flowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
    }
    collectionView.dataSource = self
//    collectionView.delegate = self
    
//    collectionView.layer.shadowOffset = Constants.Shadow.offset
//    collectionView.layer.shadowColor = Constants.Shadow.color
//    collectionView.layer.shadowRadius = Constants.Shadow.radius
//    collectionView.layer.shadowOpacity = Constants.Shadow.opacity
  }
  
}

extension ViewController {
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 20 //randomTexts.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//    if indexPath.item % 2 == 0 {
//      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath) as! Cell2
//      cell.title.text = "YOUR REMAINING ALLOWANCE"
//      return cell
//    } else {
//      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
//      cell.descriptionLabel.text = "YOUR REMAINING ALLOWANCE" //randomTexts[indexPath.row]
//      return cell
//    }
    return collectionView.dequeueReusableCell(withReuseIdentifier: "Cell3", for: indexPath)
  }
  
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
//  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//    let identifier = kind == UICollectionElementKindSectionHeader ? "Header" : "Footer"
//    let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: identifier, for: indexPath)
//    return view
//  }
  
}

extension ViewController {
  
//  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
//    print("referenceSizeForFooterInSection")
//    return CGSize(width: 100, height: 50)
//  }
  
}

