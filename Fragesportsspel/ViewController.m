//
//  ViewController.m
//  Fragesportsspel
//
//  Created by ITHS on 2016-02-05.
//  Copyright © 2016 ITHS. All rights reserved.
//

#import "ViewController.h"
#import "QuestionGenerator.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *question;
@property (strong,nonatomic) QuestionGenerator *questionGenerator;
@property (weak, nonatomic) IBOutlet UIButton *alternative1;
@property (weak, nonatomic) IBOutlet UIButton *alternative2;
@property (weak, nonatomic) IBOutlet UIButton *alternative3;
@property (weak, nonatomic) IBOutlet UIButton *alternative4;
@property (weak, nonatomic) IBOutlet UILabel *rightOrNot;
@property (nonatomic) int round;
@property (weak, nonatomic) IBOutlet UILabel *showRound;
@property (weak, nonatomic) IBOutlet UIButton *restartGame;
@property (weak, nonatomic) IBOutlet UILabel *points;
@property (nonatomic) int right;
@property (nonatomic) int wrong;
@end

@implementation ViewController

-(QuestionGenerator*)questionGenerator{
    if(!_questionGenerator){
        _questionGenerator=[[QuestionGenerator alloc]init];
    }
    return _questionGenerator;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)generate:(id)sender {
    if (self.round < 11){
        self.rightOrNot.text= @"";
        [self showQuestion];
        self.round ++;
    }else{
         [self.restartGame setTitle:@"Game finished! new game?" forState:UIControlStateNormal];
    }
}

- (IBAction)startGame:(id)sender {
    [self.questionGenerator generateNumber];
    self.round=1;
    self.right=0;
    self.wrong=0;
    [self showQuestion];
    self.round++;
}

-(void)showQuestion{
    NSArray *chosen = [self.questionGenerator generateQuestion:self.round];
    
    self.question.text = [chosen objectAtIndex:0];
    
    [self.alternative1 setTitle:[chosen objectAtIndex:1] forState:UIControlStateNormal];
    [self.alternative2 setTitle:[chosen objectAtIndex:2] forState:UIControlStateNormal];
    [self.alternative3 setTitle:[chosen objectAtIndex:3] forState:UIControlStateNormal];
    [self.alternative4 setTitle:[chosen objectAtIndex:4] forState:UIControlStateNormal];
    self.showRound.text=[NSString stringWithFormat:@"%d", self.round];
}

- (IBAction)answer:(id)sender {
    NSString *alternative = [(UIButton *)sender currentTitle];
    
    if ([self.questionGenerator rightOrNot:(alternative)]){
          self.rightOrNot.text= @"correct!";
        self.right++;
        
    }else{
        self.rightOrNot.text= @"wrong!";
        self.wrong++;
    }
    if (self.round>5) {
        self.points.text=[NSString stringWithFormat:@"right: %d, wrong:%d", self.right,self.wrong];
    }
}

- (IBAction)restartGame:(id)sender {
    [self startGame:sender];
    self.points.text =@"";
    self.rightOrNot.text=@"";
    [self.restartGame setTitle:@"" forState:UIControlStateNormal];
}


@end
