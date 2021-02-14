//
//  ActreesViewController.swift
//  WorkingOnFetchingImageFromURL
//
//  Created by Sidhartha Das on 14/02/21.
//

import UIKit

class ActreesViewController: UIViewController {
    var imageData:ActreesModel!
    @IBOutlet weak var actreesImageView:UIImageView!
    @IBOutlet weak var actreesImageTittle:UILabel!
    @IBOutlet weak var actreesIndicatorView:UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        actreesIndicatorView.hidesWhenStopped = true
        actreesIndicatorView.startAnimating()
        fetchImageFromURL()
    }
    
    //MARK: Function For Fetching Image From URL
    func fetchImageFromURL(){
        let url = URL(string: imageData!.actreesImageURL)!
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil,let response = response as? HTTPURLResponse,response.statusCode == 200{
                if let data = data,!data.isEmpty{
                    let image = UIImage(data: data)
                    sleep(2)
                    DispatchQueue.main.async {
                        self.actreesIndicatorView.stopAnimating()
                        self.actreesImageView.image = image
                        self.actreesImageTittle.text = self.imageData.actreesName
                    }
                }
            }else{
                print(error?.localizedDescription ?? "Oops Error Occured")
            }
        }.resume()
    }
}
