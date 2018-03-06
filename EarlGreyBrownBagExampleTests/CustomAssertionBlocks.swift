//
//  CustomAssertionBlocks.swift
//  EarlGreyBrownBagExampleTests
//
//  Created by Bart Chrzaszcz on 3/6/18.
//  Copyright © 2018 Bart Chrzaszcz. All rights reserved.
//

import UIKit
import EarlGrey

class EarlGreyCustomAssertionBlocks {

    static let shared = EarlGreyCustomAssertionBlocks()

    func UILabelTextEqual(expectedString: String) -> GREYAssertionBlock {
        return GREYAssertionBlock.assertion(withName: "Assert UI Label Text is correct",
                                            assertionBlockWithError: {
                                                (element: Any?, errorOrNil: UnsafeMutablePointer<NSError?>?) -> Bool in
                                                guard let label = element as? UILabel else {
                                                    let errorInfo = [NSLocalizedDescriptionKey:
                                                        NSLocalizedString("Element is not a UILabel",
                                                                          comment: "")]
                                                    errorOrNil?.pointee =
                                                        NSError(domain: kGREYInteractionErrorDomain,
                                                                code: 2,
                                                                userInfo: errorInfo)
                                                    return false
                                                }
                                                guard let text = label.text else {
                                                    let errorInfo = [NSLocalizedDescriptionKey:
                                                        NSLocalizedString("UILabel text is nil",
                                                                          comment: "")]
                                                    errorOrNil?.pointee =
                                                        NSError(domain: kGREYInteractionErrorDomain,
                                                                code: 2,
                                                                userInfo: errorInfo)
                                                    return false
                                                }
                                                return text == expectedString
        })
    }

    func UITextFieldTextEqual(expectedString: String) -> GREYAssertionBlock {
        return GREYAssertionBlock.assertion(withName: "Assert UI Label Text is correct",
                                            assertionBlockWithError: {
                                                (element: Any?, errorOrNil: UnsafeMutablePointer<NSError?>?) -> Bool in
                                                guard let textField = element as? UITextField else {
                                                    let errorInfo = [NSLocalizedDescriptionKey:
                                                        NSLocalizedString("Element is not a UITextField",
                                                                          comment: "")]
                                                    errorOrNil?.pointee =
                                                        NSError(domain: kGREYInteractionErrorDomain,
                                                                code: 2,
                                                                userInfo: errorInfo)
                                                    return false
                                                }
                                                guard let text = textField.text else {
                                                    let errorInfo = [NSLocalizedDescriptionKey:
                                                        NSLocalizedString("UITextField text is nil",
                                                                          comment: "")]
                                                    errorOrNil?.pointee =
                                                        NSError(domain: kGREYInteractionErrorDomain,
                                                                code: 2,
                                                                userInfo: errorInfo)
                                                    return false
                                                }
                                                return text == expectedString
        })
    }

    func UIDatePickerDateEqual(expectedDate: Date) -> GREYAssertionBlock {
        return GREYAssertionBlock.assertion(withName: "Assert Date Picker Year, Month, Day, Hour, and Minute is correct",
                                            assertionBlockWithError: {
                                                (element: Any?, errorOrNil: UnsafeMutablePointer<NSError?>?) -> Bool in
                                                guard let datePicker = element as? UIDatePicker else {
                                                    let errorInfo = [NSLocalizedDescriptionKey:
                                                        NSLocalizedString("Element is not a UIDate",
                                                                          comment: "")]
                                                    errorOrNil?.pointee =
                                                        NSError(domain: kGREYInteractionErrorDomain,
                                                                code: 2,
                                                                userInfo: errorInfo)
                                                    return false
                                                }

                                                return datePicker.date == expectedDate
        })
    }

    func UIButtonIsDisabled() -> GREYAssertionBlock {
        return GREYAssertionBlock.assertion(withName: "Assert UI Button is disabled",
                                            assertionBlockWithError: {
                                                (element: Any?, errorOrNil: UnsafeMutablePointer<NSError?>?) -> Bool in
                                                guard let button = element as? UIButton else {
                                                    let errorInfo = [NSLocalizedDescriptionKey:
                                                        NSLocalizedString("Element is not a UIButton",
                                                                          comment: "")]
                                                    errorOrNil?.pointee =
                                                        NSError(domain: kGREYInteractionErrorDomain,
                                                                code: 2,
                                                                userInfo: errorInfo)
                                                    return false
                                                }

                                                return !button.isEnabled
        })
    }

    func UIButtonIsEnabled() -> GREYAssertionBlock {
        return GREYAssertionBlock.assertion(withName: "Assert UI Button is enabled",
                                            assertionBlockWithError: {
                                                (element: Any?, errorOrNil: UnsafeMutablePointer<NSError?>?) -> Bool in
                                                guard let button = element! as! UIButton as UIButton! else {
                                                    let errorInfo = [NSLocalizedDescriptionKey:
                                                        NSLocalizedString("Element is not a UIButton",
                                                                          comment: "")]
                                                    errorOrNil?.pointee =
                                                        NSError(domain: kGREYInteractionErrorDomain,
                                                                code: 2,
                                                                userInfo: errorInfo)
                                                    return false
                                                }

                                                return button.isEnabled
        })
    }
}

