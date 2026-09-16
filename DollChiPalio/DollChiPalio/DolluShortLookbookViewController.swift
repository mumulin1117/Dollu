import UIKit

final class DolluShortLookbookViewController: UIViewController {
    private let polishedBackgroundDollquvo = UIImageView(image: UIImage(named: "DolluPolishedBackgroundDollquvo"))
    private let sageLookbookDollmexa = UILabel()
    private let satinMarkerDollpavo = UIButton(type: .custom)
    private let pearlGuideDollukp = DollukeepsakeHemlineDollmivository()
    private let calmNoteDollsovo = DollucalmNoteDollsovoView()
    private let ribbonHemlineDollukp = UIRefreshControl()
    private let floralHintDollvelo = UILabel()
    private let ribbonCategoryDollpiri = UIScrollView()
    private let laceArchiveDollmexa = UIView()
    private let satinPinboardDollvani = UIButton()
    private var ribbonDisplayDollrevo: UICollectionView!
    private var dreamySnapshotDollniva: [DollutrimmedClosetDollrevo] = []
    private var ivoryProgressDollrilo = false

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        satinPinboardDollvani.setBackgroundImage(UIImage.init(named: "satinPinboardDollvani"), for: .normal)
        buildDollStyleClipStage()
        applyDollStyleClipLoading()
        loadDollStyleClipGallery()
    }

    private func buildDollStyleClipStage() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk

        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        polishedBackgroundDollquvo.contentMode = .scaleAspectFill
        polishedBackgroundDollquvo.clipsToBounds = true
        view.addSubview(polishedBackgroundDollquvo)

        ribbonCategoryDollpiri.translatesAutoresizingMaskIntoConstraints = false
        ribbonCategoryDollpiri.alwaysBounceVertical = true
        ribbonCategoryDollpiri.showsVerticalScrollIndicator = false
        ribbonCategoryDollpiri.contentInsetAdjustmentBehavior = .never
        ribbonHemlineDollukp.tintColor = UIColor(red: 1, green: 0.18, blue: 0.86, alpha: 1)
        ribbonHemlineDollukp.addTarget(self, action: #selector(loadDollStyleClipGallery), for: .valueChanged)
        ribbonCategoryDollpiri.refreshControl = ribbonHemlineDollukp
        view.addSubview(ribbonCategoryDollpiri)

        laceArchiveDollmexa.translatesAutoresizingMaskIntoConstraints = false
        ribbonCategoryDollpiri.addSubview(laceArchiveDollmexa)

        sageLookbookDollmexa.translatesAutoresizingMaskIntoConstraints = false
        sageLookbookDollmexa.text = **"STxyYLxyECxyLIxyPSxy"
        sageLookbookDollmexa.textColor = .white
        sageLookbookDollmexa.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 32, dollFontWeight: .heavy)
        sageLookbookDollmexa.adjustsFontSizeToFitWidth = true
        sageLookbookDollmexa.minimumScaleFactor = 0.68
        laceArchiveDollmexa.addSubview(sageLookbookDollmexa)

        satinMarkerDollpavo.translatesAutoresizingMaskIntoConstraints = false
        satinMarkerDollpavo.setImage(UIImage(named: "DolluSatinMarkerDollpavo")?.withRenderingMode(.alwaysOriginal), for: .normal)
        satinMarkerDollpavo.accessibilityLabel = **"Coxyllxyecxytoxyr xynoxytixycexy"
        satinMarkerDollpavo.addTarget(self, action: #selector(openDollCollectorNotice), for: .touchUpInside)
        satinMarkerDollpavo.addTarget(self, action: #selector(pressDollNoticeButton), for: .touchDown)
        satinMarkerDollpavo.addTarget(self, action: #selector(releaseDollNoticeButton), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        laceArchiveDollmexa.addSubview(satinMarkerDollpavo)

        let wovenDisplayDollnoroLayout = UICollectionViewFlowLayout()
        wovenDisplayDollnoroLayout.scrollDirection = .horizontal
        wovenDisplayDollnoroLayout.minimumLineSpacing = 32
        wovenDisplayDollnoroLayout.sectionInset = UIEdgeInsets(top: 0, left: 32, bottom: 0, right: 32)
        ribbonDisplayDollrevo = UICollectionView(frame: .zero, collectionViewLayout: wovenDisplayDollnoroLayout)
        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.backgroundColor = .clear
        ribbonDisplayDollrevo.showsHorizontalScrollIndicator = false
        ribbonDisplayDollrevo.dataSource = self
        ribbonDisplayDollrevo.delegate = self
        ribbonDisplayDollrevo.register(DolluStyleClipCardCell.self, forCellWithReuseIdentifier: DolluStyleClipCardCell.dollReuseIdentifier)
        laceArchiveDollmexa.addSubview(ribbonDisplayDollrevo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.addTarget(self, action: #selector(openDollAICollectorRoute), for: .touchUpInside)
        laceArchiveDollmexa.addSubview(satinPinboardDollvani)

        calmNoteDollsovo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calmNoteDollsovo)

        floralHintDollvelo.translatesAutoresizingMaskIntoConstraints = false
        floralHintDollvelo.textColor = UIColor(white: 1, alpha: 0.72)
        floralHintDollvelo.font = DolluWardrobePalette.dollRoundedFont(dollFontSize: 15, dollFontWeight: .semibold)
        floralHintDollvelo.textAlignment = .center
        floralHintDollvelo.numberOfLines = 0
        floralHintDollvelo.isHidden = true
        view.addSubview(floralHintDollvelo)

        NSLayoutConstraint.activate([
            polishedBackgroundDollquvo.topAnchor.constraint(equalTo: view.topAnchor),
            polishedBackgroundDollquvo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            polishedBackgroundDollquvo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            polishedBackgroundDollquvo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            ribbonCategoryDollpiri.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            ribbonCategoryDollpiri.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonCategoryDollpiri.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonCategoryDollpiri.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            laceArchiveDollmexa.topAnchor.constraint(equalTo: ribbonCategoryDollpiri.contentLayoutGuide.topAnchor),
            laceArchiveDollmexa.leadingAnchor.constraint(equalTo: ribbonCategoryDollpiri.contentLayoutGuide.leadingAnchor),
            laceArchiveDollmexa.trailingAnchor.constraint(equalTo: ribbonCategoryDollpiri.contentLayoutGuide.trailingAnchor),
            laceArchiveDollmexa.bottomAnchor.constraint(equalTo: ribbonCategoryDollpiri.contentLayoutGuide.bottomAnchor),
            laceArchiveDollmexa.widthAnchor.constraint(equalTo: ribbonCategoryDollpiri.frameLayoutGuide.widthAnchor),

            sageLookbookDollmexa.topAnchor.constraint(equalTo: laceArchiveDollmexa.topAnchor, constant: 12),
            sageLookbookDollmexa.leadingAnchor.constraint(equalTo: laceArchiveDollmexa.leadingAnchor, constant: 20),
            sageLookbookDollmexa.trailingAnchor.constraint(lessThanOrEqualTo: satinMarkerDollpavo.leadingAnchor, constant: -18),
            sageLookbookDollmexa.heightAnchor.constraint(equalToConstant: 38),

            satinMarkerDollpavo.centerYAnchor.constraint(equalTo: sageLookbookDollmexa.centerYAnchor),
            satinMarkerDollpavo.trailingAnchor.constraint(equalTo: laceArchiveDollmexa.trailingAnchor, constant: -22),
            satinMarkerDollpavo.widthAnchor.constraint(equalToConstant: 24),
            satinMarkerDollpavo.heightAnchor.constraint(equalToConstant: 24),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: sageLookbookDollmexa.bottomAnchor, constant: 30),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: laceArchiveDollmexa.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: laceArchiveDollmexa.trailingAnchor),
            ribbonDisplayDollrevo.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 400.0 / 812.0),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.bottomAnchor, constant: -56),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: laceArchiveDollmexa.leadingAnchor),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: laceArchiveDollmexa.trailingAnchor),
            satinPinboardDollvani.heightAnchor.constraint(equalTo: satinPinboardDollvani.widthAnchor, multiplier: 987.0 / 1125.0),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: laceArchiveDollmexa.bottomAnchor, constant: -156),

            calmNoteDollsovo.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.topAnchor),
            calmNoteDollsovo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calmNoteDollsovo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calmNoteDollsovo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            floralHintDollvelo.centerXAnchor.constraint(equalTo: ribbonDisplayDollrevo.centerXAnchor),
            floralHintDollvelo.centerYAnchor.constraint(equalTo: ribbonDisplayDollrevo.centerYAnchor),
            floralHintDollvelo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            floralHintDollvelo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)
        ])
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if let wovenDisplayDollnoroLayout = ribbonDisplayDollrevo.collectionViewLayout as? UICollectionViewFlowLayout {
            let dollWidth = view.bounds.width
            let dollCardWidth = min(560, max(236, dollWidth * (277.0 / 375.0)))
            wovenDisplayDollnoroLayout.itemSize = CGSize(width: dollCardWidth, height: ribbonDisplayDollrevo.bounds.height - 4)
        }
    }

    private func applyDollStyleClipLoading() {
        floralHintDollvelo.isHidden = true
        calmNoteDollsovo.applyDollLoading()
    }

    @objc private func loadDollStyleClipGallery() {
        guard !ivoryProgressDollrilo else {
            ribbonHemlineDollukp.endRefreshing()
            return
        }
        ivoryProgressDollrilo = true
        pearlGuideDollukp.fetchDolluStyleClipItems { [weak self] dollResult in
            self?.ivoryProgressDollrilo = false
            self?.applyDollStyleClipResult(dollResult)
        }
    }

    private func applyDollStyleClipResult(_ dollResult: Result<[DollutrimmedClosetDollrevo], Error>) {
        calmNoteDollsovo.stopDollLoading()
        ribbonHemlineDollukp.endRefreshing()
        if case .success(let pocketCollectionDollruni) = dollResult {
            dreamySnapshotDollniva = pocketCollectionDollruni
        }
        floralHintDollvelo.text = **"Stxyylxye xyclxyipxys xyarxye xywaxyitxyinxyg xyfoxyr xyyoxyurxy nxyexxyt xydoxyllxy lxyooxyk.xy"
        floralHintDollvelo.isHidden = !dreamySnapshotDollniva.isEmpty
        ribbonDisplayDollrevo.reloadData()
    }

    @objc private func openDollCollectorNotice() {
        navigationController?.pushViewController(DolluALoj(dollRouteURL: DolluCollectorRouteBuilder.noticeRoute()), animated: true)
    }

    @objc private func openDollAICollectorRoute() {
        navigationController?.pushViewController(DolluALoj(dollRouteURL: DolluCollectorRouteBuilder.aiCollectorRoute()), animated: true)
    }

    @objc private func pressDollNoticeButton() {
        UIView.animate(withDuration: 0.12) {
            self.satinMarkerDollpavo.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
            self.satinMarkerDollpavo.alpha = 0.76
        }
    }

    @objc private func releaseDollNoticeButton() {
        UIView.animate(withDuration: 0.18) {
            self.satinMarkerDollpavo.transform = .identity
            self.satinMarkerDollpavo.alpha = 1
        }
    }
}

