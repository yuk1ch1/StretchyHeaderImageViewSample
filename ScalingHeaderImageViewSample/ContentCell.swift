import UIKit

class ContentCell: UITableViewCell {
    private lazy var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Swiftは2010年にLLVMとClangの始祖であるChris Lattner（英語版）によって開発が始められた。ChrisはSwiftについて「Objective-C、Rust、Haskell、Ruby、Python、C#、CLU、その他多くの言語からアイデアを得た」と述べている[5]。その後Apple社内での4年間の開発期間を経て、2014年のWWDCにおいて一般に発表され、同時にAppleに開発者登録している開発者に対してベータ版の提供が開始された。2014年9月9日、SwiftはXcode 6.0ゴールデンマスター版でマイルストーン1.0に到達した[6]。2015年12月3日、SwiftはApache 2.0ライセンスのもとでオープンソース化され、プロジェクトのホストとして Swift.org[※ 1] が作成された。WWDC 2016の基調講演で、AppleはSwiftでのコード作成方法を教えることを目的とした、Swift Playgroundsという名称のiPad専用アプリ開発を発表した。2016年9月にリリースされた[7]このアプリは3Dビデオゲームのようなインタフェースで表示され、コードの行が特定の順序で配置され実行されたときにフィードバックを提供する。2017年3月21日、Swift 3.1に対応し、日本語を含め5カ国語に対応したことを発表[8]。Swift 3.1は、2017年3月27日にリリースされた[9]。2017年、Project Leadは、Chris Lattner同様にLLVMとClangの開発者である、AppleのTed Kremenekである[10]。2017年9月19日、Xcode 9.0とともにSwift 4がリリースされた[11]。組み込みのクラスやデータ構造に変更が加えられている。Swift 3で書かれたソースコードはXcodeに搭載された移行機能を使って更新できる。その後、2018年3月29日に、Xcode 9.3とともにSwift 4.1が[12]、2018年6月4日にXcode 10 betaとともにSwift 4.2がリリースされた[13]。2019年3月25日、Xcode 10.2とともにSwift 5がリリースされた。バイナリインタフェースの安定化が図られ、Appleが提供するOSにSwiftランタイムが標準で含まれることになる[14]。ソースコードはSwift 4.xと互換性がある。WWDC 2019にて、Appleのプラットフォーム向けの新しいフレームワークとしてSwiftUIが提唱された[15]。2019年9月20日、Xcode 11.0とともにSwift 5.1がリリースされた。モジュールの安定化が図られ、Swiftの将来のバージョンで機能するバイナリフレームワークの作成、共有が可能になる[16]。2020年3月24日、Xcode 11.4とともにSwift 5.2がリリースされた[17]。2020年9月16日、Swift 5.3がリリースされ[18]、その約1週間後の9月22日、Windowsが公式にサポートされた[19]。2021年のWWDCで、Appleから正式に発表された Swift 5.5 は、同時実行と非同期コード（英語版）の言語サポートを大幅に拡張し、特に独自のバージョンのアクターモデルを導入しています。\nSwiftは2010年にLLVMとClangの始祖であるChris Lattner（英語版）によって開発が始められた。ChrisはSwiftについて「Objective-C、Rust、Haskell、Ruby、Python、C#、CLU、その他多くの言語からアイデアを得た」と述べている[5]。その後Apple社内での4年間の開発期間を経て、2014年のWWDCにおいて一般に発表され、同時にAppleに開発者登録している開発者に対してベータ版の提供が開始された。2014年9月9日、SwiftはXcode 6.0ゴールデンマスター版でマイルストーン1.0に到達した[6]。2015年12月3日、SwiftはApache 2.0ライセンスのもとでオープンソース化され、プロジェクトのホストとして Swift.org[※ 1] が作成された。WWDC 2016の基調講演で、AppleはSwiftでのコード作成方法を教えることを目的とした、Swift Playgroundsという名称のiPad専用アプリ開発を発表した。2016年9月にリリースされた[7]このアプリは3Dビデオゲームのようなインタフェースで表示され、コードの行が特定の順序で配置され実行されたときにフィードバックを提供する。2017年3月21日、Swift 3.1に対応し、日本語を含め5カ国語に対応したことを発表[8]。Swift 3.1は、2017年3月27日にリリースされた[9]。2017年、Project Leadは、Chris Lattner同様にLLVMとClangの開発者である、AppleのTed Kremenekである[10]。2017年9月19日、Xcode 9.0とともにSwift 4がリリースされた[11]。組み込みのクラスやデータ構造に変更が加えられている。Swift 3で書かれたソースコードはXcodeに搭載された移行機能を使って更新できる。その後、2018年3月29日に、Xcode 9.3とともにSwift 4.1が[12]、2018年6月4日にXcode 10 betaとともにSwift 4.2がリリースされた[13]。2019年3月25日、Xcode 10.2とともにSwift 5がリリースされた。バイナリインタフェースの安定化が図られ、Appleが提供するOSにSwiftランタイムが標準で含まれることになる[14]。ソースコードはSwift 4.xと互換性がある。WWDC 2019にて、Appleのプラットフォーム向けの新しいフレームワークとしてSwiftUIが提唱された[15]。2019年9月20日、Xcode 11.0とともにSwift 5.1がリリースされた。モジュールの安定化が図られ、Swiftの将来のバージョンで機能するバイナリフレームワークの作成、共有が可能になる[16]。2020年3月24日、Xcode 11.4とともにSwift 5.2がリリースされた[17]。2020年9月16日、Swift 5.3がリリースされ[18]、その約1週間後の9月22日、Windowsが公式にサポートされた[19]。2021年のWWDCで、Appleから正式に発表された Swift 5.5 は、同時実行と非同期コード（英語版）の言語サポートを大幅に拡張し、特に独自のバージョンのアクターモデルを導入しています。"
        label.textColor = .black
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        makeConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func makeConstraints() {
        contentView.addAutoLayoutedSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            label.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ])
    }
}
