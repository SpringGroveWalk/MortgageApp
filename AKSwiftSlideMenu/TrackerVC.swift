//
//  TrackerVC.swift
//  AKSwiftSlideMenu
//
//  Created by Chris Bodger on 10/11/2016.
//

import UIKit

class TrackerVC: BaseViewController {

    @IBOutlet weak var GoodButton: UIButton!
    @IBOutlet weak var OkayButton: UIButton!
    @IBOutlet weak var BadButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        // Do any additional setup after loading the view.
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
@IBOutlet weak var variableLoanAmount: UITextField!
@IBOutlet weak var valueReturn: UITextField!
    
    func letsDoThis(z: Float) -> Float {
        

        var t = 241
        
        var T_1 = [Int]()
        
        // Create Array from 0 to 240, and return a to zero on completion
        for a in 0...t {
            T_1.append(a)
        }
        
        
        var interest = [Float](arrayLiteral: 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.00020833333333333335, 0.0004166666666666667, 0.0008333333333333334, 0.00125, 0.0016666666666666668, 0.0025, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.004166666666666667, 0.004166666666666667, 0.004375, 0.004375, 0.004583333333333333, 0.004583333333333333, 0.004583333333333333, 0.004583333333333333, 0.004583333333333333, 0.004791666666666666, 0.004583333333333333, 0.004583333333333333, 0.004583333333333333, 0.004583333333333333, 0.004375, 0.004375, 0.004166666666666667, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.003958333333333334, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.00375, 0.003958333333333334, 0.003958333333333334, 0.00375, 0.0035416666666666665, 0.0035416666666666665, 0.0035416666666666665, 0.0033333333333333335, 0.0033333333333333335, 0.0033333333333333335, 0.003125, 0.003125, 0.003125, 0.003125, 0.002916666666666667, 0.002916666666666667, 0.002916666666666667, 0.002916666666666667, 0.002916666666666667, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.003125, 0.0033333333333333335, 0.00375, 0.003958333333333334, 0.004166666666666667, 0.004166666666666667, 0.004375, 0.004375, 0.004583333333333333, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.004791666666666666, 0.005, 0.004791666666666666, 0.004791666666666666, 0.004583333333333333, 0.004583333333333333, 0.004375, 0.004375, 0.004375, 0.004166666666666667, 0.004166666666666667, 0.004375, 0.004375, 0.004583333333333333, 0.005, 0.005208333333333333, 0.005625, 0.0060416666666666665, 0.0060416666666666665, 0.0060416666666666665, 0.0060416666666666665, 0.00625, 0.00625, 0.00625, 0.00625, 0.00625, 0.00625, 0.00625, 0.0060416666666666665, 0.0060416666666666665, 0.0060416666666666665, 0.005833333333333334, 0.005625, 0.005416666666666667, 0.005208333333333333, 0.005208333333333333, 0.005208333333333333, 0.005208333333333333, 0.005208333333333333, 0.005208333333333333)
        
        // Create function to calculate principal, repayments and interest paid on a cumulative monthly basis
        
        func variablerate(P: inout Float, t: Int) -> Float? {
            var principal = [Float]()
            var i_paid = [Float]()
            i_paid.append(0)
            var repayments = [Float]()
            var R = Float(0)
            
            for a in 1...t-1 {
                P = P - R
                R = (P*interest[a])/(1-pow(1+interest[a],-Float(interest.count-a)))
                repayments.append(R)
                principal.append(P)
                let ip = P*(interest[a-1])
                i_paid.append(i_paid[a-1] + ip)
                P = P*(1+interest[a])
            }
            
            let cc = repayments.max()
            return cc
            
            
        }
        var u = Float(z)
        let dd = variablerate(P: &u, t: 240)!
        return dd
    }
 
    @IBAction func calculateButton(_ sender: Any) {
    
    let x = (variableLoanAmount.text as! NSString).doubleValue
    
    let y = letsDoThis(z: Float(x))
    let z = String(format: "%.2f", y)
    
    valueReturn.text = "\(z)"
    
    }

    @IBOutlet weak var testAnswer: UITextField!
    @IBOutlet weak var testResult: UITextField!
    @IBOutlet weak var strikeCounter: UITextField!
    
var countcount = 0
var strikestrike = 3
    @IBAction func testCheck(_ sender: UIButton) {
        if countcount < 3 {
            let userAnswer = Int((testAnswer?.text!)!)
                if userAnswer == 1019 {
                    testResult.text = "correct!"
                    countcount += 1
                } else if userAnswer == 782{
                    testResult.text = "Incorrect... Don't forget there's only 120 months left"
                    countcount += 1
                } else if userAnswer == 7499 {
                    testResult.text = "Incorrect... Don't forget there's 120 months left"
                    countcount += 1
                } else {
                    testResult.text = "Bad luck, try again!"
                    countcount += 1
                }
            strikestrike -= 1
            strikeCounter.text = "\(strikestrike) Strikes remaining"
        } else {
            testResult.text = "The answer is £1019. Now try and get this figure!"
            strikeCounter.text = "0 Strikes remaining"
        }
    }
    
    
}
