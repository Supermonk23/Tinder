//
//  DetalheFotoCell.swift
//  Tinder
//
//  Created by Gabriel Cavalheiro on 22/03/22.
//

import UIKit

class DetalheFotoCell: UICollectionViewCell {
    
    let descricaoLabel: UILabel = .textBoldLabel(16)
    
    let slideFotosVC = SlideFotosVC()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        descricaoLabel.text = "Fotos recentes Instagram"
        
        addSubview(descricaoLabel)
        descricaoLabel.preencher(top: topAnchor,
                                 leading: leadingAnchor,
                                 trailing: trailingAnchor,
                                 bottom: nil,
                                 paddind: .init(top: 0, left: 20, bottom: 0, right: 20))
        
        addSubview(slideFotosVC.view)
        slideFotosVC.view.preencher(top: descricaoLabel.bottomAnchor,
                                    leading: leadingAnchor,
                                    trailing: trailingAnchor,
                                    bottom: bottomAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
