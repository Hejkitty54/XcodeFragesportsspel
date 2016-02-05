//
//  QuestionGenerator.m
//  Fragesportsspel
//
//  Created by ITHS on 2016-02-05.
//  Copyright © 2016 ITHS. All rights reserved.
//

#import "QuestionGenerator.h"

@interface QuestionGenerator()
@property (nonatomic) NSString *correctAnswer;
@end

@implementation QuestionGenerator

-(void)generateNumber{
        
    self.randomNumber  = [[NSMutableArray alloc] init];
    [self.randomNumber addObject:[NSNumber numberWithInteger:100]];
    
    int number = 0;
    
    while(self.randomNumber.count<11){
        number = arc4random()%16;
        
        if (!([self.randomNumber containsObject:[NSNumber numberWithInteger:number]])) {
            [self.randomNumber addObject:[NSNumber numberWithInteger:number]];
        }
    }
}

-(NSMutableArray*)generateQuestion:(int)round{
    
    NSNumber *number = 0;
    
    number = [self.randomNumber objectAtIndex:round];
    
    switch ([number intValue]) {
        case 0:
            self.questionArray= [NSMutableArray arrayWithObjects: @"How many cups are in one gallon?", @"8", @"16", @"24",@"32",nil];
            self.correctAnswer=@"16";
            break;
        case 1:
            self.questionArray= [NSMutableArray arrayWithObjects: @"What is laughing gas?", @"Nitrous Oxide", @"Carbon monoxide", @"Sulphur dioxide",@"Hydrogen peroxide",nil];
            self.correctAnswer=@"Nitrous Oxide";
            break;
        case 2:
            self.questionArray= [NSMutableArray arrayWithObjects: @"Who is the father of Geometry?", @"Aristotle", @"Euclid", @"Pythagoras", @"Kepler",nil];
            self.correctAnswer=@"Euclid";
            break;
        case 3:
            self.questionArray= [NSMutableArray arrayWithObjects: @"Who was known as Iron man of India?", @"Govind Ballabh Pant", @"Jawaharlal Nehru", @"Subhash Chandra Bose",@"Sardar Vallabhbhai Patel",nil];
            self.correctAnswer=@"Sardar Vallabhbhai Patel";
            break;
        case 4:
            self.questionArray= [NSMutableArray arrayWithObjects: @"Greta Garbo is associated with", @"Classical dance", @"Literature", @"Journalism",@"Acting",nil];
            self.correctAnswer=@"Acting";
            break;
        case 5:
            self.questionArray= [NSMutableArray arrayWithObjects: @"Who is the author of 'Ashtadhyayi'?", @"Sumitranandan", @"Raj Anand", @"Panini", @"Gitta Piramal",nil];
            self.correctAnswer=@"Panini";
            break;
        case 6:
            self.questionArray= [NSMutableArray arrayWithObjects: @"'Eight Lives' is a book written by", @"Raja Ramana", @"Savita Ambedkar", @"Mahesh Yogi",@"Raj Mohan Gandhi",nil];
            self.correctAnswer=@"Raj Mohan Gandhi";
            break;
        case 7:
            self.questionArray= [NSMutableArray arrayWithObjects: @"Who is known as 'Desert Fox'?", @"Bismarck", @"Eisenhower", @"Gen. Rommel",@"Walter Scott",nil];
            self.correctAnswer=@"Gen. Rommel";
            break;
        case 8:
            self.questionArray= [NSMutableArray arrayWithObjects: @"20th August is celebrated as", @"Earth Day", @"Sadbhavana Divas", @"No Tobacco Day", @"None of these",nil];
            self.correctAnswer=@"Sadbhavana Divas";
            break;
        case 9:
            self.questionArray= [NSMutableArray arrayWithObjects: @"Who is the author of 'Tom Sawyer'?", @"Leo Tolstoy", @"Mark Twain", @"John Ruskin",@"William Shakespeare",nil];
            self.correctAnswer=@"Mark Twain";
            break;
        case 10:
            self.questionArray= [NSMutableArray arrayWithObjects: @"Sound waves in air are", @"transverse", @"longitudinal", @"electromagnetic",@"polarised",nil];
            self.correctAnswer=@"longitudinal";
            break;
        case 11:
            self.questionArray= [NSMutableArray arrayWithObjects: @"Soda water contains", @"carbonic acid", @"sulphuric acid", @"carbon dioxide", @"nitrous acid",nil];
            self.correctAnswer=@"carbon dioxide";
            break;
        case 12:
            self.questionArray= [NSMutableArray arrayWithObjects: @"The Nobel Prize was first awarded in", @"1976", @"1958", @"1901", @"1972",nil];
            self.correctAnswer=@"1901";
            break;
        case 13:
            self.questionArray= [NSMutableArray arrayWithObjects: @"The most malleable metal is", @"platinum", @"silver", @"iron",@"gold",nil];
            self.correctAnswer=@"gold";
            break;
        case 14:
            self.questionArray= [NSMutableArray arrayWithObjects: @"The hydronium ion is", @"H+", @"HO -", @"H2+",@"H3O+",nil];
            self.correctAnswer=@"H3O+";
            break;
        case 15:
            self.questionArray= [NSMutableArray arrayWithObjects: @"1+1=", @"2222", @"196783", @"2",@"None of these", nil];
            self.correctAnswer=@"2";
            break;
        default:
            break;
    }
    return  _questionArray;
    
}

-(BOOL)rightOrNot:(NSString*)answer{
    return (self.correctAnswer== answer);
}

@end
