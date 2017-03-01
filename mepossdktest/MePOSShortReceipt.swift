//
//  MePOSShortReceipt.swift
//  mepossdktest
//
//  Created by Daniel Gallegos Ibarra on 2/14/17.
//  Copyright © 2017 Unique Secure. All rights reserved.
//

import meposconnect

public class MePOSShortReceipt {

    public func buildReceipt() -> MePOSReceipt {
        let r:MePOSReceipt = MePOSReceipt();
        var rcpt:MePOSReceiptTextLine = MePOSReceiptTextLine();
        
        rcpt.setText(text: "RECEIPT", style: MePOS.TEXT_STYLE_BOLD, size: MePOS.TEXT_SIZE_NORMAL, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        
        let fileUrl:URL = Bundle.main.url(forResource: "ic_launcher_bmp", withExtension: "bmp")!;
        let image:CIImage = CIImage(contentsOf: fileUrl)!;
        r.addLine(line: MePOSReceiptImageLine(image: image));

        r.addLine(line: MePOSReceiptFeedLine(lines: 1));
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Company name: Skyfox Digital" , style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Email daniel.gallegos@skyfoxdigital.com", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Telefone 5559537111", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Job title: Software developer", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Country : Mexico", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "VAT", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        r.addLine(line: MePOSReceiptFeedLine(lines: 1));
        
        r.addLine(line: MePOSReceiptSingleCharLine(chr: "-"));
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "User's name  " + "  Terminal  " + "  Time stamp", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        r.addLine(line: MePOSReceiptSingleCharLine(chr: "-"));
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Daniel Gallegos", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        r.addLine(line: MePOSReceiptSingleCharLine(chr: "-"));
        
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Order No.                   Table No.", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        r.addLine(line: MePOSReceiptSingleCharLine(chr: "-"));
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "1 Corona                      3.60", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "1 Soup of the day             4.55", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "1 Sirlon                     12.00", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "            price override/discount here", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "-Sirlon variants here  +Variant price here", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "-Sirlon edited ingredients/stock here", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "-Sirlon notes here", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "1 Sorbet                      5.00", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        r.addLine(line: MePOSReceiptFeedLine(lines: 1));
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Service charge % set percentage", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        r.addLine(line: MePOSReceiptSingleCharLine(chr: "-"));
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Total items in basquet        4", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_CENTER);
        r.addLine(line: rcpt);
        r.addLine(line: MePOSReceiptFeedLine(lines: 1));
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Total top category 1      Sum of all drinks", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Total top category 1      Sum of all food", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        
        
        rcpt = MePOSReceiptTextLine();
        rcpt.setText(text: "Total                        20.65", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_STYLE_NONE, position: MePOS.TEXT_POSITION_LEFT);
        r.addLine(line: rcpt);
        r.addLine(line: MePOSReceiptSingleCharLine(chr: "-"));
        r.addLine(line: MePOSReceiptFeedLine(lines: 1));
        
        r.addLine(line: MePOSReceiptBarcodeLine(type: MePOS.BARCODE_TYPE_CODE39, data: "R0926031274"));
        r.addLine(line: MePOSReceiptTextLine(text: "R0926031274", style: MePOS.TEXT_STYLE_NONE, size: MePOS.TEXT_SIZE_NORMAL, position: MePOS.TEXT_POSITION_CENTER));
        r.addLine(line: MePOSReceiptFeedLine(lines: 1));
        r.addLine(line: MePOSReceiptSingleCharLine(chr: "-"));
        
        return r;
    }
}
