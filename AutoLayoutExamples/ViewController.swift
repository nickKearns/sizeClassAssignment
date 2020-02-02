var exampleView: UIView!//
//  ViewController.swift
//  AutoLayoutExamples
//
//  Created by Nicholas Kearns on 1/21/20.
//  Copyright © 2020 Nicholas Kearns. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{


    
    var exampleView: UIView!
    var blueView: UIView!
    var redView: UIView!
    
    
    
    override func loadView() {
        super.loadView()
    
        exampleView = UIView(frame: .zero)
        exampleView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(exampleView)
        NSLayoutConstraint.activate([
            exampleView.widthAnchor.constraint(equalToConstant: 80),
            exampleView.heightAnchor.constraint(equalTo: exampleView.widthAnchor, multiplier: 1/1),
            exampleView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            exampleView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
        
        blueView = UIView(frame: .zero)
        blueView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(blueView)
        NSLayoutConstraint.activate([
            blueView.widthAnchor.constraint(equalToConstant: 80),
            blueView.heightAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 1/1),
            blueView.leftAnchor.constraint(equalTo: exampleView.centerXAnchor, constant: 80),
            blueView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        redView = UIView(frame: .zero)
        redView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(redView)
        NSLayoutConstraint.activate([
            redView.widthAnchor.constraint(equalTo: exampleView.widthAnchor, multiplier: 2),
            redView.heightAnchor.constraint(equalTo: redView.widthAnchor, multiplier: 1/1),
            redView.topAnchor.constraint(equalTo: exampleView.centerYAnchor, constant: 80),
            redView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)

        ])
        
        

        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.exampleView.backgroundColor = .purple
        self.blueView.backgroundColor = .blue
        self.redView.backgroundColor = .red
        
        


        }
        
        
        
    
 
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("i am scrolling")
        
        if scrollView.contentOffset.y > UIScreen.main.bounds.size.height {
            print("end of scroll view")
        }
    }
    

}

