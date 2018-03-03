//
//  ListTableViewCell.swift
//  OneStopShopApp
//
//  Created by C4Q on 3/3/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import SnapKit

class ListTableViewCell: UITableViewCell {

    
    lazy var centerNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
   override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "ListCell")
        setupViews()
    
        }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func configureCell(jobCenter:JobCenter) {
        centerNameLabel.text = jobCenter.facilityName
        cityLabel.text = jobCenter.city
        }
    
    private func setupViews() {
        addSubview(centerNameLabel)
       
        centerNameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(snp.left).offset(8)
            make.centerY.equalTo(snp.centerY)
        }
        
        addSubview(cityLabel)
        cityLabel.snp.makeConstraints { (make) in
            make.right.equalTo(snp.right).offset(-8)
            make.centerY.equalTo(snp.centerY)
        }
        
    }
}

