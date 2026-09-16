import UIKit

final class DolluheirloomGalleryController: UIViewController {
    private enum DolluHomeSection: Int, CaseIterable {
        case showcase
        case dollpedia
    }

    private let polishedBackgroundDollquvo = UIImageView(image: UIImage(named: "DolluPolishedBackgroundDollquvo"))
    private let sageLookbookDollmexa = UIImageView(image: UIImage(named: "DolluSageLookbookDollmexa"))
    private let satinMarkerDollpavo = UIButton()
    private let calmNoteDollsovo = DollucalmNoteDollsovoView()
    private let ribbonCategoryDollpiri = UIRefreshControl()
    private let floralHintDollvelo = UILabel()
    private let pearlGuideDollukp = DollukeepsakeHemlineDollmivository()
    private var ribbonDisplayDollrevo: UICollectionView!
    private var dreamySnapshotDollniva: [DollutrimmedClosetDollrevo] = []
    private var petiteCategoryDollvelo: [DollutrimmedClosetDollrevo] = []
    private var ivoryProgressDollrilo = false

    override func viewDidLoad() {
        super.viewDidLoad()
        buildDollCollectorGallery()
        applyDollGalleryLoading()
        loadDollCollectorGallery()
    }

    private func buildDollCollectorGallery() {
        view.backgroundColor = DolluWardrobePalette.dollBackdropInk

        polishedBackgroundDollquvo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(polishedBackgroundDollquvo)

        sageLookbookDollmexa.translatesAutoresizingMaskIntoConstraints = false
        sageLookbookDollmexa.contentMode = .scaleAspectFit
        sageLookbookDollmexa.isAccessibilityElement = true
        sageLookbookDollmexa.accessibilityLabel = "DOLLU"
        view.addSubview(sageLookbookDollmexa)

        satinMarkerDollpavo.translatesAutoresizingMaskIntoConstraints = false
        satinMarkerDollpavo.accessibilityLabel = "Collector notice"
        satinMarkerDollpavo.addTarget(self, action: #selector(openDollCollectorNotice), for: .touchUpInside)
        satinMarkerDollpavo.addTarget(self, action: #selector(pressDollNoticeButton), for: .touchDown)
        satinMarkerDollpavo.addTarget(self, action: #selector(releaseDollNoticeButton), for: [.touchCancel, .touchDragExit, .touchUpInside, .touchUpOutside])
        satinMarkerDollpavo.setImage(UIImage(named: "DolluSatinMarkerDollpavo")?.withRenderingMode(.alwaysOriginal), for: .normal)
        view.addSubview(satinMarkerDollpavo)

        ribbonDisplayDollrevo = UICollectionView(frame: .zero, collectionViewLayout: makeDollHomeLayout())
        ribbonDisplayDollrevo.translatesAutoresizingMaskIntoConstraints = false
        ribbonDisplayDollrevo.backgroundColor = .clear
        ribbonDisplayDollrevo.dataSource = self
        ribbonDisplayDollrevo.delegate = self
        ribbonDisplayDollrevo.alwaysBounceVertical = true
        ribbonDisplayDollrevo.contentInset.bottom = 126
        ribbonCategoryDollpiri.tintColor = UIColor(red: 1, green: 0.18, blue: 0.86, alpha: 1)
        ribbonCategoryDollpiri.addTarget(self, action: #selector(loadDollCollectorGallery), for: .valueChanged)
        ribbonDisplayDollrevo.refreshControl = ribbonCategoryDollpiri
        ribbonDisplayDollrevo.register(DollukeepsakeDisplayDollvaniseCell.self, forCellWithReuseIdentifier: DollukeepsakeDisplayDollvaniseCell.dollReuseIdentifier)
        ribbonDisplayDollrevo.register(DolluDollpediaCardCell.self, forCellWithReuseIdentifier: DolluDollpediaCardCell.dollReuseIdentifier)
        ribbonDisplayDollrevo.register(DollukeepsakeCategoryHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: DollukeepsakeCategoryHeaderView.dollReuseIdentifier)
        view.addSubview(ribbonDisplayDollrevo)

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

            sageLookbookDollmexa.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 31),
            sageLookbookDollmexa.widthAnchor.constraint(equalToConstant: 106),
            sageLookbookDollmexa.heightAnchor.constraint(equalToConstant: 24),
            sageLookbookDollmexa.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sageLookbookDollmexa.trailingAnchor.constraint(lessThanOrEqualTo: satinMarkerDollpavo.leadingAnchor, constant: -18),

            satinMarkerDollpavo.centerYAnchor.constraint(equalTo: sageLookbookDollmexa.centerYAnchor),
            satinMarkerDollpavo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22),
            satinMarkerDollpavo.widthAnchor.constraint(equalToConstant: 24),
            satinMarkerDollpavo.heightAnchor.constraint(equalToConstant: 24),

            ribbonDisplayDollrevo.topAnchor.constraint(equalTo: sageLookbookDollmexa.bottomAnchor, constant: 40),
            ribbonDisplayDollrevo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ribbonDisplayDollrevo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ribbonDisplayDollrevo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            calmNoteDollsovo.topAnchor.constraint(equalTo: ribbonDisplayDollrevo.topAnchor),
            calmNoteDollsovo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calmNoteDollsovo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calmNoteDollsovo.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            floralHintDollvelo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            floralHintDollvelo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            floralHintDollvelo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            floralHintDollvelo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }

    private func makeDollHomeLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { [weak self] dollSectionIndex, dollEnvironment in
            guard let dollSection = DolluHomeSection(rawValue: dollSectionIndex) else { return nil }
            switch dollSection {
            case .showcase:
                return self?.makeShowcaseSection(dollEnvironment: dollEnvironment)
            case .dollpedia:
                return self?.makeDollpediaSection(dollEnvironment: dollEnvironment)
            }
        }
    }

    private func makeShowcaseSection(dollEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        let dollWidth = dollEnvironment.container.effectiveContentSize.width
        let dollItemWidth = min(114, dollWidth - 40)
        let dollItemSize = NSCollectionLayoutSize(widthDimension: .absolute(dollItemWidth), heightDimension: .absolute(146))
        let dollItem = NSCollectionLayoutItem(layoutSize: dollItemSize)
        let dollGroupSize = NSCollectionLayoutSize(widthDimension: .absolute(dollItemWidth), heightDimension: .absolute(146))
        let dollGroup = NSCollectionLayoutGroup.horizontal(layoutSize: dollGroupSize, subitems: [dollItem])
        let dollSection = NSCollectionLayoutSection(group: dollGroup)
        dollSection.orthogonalScrollingBehavior = .continuous
        dollSection.interGroupSpacing = 18
        dollSection.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 20, bottom: 24, trailing: 20)
        dollSection.boundarySupplementaryItems = [makeDollHeaderItem()]
        return dollSection
    }

