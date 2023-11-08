//
//  MovieCell.swift
//  MovieApp
//
//  Created by Samet TIG on 7.11.2023.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    static let reuseID = "MovieCell"
        
        private var posterImageView: PosterImageView
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            posterImageView = PosterImageView(frame: .zero)
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            configureCell()
            configurePosterImageView()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            // Configure the view for the selected state
        }
        
        func setCell(movie: MovieResult) {
            posterImageView.fetchImage(movie: movie)
        }
        
        private func configureCell() {
            backgroundColor = .systemGray5
        }
        
        private func configurePosterImageView() {
            addSubview(posterImageView)
            posterImageView.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                posterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
                posterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
                posterImageView.widthAnchor.constraint(equalToConstant: 150),
                posterImageView.heightAnchor.constraint(equalToConstant: 250),
                
            ])
        }
    
}
