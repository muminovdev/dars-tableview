//
//  CellTableViewCell.swift
//  dars tableview
//
//  Created by Mac on 17/12/22.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    let image = UIImageView()
    let nameLabel = UILabel()
    let infoLabel = UILabel()
    let mainImage = UIImage()
    let comment = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        image.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(image)
        image.image = UIImage(named: "box")
        image.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        image.widthAnchor.constraint(equalToConstant: 50).isActive = true
        image.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(nameLabel)
        nameLabel.text = "Khurshidbek"
        nameLabel.font = .systemFont(ofSize: 25)
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10).isActive = true
        
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(infoLabel)
        infoLabel.text = "i'm programmer"
        infoLabel.font = .systemFont(ofSize:20)
        infoLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 20).isActive = true
        infoLabel.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 10).isActive  = true
        
        comment.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(comment)
        comment.text = "hiihihihihijhijh hiiuiugiugg igigiyuguy"
        comment.font = .systemFont(ofSize: 15)
        comment.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20).isActive = true
        comment.rightAnchor.constraint(equalTo: image.rightAnchor, constant: -10).isActive = true
        comment.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        mainImage.image = UIImage(named: "box")
        contentView.addSubview(mainImage)
        mainImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        mainImage.topAnchor.constraint(equalTo: comment.bottomAnchor, constant: 20).isActive = true
        mainImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        mainImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        mainImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        
    }
    required init?(coder:NSCoder) {
        fatalError("init(coder:) has hot been implemented")
    }
}
