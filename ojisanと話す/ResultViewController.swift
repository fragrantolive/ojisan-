//
//  ResultViewController.swift
//  ojisanと話す
//
//  Created by 中島詩草 on 2021/08/15.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var talkLabel: UILabel!
    let voices: [[String]] = [["きみの仕事ぶりはうわさに聞いているよ", "ボーナス？ふふふ……", "秘書の山田くんを呼んでくれないか？いや座布団が欲しいわけじゃない。", "仕事が進んでいるようで何よりだ"], ["へい、いらっしゃい！", "何から行きます？", "申し訳ねぇが、今日は赤味噌切らしてんだ旦那", "酒は飲んでも呑まれるなってね、まぁ旦那には今更か"], ["余、暗殺されかけすぎて絶対暗殺で死ぬと思ってたもん", "人質の時のこと？ほう、面白いことを聞くじゃあないか", "力こそパワーじゃ", "万里の長城はわしが作り始めたわけじゃない。まぁ余は偉大じゃから勘違いするのも当然ではあるが"], ["最近の油田？絶好調デス", "王族は堅苦しいデスからね", "年収？さぁ…最近数えてませんネ", "تزوجيني"]]
    let photos: [String] = ["shatyou", "taisyou", "sikoutei", "sekiyuou"]
    
    @IBAction func talkButton() {
        
        talkLabel.text = voices[conversation - 1].shuffled()[0]
    }

    
    var conversation:Int!
    

    @IBOutlet var ImageView: UIImageView!

    
    
    override func viewDidLoad() {
        print(conversation!)
        //条件分岐
//        if conversation == 1{
//            ImageView.image = UIImage(named: "shatyou")
//
//        }else if conversation == 2{
//            ImageView.image = UIImage(named: "taisyou")
//
//        }else if conversation == 3{
//            ImageView.image = UIImage(named: "sikoutei")
//
//        }else if conversation == 4{
//            ImageView.image = UIImage(named: "sekiyuou")
//
//        }
        
        
        
        
        
        super.viewDidLoad()
        talkLabel.text = "やぁ"
        ImageView.image = UIImage(named: photos[conversation - 1])

        // Do any additional setup after loading the view.
    }
    
    
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


