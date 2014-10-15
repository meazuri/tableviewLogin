//
//  ViewController.m
//  tableviewLogin
//
//  Created by Seint San on 14/10/14.
//  Copyright (c) 2014 Seint San. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITableView *loginTableView;
@property (strong, nonatomic) IBOutlet UIButton *btnLogin;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginTableView.layer.borderWidth =1;
    self.loginTableView.layer.cornerRadius =5;
    self.loginTableView.separatorColor =[UIColor brownColor];
    self.loginTableView.layer.borderColor = [UIColor brownColor].CGColor;
    
    self.btnLogin.layer.borderWidth =1;
    self.btnLogin.layer.cornerRadius =3;
    self.btnLogin.layer.borderColor =[UIColor brownColor].CGColor;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView Data Source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
      
    static NSString *identifier =@"cellidentifier";
    
    UITableViewCell *cell = [self.loginTableView dequeueReusableCellWithIdentifier:identifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    if (indexPath.row == 0) {
        userID =[[UITextField alloc] initWithFrame:CGRectMake(5,0,230,21)];
        userID.placeholder = @"UserName";
        userID.autocorrectionType = UITextAutocorrectionTypeNo;
        [userID setClearButtonMode:UITextFieldViewModeWhileEditing];
             cell.accessoryView = userID;
        [cell.contentView addSubview:userID];
        
    }
    if( indexPath.row == 1){
        password =[[UITextField alloc]initWithFrame:CGRectMake(5,0,230,21)];
        password.placeholder =@"Password";
        password.secureTextEntry = YES;
        password.autocorrectionType = UITextAutocorrectionTypeNo;
        [password setClearButtonMode:UITextFieldViewModeWhileEditing];
        cell.accessoryView =password;
        [cell.contentView addSubview:password];
        
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}
- (void) viewDidLayoutSubviews {
  
    [super viewDidLayoutSubviews];
    if ([self.loginTableView respondsToSelector:@selector(setSeparatorInset:)]) {
        
        [self.loginTableView setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([self.loginTableView respondsToSelector:@selector(setLayoutMargins:)]) {
       
        [self.loginTableView setLayoutMargins:UIEdgeInsetsZero];
    }
    
    
}
@end
