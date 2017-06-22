//
//  DisplayView.h
//  MapKit
//
//  Created by fis on 03/08/13.
//  Copyright (c) 2013 fis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>
@interface DisplayView : NSObject<MKAnnotation>
{
    CLLocationCoordinate2D coordinate;
	NSString *title;
	NSString *subtitle;
}
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;


@end
