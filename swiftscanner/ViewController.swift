//
//  ViewController.swift
//  swiftscanner
//
//  Created by Philip Bernstein on 11/22/16.
//  Copyright © 2016 Fresco News. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController<AVCaptureMetadataOutput>: UIViewController {

    var captureSession:AVCaptureSession?
    var captureDevice:AVCaptureDevice?
    var captureInput:AVCaptureInput?
    var metadataOutput:AVCaptureMetadataOutput?
    var metadataInput:AVCaptureMetadataInput?
    var previewLayer:AVCaptureVideoPreviewLayer?
    var highlightPreview:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureSession()
        self.configureDevice()
        self.configureInput()
        self.configureOutput()
    }
    
    func configureSession() {
        captureSession = AVCaptureSession()
        captureSession?.sessionPreset = AVCaptureSessionPresetHigh;
    }
    
    func configureDevice() {
        captureDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
        do {
            try captureDevice?.lockForConfiguration()
        } catch {
            print("Something went wrong!")
        }
        captureDevice?.videoZoomFactor = 3.5;
        captureDevice?.unlockForConfiguration()
    }
    
    func configureInput() {
        do {
            try captureInput = AVCaptureDeviceInput(device: captureDevice)
            
        }
        catch {
            NSLog("Error adding input");
        }
        
        captureSession?.addInput(captureInput)
    }
    
    func configureOutput() {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

