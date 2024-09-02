//
//  HomeViewController.swift
//  Netflix UIKit
//
//  Created by Rezaul Islam on 21/8/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let homeFeedTableView : UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTableView)
        
        homeFeedTableView.delegate = self
        homeFeedTableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTableView.frame = view.bounds
    }

}


extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello \(indexPath.item)"
        return cell
    }
    
    
}