extension DolluShortLookbookViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dreamySnapshotDollniva.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dollCell = collectionView.dequeueReusableCell(withReuseIdentifier: DolluStyleClipCardCell.dollReuseIdentifier, for: indexPath) as? DolluStyleClipCardCell
        let dollItem = dreamySnapshotDollniva[indexPath.item]
        dollCell?.configure(dollItem: dollItem)
        dollCell?.satinMarkerDollpavo = { [weak self] in
            self?.openDollSafetyRoute(for: dollItem)
        }
        return dollCell ?? UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dollItem = dreamySnapshotDollniva[indexPath.item]
        let dollRouteURL = dollItem.trimmedClosetDollrevoURL ?? DolluCollectorRouteBuilder.detailRoute(dollArchiveId: dollItem.dollArchiveId)
        let tinySnapshotDollhumi = DolluCollectorRouteBuilder.tinySnapshotDollhumi(dollRouteURL, tinyCoverDollmexa: dollItem.dolltrimmedLaceworkDollyaraL)
        navigationController?.pushViewController(DolluALoj(dollRouteURL: tinySnapshotDollhumi), animated: true)
    }

    private func openDollSafetyRoute(for dollItem: DollutrimmedClosetDollrevo) {
        let dollRouteURL = DolluCollectorRouteBuilder.safetyRoute(dollArchiveId: dollItem.dollArchiveId)
        navigationController?.pushViewController(DolluALoj(dollRouteURL: dollRouteURL), animated: true)
    }
}

