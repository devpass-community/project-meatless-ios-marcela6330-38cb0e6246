import UIKit

// STORY 6: Implement ConfirmationView's UI according to the specs on Figma.

class ConfirmationView: UIView {
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "order-confirmation")
        return imageView
    }()
    
    lazy var orderLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(named: "primary")
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.text = "Order Successfully sent"
        return label
    }()
    
    lazy var orderDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor(red: 0.345, green: 0.345, blue: 0.345, alpha: 1)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "An email has been sent to you with the details of your order. Please wait for the delivery confirmation from restaurant"
        return label
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Back to Home Screen", for: .normal)
        button.backgroundColor = UIColor(named: "primary")
        button.tintColor = .white
        button.layer.cornerRadius = 24
        return button
    }()
    
    
    

    init() {
        super.init(frame: .zero)
        
        setupViews()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .white
        
        addSubview(logoImageView)
        addSubview(orderLabel)
        addSubview(orderDescriptionLabel)
        addSubview(backButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            orderLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            orderLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            orderDescriptionLabel.topAnchor.constraint(equalTo: orderLabel.bottomAnchor, constant: 12),
            orderDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            orderDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            
            backButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            backButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -21),
            backButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}
