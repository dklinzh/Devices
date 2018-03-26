//
//  Model.swift
//  EasyBoy
//
//  Created by RockerHX on 2018/3/23.
//  Copyright © 2018年 RockerHX. All rights reserved.
//


extension Device {

    public enum Model: String {

        /*** unknown ***/
        case unknown

        #if os(iOS)

        /*** iPod ***/
        case iPodTouch1Gen
        case iPodTouch2Gen
        case iPodTouch3Gen
        case iPodTouch4Gen
        case iPodTouch5Gen
        case iPodTouch6Gen

        /*** iPhone ***/
        case iPhone4
        case iPhone4S
        case iPhone5
        case iPhone5C
        case iPhone5S
        case iPhone6
        case iPhone6Plus
        case iPhone6S
        case iPhone6SPlus
        case iPhoneSE
        case iPhone7
        case iPhone7Plus
        case iPhone8
        case iPhone8Plus
        case iPhoneX

        /*** iPad ***/
        case iPad1
        case iPad2
        case iPad3
        case iPad4
        case iPad5
        case iPadAir
        case iPadAir2
        case iPadMini
        case iPadMini2
        case iPadMini3
        case iPadMini4
        case iPadPro9_7Inch
        case iPadPro10_5Inch
        case iPadPro12_9Inch

        #elseif os(OSX)

        case mac

        #elseif os(tvOS)

        case AppleTV
        case AppleTV4K

        #elseif os(watchOS)

        case AppleWatchSeries1
        case AppleWatchEdition
        case AppleWatchHermès
        case AppleWatchNike
        case AppleWatchSeries3

        #endif

    }

}


// MARK: - Model Methods -
extension Device {

    static fileprivate func getModel(byCode code: String) -> Model {
        #if os(iOS)
            switch code {
                /*** iPod touch ***/
            case "iPod1,1":                                  return .iPodTouch1Gen
            case "iPod2,1":                                  return .iPodTouch2Gen
            case "iPod3,1":                                  return .iPodTouch3Gen
            case "iPod4,1":                                  return .iPodTouch4Gen
            case "iPod5,1":                                  return .iPodTouch5Gen
            case "iPod7,1":                                  return .iPodTouch6Gen

                /*** iPhone ***/
            case "iPhone3,1", "iPhone3,2", "iPhone3,3":      return .iPhone4
            case "iPhone4,1", "iPhone4,2", "iPhone4,3":      return .iPhone4S
            case "iPhone5,1", "iPhone5,2":                   return .iPhone5
            case "iPhone5,3", "iPhone5,4":                   return .iPhone5C
            case "iPhone6,1", "iPhone6,2":                   return .iPhone5S
            case "iPhone7,2":                                return .iPhone6
            case "iPhone7,1":                                return .iPhone6Plus
            case "iPhone8,1":                                return .iPhone6S
            case "iPhone8,2":                                return .iPhone6SPlus
            case "iPhone8,4":                                return .iPhoneSE
            case "iPhone9,1", "iPhone9,3":                   return .iPhone7
            case "iPhone9,2", "iPhone9,4":                   return .iPhone7Plus
            case "iPhone10,1", "iPhone10,4":                 return .iPhone8
            case "iPhone10,2", "iPhone10,5":                 return .iPhone8Plus
            case "iPhone10,3", "iPhone10,6":                 return .iPhoneX

                /*** iPad ***/
            case "iPad1,1":                                  return .iPad1
            case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": return .iPad2
            case "iPad3,1", "iPad3,2", "iPad3,3":            return .iPad3
            case "iPad3,4", "iPad3,5", "iPad3,6":            return .iPad4
            case "iPad6,11", "iPad6,12":                     return .iPad5
            case "iPad4,1", "iPad4,2", "iPad4,3":            return .iPadAir
            case "iPad5,3", "iPad5,4":                       return .iPadAir2
            case "iPad2,5", "iPad2,6", "iPad2,7":            return .iPadMini
            case "iPad4,4", "iPad4,5", "iPad4,6":            return .iPadMini2
            case "iPad4,7", "iPad4,8", "iPad4,9":            return .iPadMini3
            case "iPad5,1", "iPad5,2":                       return .iPadMini4
            case "iPad6,7", "iPad6,8", "iPad7,1", "iPad7,2": return .iPadPro12_9Inch
            case "iPad7,3", "iPad7,4":                       return .iPadPro10_5Inch
            case "iPad6,3", "iPad6,4":                       return .iPadPro9_7Inch

                /*** Unknown ***/
            default:                                         return .unknown
            }
        #elseif os(OSX)
            return .mac
        #elseif os(tvOS)

        #elseif os(watchOS)

        #endif
    }

    static public func model() -> Model {
        return getModel(byCode: code())
    }

}

