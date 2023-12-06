import UIKit

// STORY 4: Implement the HeaderView's UI. Make sure to have a method `updateView` that receives a Restaurant instance and configure the UI components accordingly.

class HeaderView: UIView {
    
    private var mainStackView: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 16
        return stack
     }()
    
    private var infoStackView: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        return stack
     }()
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "placeholder")
        return imageView
    }()

    lazy var restaurantNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Restaurant name"
        return label
    }()

    lazy var restaurantStatus: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "Status"
        return label
    }()
    
    lazy var restaurantOpenDays: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "Open Days"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
               
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HeaderView {
    
    func setupViews() {
        
        backgroundColor = .white
        
        
        addSubview(mainStackView)
        mainStackView.addArrangedSubview(logoImageView)
        mainStackView.addArrangedSubview(infoStackView)
        
        infoStackView.addArrangedSubview(restaurantNameLabel)
        infoStackView.addArrangedSubview(restaurantStatus)
        infoStackView.addArrangedSubview(restaurantOpenDays)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor),

            logoImageView.widthAnchor.constraint(equalToConstant: 50),
            logoImageView.heightAnchor.constraint(equalToConstant: 50),
            
            infoStackView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            infoStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)

        ])
    }
    
    func updateView(restaurant: Restaurant) {
        logoImageView.image = UIImage(named: restaurant.image)
        restaurantNameLabel.text = restaurant.name
        restaurantStatus.text = restaurant.status
        restaurantOpenDays.text = restaurant.openDays
    }
}
