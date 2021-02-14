//
//  ActreesModel.swift
//  WorkingOnFetchingImageFromURL
//
//

import Foundation
import UIKit
struct ActreesModel{
    let actreesName:String!
    let actreesImageURL:String!
    static func getImageInfo()->[ActreesModel]{
       return [
        .init(actreesName:"Dakota Johnson",actreesImageURL:"https://assets.vogue.com/photos/5891fa32f1b0e7f31c92c89c/master/w_2560%2Cc_limit/00-holding-dakota-johnson.jpg"),
        .init(actreesName: "Alexander Dadario", actreesImageURL: "https://wh24txxjvdlz.cdn.shift8web.com/wp-content/uploads/2020/07/alexandra-daddario-instagram-photos-07-09-2020-9.jpg"),
        .init(actreesName: "Angelina Jolie", actreesImageURL: "https://i.pinimg.com/originals/e5/72/74/e57274ee35b529dff15958afe2ea77a9.jpg"),
        .init(actreesName: "Jessica Henwick", actreesImageURL: "https://m.media-amazon.com/images/M/MV5BYTk2NmFjNzQtYTNiNy00ODk5LWE4NGUtZTFjNjI4N2JjZDMxXkEyXkFqcGdeQXVyMTAwODk1MDk@._V1_UY1200_CR151,0,630,1200_AL_.jpg"),
        .init(actreesName: "Gal Gadot", actreesImageURL: "https://i.pinimg.com/originals/c2/7e/30/c27e30c1bbb769ac90692e4feab03ea9.jpg")
       ]
    }
}
