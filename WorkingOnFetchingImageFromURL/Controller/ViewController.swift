//
//  ViewController.swift
//  WorkingOnFetchingImageFromURL
//
//  Created by Sidhartha Das on 14/02/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var actreesData = ActreesModel.getImageInfo()
    @IBOutlet weak var actreesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.actreesTableView.register(UINib(nibName: "ActreesTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.actreesTableView.delegate = self
        self.actreesTableView.dataSource = self
    }
    //MARK: TableView Delegaate And TableView Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actreesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ActreesTableViewCell{
            cell.actreesName.text = actreesData[indexPath.row].actreesName
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let imageData = actreesData[indexPath.row]
//        let vc = storyboard?.instantiateViewController(identifier: "ActreesViewController") as? ActreesViewController
//        guard let tittle = vc?.actreesImageTittle else{
//            return
//        }
//        tittle.text = actreesData[indexPath.row].actreesName
//        self.navigationController?.pushViewController(vc!, animated: true)
        self.performSegue(withIdentifier: "show", sender: imageData)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ActreesViewController
        vc?.imageData = sender as? ActreesModel
    }
    
}

//        let vc = storyboard?.instantiateViewController(identifier: "DogViewController") as? DogViewController
//        guard let pic = UIImage(named: item[indexPath.row].imageName) else {
//            return
//        }
//        vc?.photo = pic
//        vc?.tit = item[indexPath.row].imageName
//        vc?.prop = item[indexPath.row].properties
//        self.navigationController?.pushViewController(vc!, animated: true)
