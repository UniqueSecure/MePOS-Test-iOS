//
//  ViewController.swift
//  mepossdktest
//
//  Created by Daniel Gallegos Ibarra on 2/9/17.
//  Copyright © 2017 Unique Secure. All rights reserved.
//

import UIKit
import meposconnect

class ViewController: UIViewController, MePOSPrinterCallback {

    @IBOutlet weak var textFieldIP: UITextField!
    
    private var mepos:MePOS = MePOS();
    private let colors:[Int] = [MePOSColorCodes.COSMETIC_OFF,
                                MePOSColorCodes.COSMETIC_BLUE,
                                MePOSColorCodes.COSMETIC_GREEN,
                                MePOSColorCodes.COSMETIC_CYAN,
                                MePOSColorCodes.COSMETIC_RED,
                                MePOSColorCodes.COSMETIC_MAGENTA,
                                MePOSColorCodes.COSMETIC_YELLOW,
                                MePOSColorCodes.COSMETIC_WHITE];
    
    private var colorIndex:Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func connectMePOS(_ sender: UIButton) {
        let ipAddress:String = textFieldIP.text!;
        mepos = MePOS();
        mepos.getConnectionManager().setConnectionIPAddress(IPAddress: ipAddress);
        
    }
    
    
    @IBAction func changeLed(_ sender: UIButton) {
        rotateColor();
        mepos.setCosmeticLedCol(colour: colorIndex);
    }
    @IBAction func printReceipt(_ sender: UIButton) {
        mepos.print(receipt: MePOSShortReceipt().buildReceipt(), callback: self);
    }
    
    
    @IBAction func openCashDrawer(_ sender: UIButton) {
        do {
            try mepos.openCashDrawer(validateCashDrawerStatus: false);
        } catch {
            print("Error on open cash drawer");
        }
    }
    
    @IBAction func switchUSB(_ sender: UISwitch) {
        do {
            if sender.isOn {
                try mepos.enableUSB();
            } else {
                try mepos.disableUSB();
            }
        } catch {
        
        }
        
    }
    
    
    
    
    private func rotateColor() {
        colorIndex += 1;
        if colorIndex > 7 {
            colorIndex = 0;
        }
    }
    
    func onPrinterStarted(ipAddress: String) {
        
    }
    
    func onPrinterCompleted(ipAddress: String) {
        
    }
    
    func onPrinterError(error: MePOSError) {
        
    }
    
}