    private func makeDollpediaSection(dollEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection {
        let dollHeight: CGFloat = 108
        let dollItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(dollHeight))
        let dollItem = NSCollectionLayoutItem(layoutSize: dollItemSize)
        let dollGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(dollHeight))
        let dollGroup = NSCollectionLayoutGroup.vertical(layoutSize: dollGroupSize, subitems: [dollItem])
        let dollSection = NSCollectionLayoutSection(group: dollGroup)
        dollSection.interGroupSpacing = 16
        dollSection.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 20, bottom: 140, trailing: 20)
        dollSection.boundarySupplementaryItems = [makeDollHeaderItem()]
        return dollSection
    }

    private func makeDollHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
        let dollHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(18))
        return NSCollectionLayoutBoundarySupplementaryItem(layoutSize: dollHeaderSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
    }

    @objc private func loadDollCollectorGallery() {
        guard !ivoryProgressDollrilo else {
            ribbonCategoryDollpiri.endRefreshing()
            return
        }
        ivoryProgressDollrilo = true
        let dollGroup = DispatchGroup()
        var dollShowcaseResult: Result<[DollutrimmedClosetDollrevo], Error>?
        var dollpediaResult: Result<[DollutrimmedClosetDollrevo], Error>?

        dollGroup.enter()
        pearlGuideDollukp.fetchDolluDynamicItems(dollKind: .showcaseInspiration) { dollResult in
            dollShowcaseResult = dollResult
            dollGroup.leave()
        }

        dollGroup.enter()
        pearlGuideDollukp.fetchDolluDynamicItems(dollKind: .dollpediaGuide) { dollResult in
            dollpediaResult = dollResult
            dollGroup.leave()
        }

        dollGroup.notify(queue: .main) { [weak self] in
            self?.ivoryProgressDollrilo = false
            self?.applyDollGalleryResult(dollShowcaseResult: dollShowcaseResult, dollpediaResult: dollpediaResult)
        }
    }

    private func applyDollGalleryLoading() {
        floralHintDollvelo.isHidden = true
        calmNoteDollsovo.applyDollLoading()
    }

    private func applyDollGalleryResult(dollShowcaseResult: Result<[DollutrimmedClosetDollrevo], Error>?, dollpediaResult: Result<[DollutrimmedClosetDollrevo], Error>?) {
        calmNoteDollsovo.stopDollLoading()
        ribbonCategoryDollpiri.endRefreshing()
        if let pocketCollectionDollruni = try? dollShowcaseResult?.get() {
            dreamySnapshotDollniva = pocketCollectionDollruni
        } else if dreamySnapshotDollniva.isEmpty {
            dreamySnapshotDollniva = DollutrimmedClosetDollrevo.showcaseFallbackItems
        }
        if let pocketCollectionDollruni = try? dollpediaResult?.get() {
            petiteCategoryDollvelo = pocketCollectionDollruni
        } else if petiteCategoryDollvelo.isEmpty {
            petiteCategoryDollvelo = DollutrimmedClosetDollrevo.dollpediaFallbackItems
        }

        if dreamySnapshotDollniva.isEmpty && petiteCategoryDollvelo.isEmpty {
            floralHintDollvelo.text = "Doll inspiration is waiting to be collected."
            floralHintDollvelo.isHidden = false
        } else {
            floralHintDollvelo.isHidden = true
        }
        ribbonDisplayDollrevo.reloadData()
    }

    @objc private func openDollCollectorNotice() {
        navigationController?.pushViewController(DolluALoj(dollRouteURL: DolluCollectorRouteBuilder.noticeRoute()), animated: true)
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

    private func openDollRoute(for dollItem: DollutrimmedClosetDollrevo) {
        let dollRouteURL = dollItem.trimmedClosetDollrevoURL ?? DolluCollectorRouteBuilder.detailRoute(dollArchiveId: dollItem.dollArchiveId)
        navigationController?.pushViewController(DolluALoj(dollRouteURL: dollRouteURL), animated: true)
    }

    private func openDollSafetyRoute(for dollItem: DollutrimmedClosetDollrevo) {
        let dollRouteURL = DolluCollectorRouteBuilder.safetyRoute(dollArchiveId: dollItem.dollArchiveId)
        navigationController?.pushViewController(DolluALoj(dollRouteURL: dollRouteURL), animated: true)
    }
}