final class DolluStyleClipCardCell: UICollectionViewCell {
    static let dollReuseIdentifier = "DolluStyleClipCardCell"

    var satinMarkerDollpavo: (() -> Void)?

    private let ivoryCoverDollzemi = DolluAsyncImageView()
    private let satinPinboardDollvani = UIView()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()
    private let glossyIdeaDollsovo = UIButton(type: .custom)
    let plaimger = UIImageView(image: UIImage.init(named: "pearlGuideDollukp"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .clear
        contentView.layer.shadowColor = UIColor.black.cgColor
        contentView.layer.shadowOpacity = 0.28
        contentView.layer.shadowRadius = 18
        contentView.layer.shadowOffset = CGSize(width: 0, height: 14)
        plaimger.translatesAutoresizingMaskIntoConstraints = false
        ivoryCoverDollzemi.translatesAutoresizingMaskIntoConstraints = false
        ivoryCoverDollzemi.contentMode = .scaleAspectFill
        ivoryCoverDollzemi.clipsToBounds = true
        ivoryCoverDollzemi.layer.cornerRadius = 28
        contentView.addSubview(ivoryCoverDollzemi)

        glossyIdeaDollsovo.translatesAutoresizingMaskIntoConstraints = false
        glossyIdeaDollsovo.setImage(UIImage(named: "DolluDelicatePromptDollmora")?.withRenderingMode(.alwaysOriginal), for: .normal)
        glossyIdeaDollsovo.accessibilityLabel = "Collector safety feedback"
        glossyIdeaDollsovo.addTarget(self, action: #selector(openDollSafetyRoute), for: .touchUpInside)
        glossyIdeaDollsovo.addTarget(self, action: #selector(pressDollSafetyButton), for: .touchDown)
        glossyIdeaDollsovo.addTarget(self, action: #selector(releaseDollSafetyButton), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        contentView.addSubview(glossyIdeaDollsovo)

        satinPinboardDollvani.translatesAutoresizingMaskIntoConstraints = false
        satinPinboardDollvani.backgroundColor = UIColor(red: 0.14, green: 0.12, blue: 0.31, alpha: 0.98)
        satinPinboardDollvani.layer.cornerRadius = 28
        satinPinboardDollvani.clipsToBounds = true
        contentView.addSubview(satinPinboardDollvani)

        layeredCatalogDollquvo.translatesAutoresizingMaskIntoConstraints = false
        layeredCatalogDollquvo.textColor = .white
        layeredCatalogDollquvo.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(18, gentleGalleryDollvani: true)
        layeredCatalogDollquvo.adjustsFontSizeToFitWidth = true
        layeredCatalogDollquvo.minimumScaleFactor = 0.72
        satinPinboardDollvani.addSubview(layeredCatalogDollquvo)
        satinPinboardDollvani.addSubview(plaimger)
        
        cozyMemoDolllaro.translatesAutoresizingMaskIntoConstraints = false
        cozyMemoDolllaro.textColor = UIColor(white: 1, alpha: 0.66)
        cozyMemoDolllaro.font = DolluGentleNoteDollrilo.gentleEnsembleDollbop(14, gentleGalleryDollvani: false)
        cozyMemoDolllaro.numberOfLines = 1
        satinPinboardDollvani.addSubview(cozyMemoDolllaro)
        NSLayoutConstraint.activate([
            ivoryCoverDollzemi.topAnchor.constraint(equalTo: contentView.topAnchor),
            ivoryCoverDollzemi.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            ivoryCoverDollzemi.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            ivoryCoverDollzemi.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.76),

            glossyIdeaDollsovo.topAnchor.constraint(equalTo: ivoryCoverDollzemi.topAnchor, constant: 10),
            glossyIdeaDollsovo.trailingAnchor.constraint(equalTo: ivoryCoverDollzemi.trailingAnchor, constant: -10),
            glossyIdeaDollsovo.widthAnchor.constraint(equalToConstant: 30),
            glossyIdeaDollsovo.heightAnchor.constraint(equalTo: glossyIdeaDollsovo.widthAnchor),

            satinPinboardDollvani.topAnchor.constraint(equalTo: ivoryCoverDollzemi.bottomAnchor, constant: -18),
            satinPinboardDollvani.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            satinPinboardDollvani.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            satinPinboardDollvani.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            layeredCatalogDollquvo.leadingAnchor.constraint(equalTo: satinPinboardDollvani.leadingAnchor, constant: 32),
            layeredCatalogDollquvo.trailingAnchor.constraint(equalTo: satinPinboardDollvani.trailingAnchor, constant: -32),
            layeredCatalogDollquvo.topAnchor.constraint(equalTo: satinPinboardDollvani.topAnchor, constant: 24),

            cozyMemoDolllaro.leadingAnchor.constraint(equalTo: layeredCatalogDollquvo.leadingAnchor),
            cozyMemoDolllaro.trailingAnchor.constraint(equalTo: layeredCatalogDollquvo.trailingAnchor),
            cozyMemoDolllaro.topAnchor.constraint(equalTo: layeredCatalogDollquvo.bottomAnchor, constant: 8),
            plaimger.widthAnchor.constraint(equalToConstant: 48),
            plaimger.heightAnchor.constraint(equalToConstant: 48),
            plaimger.trailingAnchor.constraint(equalTo: satinPinboardDollvani.trailingAnchor, constant: -16),
            plaimger.centerYAnchor.constraint(equalTo: layeredCatalogDollquvo.centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        nil
    }

    func configure(dollItem: DollutrimmedClosetDollrevo) {
        layeredCatalogDollquvo.text = dollItem.dollTitle
        cozyMemoDolllaro.text = dollItem.dollSummary
        ivoryCoverDollzemi.setDollImage(dollURL: dollItem.dolltrimmedLaceworkDollyaraL, fallbackTitle: dollItem.dollTitle)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        satinMarkerDollpavo = nil
        glossyIdeaDollsovo.transform = .identity
        glossyIdeaDollsovo.alpha = 1
    }

    @objc private func openDollSafetyRoute() {
        satinMarkerDollpavo?()
    }

    @objc private func pressDollSafetyButton() {
        UIView.animate(withDuration: 0.12) {
            self.glossyIdeaDollsovo.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
            self.glossyIdeaDollsovo.alpha = 0.82
        }
    }

    @objc private func releaseDollSafetyButton() {
        UIView.animate(withDuration: 0.18) {
            self.glossyIdeaDollsovo.transform = .identity
            self.glossyIdeaDollsovo.alpha = 1
        }
    }
}

final class DolluStyleClipAICollectorCard: UIControl {
    private let satinPinboardDollvani = UIView()
    private let tinyDisplayDollsovo = DolluDressyMascotView()
    private let layeredCatalogDollquvo = UILabel()
    private let cozyMemoDolllaro = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
//        buildDollAICollectorCard()
    }

    required init?(coder: NSCoder) {
        nil
    }

    override var isHighlighted: Bool {
        didSet {
            UIView.animate(withDuration: 0.14) {
                self.transform = self.isHighlighted ? CGAffineTransform(scaleX: 0.97, y: 0.97) : .identity
                self.alpha = self.isHighlighted ? 0.86 : 1
            }
        }
    }
}

final class DolluDressyMascotView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        isUserInteractionEnabled = false
    }

    required init?(coder: NSCoder) {
        nil
    }

    override func draw(_ rect: CGRect) {
        guard let dollContext = UIGraphicsGetCurrentContext() else { return }
        dollContext.saveGState()
        let dollScale = min(rect.width, rect.height) / 140
        dollContext.translateBy(x: rect.midX - 70 * dollScale, y: rect.midY - 70 * dollScale)
        dollContext.scaleBy(x: dollScale, y: dollScale)

        UIColor(red: 1.0, green: 0.53, blue: 0.20, alpha: 1).setFill()
        UIBezierPath(roundedRect: CGRect(x: 34, y: 28, width: 72, height: 82), cornerRadius: 28).fill()
        UIBezierPath(ovalIn: CGRect(x: 28, y: 18, width: 26, height: 32)).fill()
        UIBezierPath(ovalIn: CGRect(x: 86, y: 18, width: 26, height: 32)).fill()

        UIColor(red: 1.0, green: 0.82, blue: 0.62, alpha: 1).setFill()
        UIBezierPath(ovalIn: CGRect(x: 44, y: 44, width: 52, height: 48)).fill()

        UIColor(red: 0.38, green: 0.82, blue: 0.92, alpha: 1).setFill()
        UIBezierPath(ovalIn: CGRect(x: 46, y: 31, width: 48, height: 42)).fill()

        UIColor(red: 0.10, green: 0.09, blue: 0.16, alpha: 1).setFill()
        UIBezierPath(ovalIn: CGRect(x: 58, y: 61, width: 7, height: 8)).fill()
        UIBezierPath(ovalIn: CGRect(x: 76, y: 61, width: 7, height: 8)).fill()

        UIColor(red: 0.98, green: 0.38, blue: 0.52, alpha: 1).setStroke()
        let dollSmile = UIBezierPath()
        dollSmile.lineWidth = 2
        dollSmile.move(to: CGPoint(x: 63, y: 76))
        dollSmile.addQuadCurve(to: CGPoint(x: 79, y: 76), controlPoint: CGPoint(x: 71, y: 84))
        dollSmile.stroke()

        UIColor.white.setFill()
        UIBezierPath(roundedRect: CGRect(x: 42, y: 93, width: 56, height: 38), cornerRadius: 12).fill()
        UIColor(red: 1.0, green: 0.53, blue: 0.20, alpha: 1).setStroke()
        let dollTrim = UIBezierPath(roundedRect: CGRect(x: 44, y: 96, width: 52, height: 32), cornerRadius: 10)
        dollTrim.lineWidth = 3
        dollTrim.stroke()

        UIColor(red: 1.0, green: 0.53, blue: 0.20, alpha: 1).setStroke()
        let dollLeftArm = UIBezierPath()
        dollLeftArm.lineWidth = 7
        dollLeftArm.lineCapStyle = .round
        dollLeftArm.move(to: CGPoint(x: 43, y: 103))
        dollLeftArm.addLine(to: CGPoint(x: 18, y: 88))
        dollLeftArm.stroke()
        let dollRightArm = UIBezierPath()
        dollRightArm.lineWidth = 7
        dollRightArm.lineCapStyle = .round
        dollRightArm.move(to: CGPoint(x: 97, y: 103))
        dollRightArm.addLine(to: CGPoint(x: 122, y: 88))
        dollRightArm.stroke()

        UIColor(red: 1.0, green: 0.53, blue: 0.20, alpha: 1).setFill()
        UIBezierPath(roundedRect: CGRect(x: 50, y: 126, width: 14, height: 12), cornerRadius: 5).fill()
        UIBezierPath(roundedRect: CGRect(x: 77, y: 126, width: 14, height: 12), cornerRadius: 5).fill()

        dollContext.restoreGState()
    }
}
