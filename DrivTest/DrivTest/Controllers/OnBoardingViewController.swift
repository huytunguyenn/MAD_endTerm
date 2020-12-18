//
//  OnBoardingViewController.swift
//  DrivTest
//
//  Created by HUYTU on 12/15/20.
//  Copyright © 2020 18120200_18120250_18120254. All rights reserved.
//

import UIKit
import paper_onboarding



class OnBoardingViewController: UIViewController {
    
    
    // outlets
    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    
    

    // check first time onboarding
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    // data for onboarding
    fileprivate let items = [
        OnboardingItemInfo(informationImage: Asset.phongphu.image,
                           title: "Đa Dạng",
                           description: "Nội dung phong phú, đặc sắc với nhiều \nthể loại bài tập, đề thi và mẹo nhỏ.",
                           pageIcon: Asset.icon1.image,
                           color: UIColor(red: 0.65, green: 0.69, blue: 0.88, alpha: 1.00),
                           titleColor: UIColor.white,
                           descriptionColor: UIColor.white,
                           titleFont: titleFont,
                           descriptionFont: descriptionFont),
        
        OnboardingItemInfo(informationImage: Asset.dadang.image,
                           title: "Cá Nhân Hoá",
                           description: "Dễ dàng tuỳ chỉnh, lưu bộ sưu tập. \nThống kê tiến trình cho bản thân.",
                           pageIcon: Asset.icon1.image,
                           color: UIColor(red: 0.98, green: 0.97, blue: 0.94, alpha: 1.00),
                           titleColor: UIColor.white,
                           descriptionColor: UIColor.white,
                           titleFont: titleFont,
                           descriptionFont: descriptionFont),
        
        OnboardingItemInfo(informationImage: Asset.tienloi.image,
                           title: "Tiện Lợi",
                           description: "Giao diện dễ dùng. Không cần Internet. \nDùng được ngay cả khi ở trên Mặt Trăng.",
                           pageIcon: Asset.icon1.image,
                           color: UIColor(red: 0.85, green: 0.89, blue: 0.87, alpha: 1.00),
                           titleColor: UIColor.white,
                           descriptionColor: UIColor.white,
                           titleFont: titleFont,
                           descriptionFont: descriptionFont),
        
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hide default outlets
        signUpButton.isHidden = true
        skipButton.isHidden = true
        signInLabel.isHidden = true
        
        
        // setup 'Get Started' button
        getStartedButton.isHidden = true

        
        if(appDelegate.hasAlreadyLaunched){
            
            // setup 'Đăng nhập' title
            signInLabel.isHidden = false
            
            // setup 'Tạo Tài khoản' button
            signUpButton.isHidden = false
            signUpButton.layer.cornerRadius = 20
            signUpButton.clipsToBounds = true
            
            // setup 'Tiếp tục không cần Đăng nhập' button
            skipButton.isHidden = false
            skipButton.layer.cornerRadius = 20
            skipButton.clipsToBounds = true
            
        }

    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        if(!appDelegate.hasAlreadyLaunched){
            //set hasAlreadyLaunched to false
            appDelegate.sethasAlreadyLaunched()
            
            //display for first time
            setupPaperOnboardingView()
            view.bringSubviewToFront(getStartedButton)
        }
    }
    
    
    
    // setup onboarding screen
    private func setupPaperOnboardingView() {
        let onboarding = PaperOnboarding()
        onboarding.delegate = self
        onboarding.dataSource = self
        onboarding.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(onboarding)
        // Add constraints
        for attribute: NSLayoutConstraint.Attribute in [.left, .right, .top, .bottom] {
            let constraint = NSLayoutConstraint(item: onboarding, attribute: attribute, relatedBy: .equal, toItem: view, attribute: attribute, multiplier: 1, constant: 0)
            view.addConstraint(constraint)
        }
    }
    
    
    
    
}



// MARK: PaperOnboardingDelegate

extension OnBoardingViewController: PaperOnboardingDelegate {
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        getStartedButton.isHidden = index == 2 ? false : true
    }
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
        item.titleCenterConstraint?.constant = 100
        item.descriptionCenterConstraint?.constant = 30

        // configure item
        
        //item.titleLabel?.backgroundColor = .redColor()
        //item.descriptionLabel?.backgroundColor = 
        //item.imageView = ...
        
        if index == 0 {
            item.titleLabel?.textColor = UIColor(red: 0.26, green: 0.28, blue: 0.45, alpha: 1.00)
            item.descriptionLabel?.textColor = UIColor(red: 0.96, green: 0.93, blue: 1.00, alpha: 1.00)
        }
        else if index == 1 {
            //item.titleLabel?.textColor = UIColor(red: 0.19, green: 0.07, blue: 0.17, alpha: 1.00)
            item.titleLabel?.textColor = UIColor(red: 0.49, green: 0.02, blue: 0.20, alpha: 1.00)
            item.descriptionLabel?.textColor = UIColor(red: 0.33, green: 0.33, blue: 0.33, alpha: 1.00)
        }
        else if index == 2 {
            item.titleLabel?.textColor = UIColor(red: 0.12, green: 0.24, blue: 0.53, alpha: 1.00)
            item.descriptionLabel?.textColor = UIColor(red: 0.33, green: 0.33, blue: 0.33, alpha: 1.00)
        }
        
    }
}

// MARK: PaperOnboardingDataSource

extension OnBoardingViewController: PaperOnboardingDataSource {
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        return items[index]
    }
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    //    func onboardinPageItemRadius() -> CGFloat {
    //        return 2
    //    }
    //
    //    func onboardingPageItemSelectedRadius() -> CGFloat {
    //        return 10
    //    }
    //    func onboardingPageItemColor(at index: Int) -> UIColor {
    //        return [UIColor.white, UIColor.red, UIColor.green][index]
    //    }
}


//MARK: Constants
private extension OnBoardingViewController {
    
    //static let titleFont = UIFont(name: "Nunito-Bold", size: 36.0) ?? UIFont.boldSystemFont(ofSize: 36.0)
    //static let descriptionFont = UIFont(name: "OpenSans-Regular", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    
    static let titleFont =  UIFont.boldSystemFont(ofSize: 34.0)
    static let descriptionFont =  UIFont.systemFont(ofSize: 16.0)
    
}

