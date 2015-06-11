//
//  ViewController.swift
//  CollectionViewTest
//
//  Created by Douglas Voss on 6/10/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
//class ViewController: UIViewController {
    
    var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView!.dataSource = self
        collectionView!.delegate = self
        //collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView!.registerClass(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView!.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(collectionView!)
        self.collectionViewConstraints()
    }

    func collectionViewConstraints() {
        collectionView!.setTranslatesAutoresizingMaskIntoConstraints(false)
        let topConstraint =
        NSLayoutConstraint(
            item: self.collectionView!,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Top,
            multiplier: 1.0,
            constant: 0.0);
        self.view.addConstraint(topConstraint);
        
        let bottomConstraint =
        NSLayoutConstraint(
            item: self.collectionView!,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0.0);
        self.view.addConstraint(bottomConstraint);
        
        let leftConstraint =
        NSLayoutConstraint(
            item: self.collectionView!,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Left,
            multiplier: 1.0,
            constant: 0.0);
        self.view.addConstraint(leftConstraint);
        
        let rightConstraint =
        NSLayoutConstraint(
            item: self.collectionView!,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Right,
            multiplier: 1.0,
            constant: 0.0);
        self.view.addConstraint(rightConstraint);
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 14
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        //let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! UICollectionViewCell
        /*let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CustomCollectionViewCell
        cell.backgroundColor = UIColor.orangeColor()
        return cell*/
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CustomCollectionViewCell
        cell.textLabel.text = "Text"
        cell.imageView.image = UIImage(named: "star")
        return cell
    }
}

