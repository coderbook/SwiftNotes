//
//  ViewController.swift
//  SwiftNodes
//
//  Created by vernon^3^ on 16/3/4.
//  Copyright © 2016年 CoderBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        testOptional();
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /**
       对Optional类型的理解
     
    **/
    func testOptional(){
        var mIntOptional:Int8?
        var mInt:Int8
        
        mInt=1; print(mInt)//OK
        mIntOptional=2;print(mIntOptional)//OK
        
//        mInt=nil;//编译报错
//        mIntOptional=nil;//OK

//        let mInt2:Int8=mInt;print("mInt2 is \(mInt2)")//OK
        
//        let mInt2:Int8=mIntOptional!; print("mInt2 \(mInt2)") //必须加! 否则编译报错 原因是mInt2 不是optional类型 而mIntOptional是
        
//        let mInt2=mIntOptional; print("mInt2 \(mInt2)") //OK 原因是mInt2没有指定类型，所以也是跟mIntOptional相同类型
        
//        let mString:String=String(mIntOptional); print("mString \(mString)")//OK 没有问题 String有这样的方法 但目前Int还没看到有
        
//        mIntOptional=nil; let mInt3:Int8=mIntOptional!;print("mInt3 \(mInt3)");//运行时报错 原因mInt3不是optional类型
        
        testGuard(mInt)//这里传入mInt没有问题
        
    }
    
    /**
     
     Using guard solves all 3 of the issues
     
     1、Checking for the condition you do want, not the one you don’t. This again is similar to an assert. If the condition is not met, guard‘s else statement is run, which breaks out of the function.
     2、If the condition passes, the optional variable here is automatically unwrapped for you within the scope that the guard statement was called – in this case, the fooGuard(_:) function. This is an important, yet notably strange feature that really makes the guard statement useful.
     3、You are checking for bad cases early, making your function more readable and easier to maintain.
     **/
    func testGuard(x:Int8?){
//        if var x=x where x>0{
//            //这里也不会报错的
//            x=12;
//            print("optional x is not nil");
//        }
        
        guard let x=x where x>0 else{
            print("optional x is nil");
            return;
        }
        
        print("test guard final x is \(x)");
    }

}

