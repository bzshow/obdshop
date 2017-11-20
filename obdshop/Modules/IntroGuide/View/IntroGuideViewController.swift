//
//  IntroGuideViewController.swift
//  obdshop
//
//  Created by baizheng on 13/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import Foundation
import UIKit
import CodableAlamofire
import Alamofire

class IntroGuideViewController: BaseViewController, StoryboardLoadable {

    // MARK: Properties
    private struct Repo: Decodable {
        let name: String
        let stars: Int
        let url: URL
        let randomDateCommit: Date
        
        private enum CodingKeys: String, CodingKey {
            case name
            case stars
            case url
            case randomDateCommit = "random_date_commit"
        }
    }
    var presenter: IntroGuidePresentation?
 
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var startButton: UIButton!
    
    fileprivate var scrollView: UIScrollView!
    
    fileprivate let numOfPages = 3
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
 
        let consumerKey = "ck_f999c0c842d27ae751c3b8cc1e39a27a2b55ea74"
        let consumerSecret = "cs_78f32f5245cdd88f3c7d884c86205a8b65fced0b"
        let siteURL = "https://woo.zhengblog.com/wp-json/wc/v2/products"
        let user = consumerKey
        let password = consumerSecret
        
        let url = URL(string: siteURL)!
        
        let credentialData = "\(user):\(password)".data(using: String.Encoding.utf8)!
        let base64Credentials = credentialData.base64EncodedString(options: [])
        let headers = ["Authorization": "Basic \(base64Credentials)"]
      /*
        Alamofire.request(url,
                          method: .get,
                          parameters: nil,
                          encoding: URLEncoding.default,
                          headers:headers)
            .validate()
            .responseData { response in
                if response.result.value != nil{
                    print(response.result.value)
                    let decoder = JSONDecoder()
                    let products = try! decoder.decode([Product].self, from:  response.result.value!   )
                    let test = "ttttt"
                    print(test)
                }else{
                    
                }
        }
       */

        
      
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970 // It is necessary for correct decoding. Timestamp -> Date.
        
        
        
        Alamofire.request(url,
                          method: .get,
                          parameters: nil,
                          encoding: URLEncoding.default,
                          headers:headers)
            .validate()
            .responseDecodableObject(keyPath: nil, decoder: decoder) { (response: DataResponse<[Product]>) in
                let product = response.result.value
                print(product)
        }
        
        
        /*
        
        let url = URL(string: "https://raw.githubusercontent.com/otbivnoe/CodableAlamofire/master/keypathArray.json")!
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970 // It is necessary for correct decoding. Timestamp -> Date.
        
        Alamofire.request(url).responseDecodableObject(keyPath: "result.libraries", decoder: decoder) { (response: DataResponse<[Repo]>) in
            let repo = response.result.value
            print(repo)
        }
        */
        
        let frame = self.view.bounds
        
        
        scrollView = UIScrollView(frame: frame)
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        scrollView.contentOffset = CGPoint.zero
        // 将 scrollView 的 contentSize 设为屏幕宽度的3倍(根据实际情况改变)
        scrollView.contentSize = CGSize(width: frame.size.width * CGFloat(numOfPages), height: frame.size.height)
        
        scrollView.delegate = self
        
        for index  in 0..<numOfPages {
            let imageView = UIImageView(image: UIImage(named: "GuideImage\(index + 1)"))
            imageView.frame = CGRect(x: frame.size.width * CGFloat(index), y: 0, width: frame.size.width, height: frame.size.height)
            scrollView.addSubview(imageView)
        }
        
        self.view.insertSubview(scrollView, at: 0)
        
        // 给开始按钮设置圆角
        startButton.layer.cornerRadius = 15.0
        // 隐藏开始按钮
        startButton.alpha = 0.0
    }
}

extension IntroGuideViewController: IntroGuideView {
    // TODO: implement view output methods
}

// MARK: - UIScrollViewDelegate
extension IntroGuideViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset
        // 随着滑动改变pageControl的状态
        pageControl.currentPage = Int(offset.x / view.bounds.width)
        
        // 因为currentPage是从0开始，所以numOfPages减1
        if pageControl.currentPage == numOfPages - 1 {
            UIView.animate(withDuration: 0.5, animations: {
                self.startButton.alpha = 1.0
            })
        } else {
            UIView.animate(withDuration: 0.2, animations: {
                self.startButton.alpha = 0.0
            })
        }
    }
}
