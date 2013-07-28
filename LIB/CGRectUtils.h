//
//  CGRectUtil.h
//  CGRectUtil
//
//  Created by martin on 28/07/2013.
//  Copyright (c) 2013 doduck.com. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CGRectSetPos( r, x, y )     CGRectMake( x, y, r.size.width, r.size.height )
#define CGRectSetX( r, x )          CGRectMake( x, r.origin.y, r.size.width, r.size.height )
#define CGRectSetY( r, y )          CGRectMake( r.origin.x, y, r.size.width, r.size.height )
#define CGRectSetSize( r, w, h )    CGRectMake( r.origin.x, r.origin.y, w, h )
#define CGRectSetWidth( r, w )      CGRectMake( r.origin.x, r.origin.y, w, r.size.height )
#define CGRectSetHeight( r, h )     CGRectMake( r.origin.x, r.origin.y, r.size.width, h )

#define CGRectAddXToView( v, addX )         v.frame = CGRectMake( v.frame.origin.x+addX, v.frame.origin.y, v.frame.size.width, v.frame.size.height )
#define CGRectAddYToView( v, addY )          v.frame = CGRectMake( v.frame.origin.x, v.frame.origin.y+addY, v.frame.size.width, v.frame.size.height )
#define CGRectAddWidthToView( v, addWidth )   v.frame = CGRectMake( v.frame.origin.x, v.frame.origin.y, v.frame.size.width+addWidth, v.frame.size.height )
#define CGRectAddHeightToView( v, addHeight )  v.frame = CGRectMake( v.frame.origin.x, v.frame.origin.y, v.frame.size.width, v.frame.size.height+addHeight )

#define CGRectAddXToFrame( r, addX )         CGRectMake( r.origin.x+addX, r.origin.y, r.size.width, r.size.height )
#define CGRectAddYToFrame( r, addY )         CGRectMake( r.origin.x, r.origin.y+addY, r.size.width, r.size.height )
#define CGRectAddWidthToFrame( r, addWidth )  CGRectMake( r.origin.x, r.origin.y, r.size.width+addWidth, r.size.height )
#define CGRectAddHeightToFrame( r, addHeight )  CGRectMake( r.origin.x, r.origin.y, r.size.width, r.size.height+addHeight )