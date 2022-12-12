//
//  ViewController.swift
//  multipleUIViews
//
//  Created by Reuben Simphiwe Kuse on 2022/12/01.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var newJamsContainerView: SpotifyMusicContainerView = {
        let view = SpotifyMusicContainerView()
        view.spotifyMusicImageView.image = UIImage(named: "emperor_Kwesta")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var mellowBarsContainerView: SpotifyMusicContainerView = {
        let view = SpotifyMusicContainerView()
        view.spotifyMusicImageView.image = UIImage(named: "lord_KO")
        //view.spotifyMusicImageView.backgroundColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(newJamsContainerView)
        view.addSubview(mellowBarsContainerView)
        
        newJamsContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        newJamsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newJamsContainerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        newJamsContainerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //mellowBarsContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        //mellowBarsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //mellowBarsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        //mellowBarsContainerView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //mellowBarsContainerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        mellowBarsContainerView.leftAnchor.constraint(equalTo: newJamsContainerView.leftAnchor).isActive = true
        mellowBarsContainerView.rightAnchor.constraint(equalTo: newJamsContainerView.rightAnchor).isActive = true
        mellowBarsContainerView.topAnchor.constraint(equalTo: newJamsContainerView.bottomAnchor, constant: 20).isActive = true
        mellowBarsContainerView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
    }


}

