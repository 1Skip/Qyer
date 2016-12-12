//
//  MapVC.m
//  Qyer
//
//  Created by 😘王艳 on 2016/12/9.
//  Copyright © 2016年 DKD. All rights reserved.
//

#import "MapVC.h"

#import <MapKit/MapKit.h>
@import CoreLocation;
@interface MapVC ()<MKMapViewDelegate>


@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@end

@implementation MapVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(nonnull MKUserLocation *)userLocation
{
//    MKUserLocation* user = [MKUserLocation new];
    MKCoordinateSpan spen = MKCoordinateSpanMake(0.01, 0.01);
    MKCoordinateRegion region = MKCoordinateRegionMake(userLocation.coordinate, spen);
    [mapView setRegion:region animated:YES];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.tabBarController.hidesBottomBarWhenPushed = YES;
}
-(void)viewWillDisappear:(BOOL)animated
{
    
    self.tabBarController.hidesBottomBarWhenPushed = NO;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
