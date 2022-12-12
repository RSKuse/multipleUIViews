//
//  SpotifyMusicContainerView.swift
//  multipleUIViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/04.
//

import Foundation
import UIKit


class SpotifyMusicContainerView: UIView {
    
    
    lazy var spotifyMusicImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "emperor_Kwesta")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    lazy var spotifyPlaylistTitleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .white
        //label.backgroundColor = .black
        label.text = "New Jams"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.black)
        //label.frame = CGRect(x: 100, y: 400, width: 200, height: 50)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var spotifyDescriptionPlaylistLabel : UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        //label.backgroundColor
        label.text = "The newest r&b drops, every week. Cover: Kwesta"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.black)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var spotifyPlaylistTitle2Label : UILabel = {
        let label = UILabel()
        label.textColor = .white
        //label.backgroundColor = .black
        label.text = "New Jams"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.black)
        //label.frame = CGRect(x: 100, y: 400, width: 200, height: 50)
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
       
    lazy var spotifyMusicSoundIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "spotify_music_sound_icon")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .black
        layer.masksToBounds = true
      
        setupSpotifyMusicImageConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSpotifyMusicImageConstraints () {
        addSubview(spotifyMusicImageView)
        addSubview(spotifyPlaylistTitleLabel)
        addSubview(spotifyDescriptionPlaylistLabel)
        addSubview(spotifyPlaylistTitle2Label)
        addSubview(spotifyMusicSoundIcon)
            
            
       
        spotifyMusicImageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        spotifyMusicImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        spotifyMusicImageView.topAnchor.constraint(equalTo: topAnchor, constant: 25).isActive = true
        spotifyMusicImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
        spotifyPlaylistTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        spotifyPlaylistTitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80).isActive = true
        
        spotifyDescriptionPlaylistLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        spotifyDescriptionPlaylistLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -55).isActive = true
        
        spotifyPlaylistTitle2Label.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        spotifyPlaylistTitle2Label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -120).isActive = true
        
        
        spotifyMusicSoundIcon.leftAnchor.constraint(equalTo: spotifyMusicImageView.leftAnchor, constant: 8).isActive = true
        spotifyMusicSoundIcon.topAnchor.constraint(equalTo: spotifyMusicImageView.safeAreaLayoutGuide.topAnchor,
                                                           constant: 10).isActive = true
        spotifyMusicSoundIcon.heightAnchor.constraint(equalToConstant: 15).isActive = true
        spotifyMusicSoundIcon.widthAnchor.constraint(equalToConstant: 15).isActive = true
            
        }
        
    }
    
    
