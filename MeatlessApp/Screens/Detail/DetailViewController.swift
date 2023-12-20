import UIKit

final class DetailViewController: UIViewController {
    
    private lazy var detailView: DetailView = {

        let view = DetailView()
        view.delegate = self
        view.updateView(restaurant: restaurant)
        return view
    }()
    
    private let restaurant: Restaurant
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
        super.init(nibName: nil, bundle: nil)
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = detailView
    }
}

extension DetailViewController: DetailViewDelegate {
    
    func didPressSendOrderButton() {
        let modalViewController = ConfirmationViewController()
        modalViewController.modalPresentationStyle = .pageSheet
        present(modalViewController, animated: true, completion: nil)

    }
}
