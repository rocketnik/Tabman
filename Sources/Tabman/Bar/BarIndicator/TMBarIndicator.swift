//
//  TMBarIndicator.swift
//  Tabman
//
//  Created by Merrick Sapsford on 07/06/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

/// View that provides indication of the current page position.
open class TMBarIndicator: UIView, TMAnimationStyleable {
    
    // MARK: Types
    
    /// Display mode of the indicator in a bar.
    ///
    /// - top: Indicator goes above the bar contents.
    /// - bottom: Indicator goes below the bar contents.
    /// - fill: Indicator fills the height of the bar, behind the bar contents.
    public enum DisplayMode {
        case top
        case bottom
        case fill
    }

    public enum OverscrollBehavior {
        case bounce
        case compress
        case none
    }
    
    // MARK: Properties
    
    /// Display mode for the indicator.
    open var displayMode: DisplayMode {
        fatalError("Return displayMode in subclass")
    }
    
     /// Behavior the indicator should exhibit when scrolling over the bounds of the bar.
     ///
     /// Options:
     /// - `.bounce`: Bounce the indicator beyond the bounds of the bar.
     /// - `.compress`: Compress the indicators width as overscroll occurs.
     /// - `.none`: Don't do anything.
     ///
     /// Defaults to `.bounce`.
    public var overscrollBehavior: OverscrollBehavior = .bounce
    /// Whether the indicator should display progressively, traversing page indexes as progress.
    public var isProgressive: Bool = false
    
    public var animationStyle: TMAnimationStyle = .progressive
    
    // MARK: Init
    
    public required init() {
        super.init(frame: .zero)
        initialize()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        layout(in: self)
    }
    
    // MARK: Lifecycle
    
    public func layout(in view: UIView) {
    }
}
