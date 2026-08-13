import UIKit

class DolluSimpleCollectorPanelController: UIViewController {
    private let dollTitle: String
    private let dollCopy: String
    private let polishedBackgroundDollquvo = DolluHtrimmedGuideDollnexadropView()

    init(dollTitle: String, dollCopy: String) {
        self.dollTitle = dollTitle
        self.dollCopy = dollCopy
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollPlaceholderPanel()
    }

    private func buildDollPlaceholderPanel() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk
        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        let dollTitleLabel = UILabel()
        dollTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        dollTitleLabel.text = dollTitle
        dollTitleLabel.textColor = .white
        dollTitleLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 34, dollFontWeight: .heavy)
        dollTitleLabel.textAlignment = .center

        let dollCopyLabel = UILabel()
        dollCopyLabel.translatesAutoresizingMaskIntoConstraints = false
        dollCopyLabel.text = dollCopy
        dollCopyLabel.textColor = DolluWardrobePalette.dollMemoMuted
        dollCopyLabel.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 16, dollFontWeight: .semibold)
        dollCopyLabel.textAlignment = .center
        dollCopyLabel.numberOfLines = 0

        view.addSubview(dollTitleLabel)
        view.addSubview(dollCopyLabel)

        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            dollTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dollTitleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -56),
            dollTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            dollTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            dollCopyLabel.topAnchor.constraint(equalTo: dollTitleLabel.bottomAnchor, constant: 14),
            dollCopyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            dollCopyLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
}
