//
//  FirstViewController.m
//  MapKit
//
//  Created by fis on 03/08/13.
//  Copyright (c) 2013 fis. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    mapView = [[MKMapView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
	[mapView setMapType:MKMapTypeHybrid];
	[mapView setZoomEnabled:YES];
	[mapView setScrollEnabled:YES];
	
	MKCoordinateRegion region = { {0.0, 0.0 }, { 0.0, 0.0 } };
	region.center.latitude = 17.436775 ;
	region.center.longitude = 78.447428;
	region.span.longitudeDelta = 0.001f;
	region.span.latitudeDelta = 0.001f;
	
	[mapView setRegion:region animated:YES];
	
	[mapView setDelegate:self];
	
	[self.view addSubview:mapView];
	
	DisplayView *ann = [[DisplayView alloc] init];
	ann.title = @" Hyderabad ";
	ann.subtitle = @"Maitrivanam Lane";
	ann.coordinate = region.center;
	[mapView addAnnotation:ann];
    
}

-(MKAnnotationView *)mapView:(MKMapView *)mV viewForAnnotation:(id <MKAnnotation>)annotation {
	MKPinAnnotationView *pinView = nil;
	if(annotation != mapView.userLocation)
	{
		static NSString *defaultPinID = @"com.fortune.pin";
		pinView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:defaultPinID];
		if ( pinView == nil ) pinView = [[MKPinAnnotationView alloc]
										  initWithAnnotation:annotation reuseIdentifier:defaultPinID];
		
		pinView.pinColor = MKPinAnnotationColorRed;
		pinView.canShowCallout = YES;
		pinView.animatesDrop = YES;
	}
	else {
		[mapView.userLocation setTitle:@"I am here"];
	}
	return pinView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