extension DolluheirloomGalleryController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        DolluHomeSection.allCases.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let dollSection = DolluHomeSection(rawValue: section) else { return 0 }
        switch dollSection {
        case .showcase:
            return dreamySnapshotDollniva.count
        case .dollpedia:
            return petiteCategoryDollvelo.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let dollSection = DolluHomeSection(rawValue: indexPath.section) else { return UICollectionViewCell() }
        switch dollSection {
        case .showcase:
            let dollCell = collectionView.dequeueReusableCell(withReuseIdentifier: DollukeepsakeDisplayDollvaniseCell.dollReuseIdentifier, for: indexPath) as? DollukeepsakeDisplayDollvaniseCell
            let dollItem = dreamySnapshotDollniva[indexPath.item]
            dollCell?.configure(dollItem: dollItem)
            dollCell?.satinMarkerDollpavo = { [weak self] in
                self?.openDollSafetyRoute(for: dollItem)
            }
            return dollCell ?? UICollectionViewCell()
        case .dollpedia:
            let dollCell = collectionView.dequeueReusableCell(withReuseIdentifier: DolluDollpediaCardCell.dollReuseIdentifier, for: indexPath) as? DolluDollpediaCardCell
            let dollItem = petiteCategoryDollvelo[indexPath.item]
            dollCell?.configure(dollItem: dollItem)
            dollCell?.satinMarkerDollpavo = { [weak self] in
                self?.openDollSafetyRoute(for: dollItem)
            }
            return dollCell ?? UICollectionViewCell()
        }
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let dollHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: DollukeepsakeCategoryHeaderView.dollReuseIdentifier, for: indexPath) as? DollukeepsakeCategoryHeaderView
        let dollTitle = DolluHomeSection(rawValue: indexPath.section) == .showcase ? "Showcase" : "Dollpedia"
        dollHeader?.configure(dollTitle: dollTitle)
        return dollHeader ?? UICollectionReusableView()
    }
}

extension DolluheirloomGalleryController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let dollSection = DolluHomeSection(rawValue: indexPath.section) else { return }
        switch dollSection {
        case .showcase:
            openDollRoute(for: dreamySnapshotDollniva[indexPath.item])
        case .dollpedia:
            openDollRoute(for: petiteCategoryDollvelo[indexPath.item])
        }
    }

    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        collectionView.cellForItem(at: indexPath)?.contentView.alpha = 0.72
    }

    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        collectionView.cellForItem(at: indexPath)?.contentView.alpha = 1
    }
}
