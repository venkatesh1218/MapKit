//
//  FirstViewController.h
//  MapKit
//
//  Created by fis on 03/08/13.
//  Copyright (c) 2013 fis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "DisplayView.h"
@interface FirstViewController : UIViewController<MKMapViewDelegate>
{
    MKMapView *mapView;
}
@end
