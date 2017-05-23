//
//  ViewController.m
//  prototest
//
//  Created by kaibin on 2017/5/19.
//  Copyright © 2017年 yy. All rights reserved.
//

#import "ViewController.h"
#import "Person.pbobjc.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    Person *person = [[Person alloc] init];
    person.name = @"Zhangsan";
    person.email = @"diveinedu@qq.com";
    person.uid = 1;
    NSData *data = [person data];
    
    NSString *path = @"/Users/kaibin/Documents/test.data";
    [data writeToFile:path atomically:YES];
    
    NSData *ldata = [NSData dataWithContentsOfFile:path];
    Person *p = [Person parseFromData:ldata error:nil];
    NSLog(@"\nname:%@\nemail:%@\nuid:%d", p.name, p.email, p.uid);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
