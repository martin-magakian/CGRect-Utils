CGRect Utils
==========

CGRect Util help CGRect manipulation and UIView frame manipulation by providing shortcuts


Install
---
1) Copy the .m and .h from the LIB directory of this project into your own.


2)
Look for your file *-Prefix.pch and add the import
	#import "UIView+CGRectUtils.h"

Or manually #import "UIView+CGRectUtils.h" into every class who need CGRect Utils.



Help manipulating UIView's frame:
---

To move a UIView by 10 pixels we used to write:
	myView.frame = CGRectMake(myView.frame.origin.x + 10, myView.frame.origin.y, myView.frame.size.width, myView.frame.size.height);

With CGRect Utils simply use:
	myView.x += 10;


List utils **getter and setter** for UIView:
- myView.x
- myView.y
- myView.width
- myView.height
- myView.size
- myView.height


Or you can use the macro:
	CGRectAddXToView(duck, 10);


Utils macro for UIView:
- CGRectAddXToView(UIView *, pixel)
- CGRectAddYToView(UIView *, pixel)
- CGRectAddWidthToView(UIView *, pixel)
- CGRectAddHeightToView(UIView *, pixel)




Quick accessor for UIVIew frame:
---

To access the height of an UIView we used to write:
	float height = myView.frame.size.height;

With CGRect Utils we can simply use:
	float height = myView.height;

You can assign a new position from the accessor:
	myView.height = 10;

You can assign a new size easly with:
	myView.size = CGSizeMake(30, 30);



Manipulating CGRect:
---

You might also need to manipulate CGRect without the UIImage.
	CGRect rect = ...;
	CGRectSetX(rect, 10); // the "rect" frame is no set with X=10

	CGRectSetWidth(rect, 200); // the "rect" frame is no set with Width=200

Utils macro for CGRect:
CGRectSetPos( CGRect, x, y )
CGRectSetX( CGRect, x ) 
CGRectSetY( CGRect, y )
CGRectSetSize( CGRect, w, h )
CGRectSetWidth( CGRect, w )
CGRectSetHeight( CGRect, h )


Contact
=========
Developed by Martin Magakian
dev.martin.magakian@gmail.com


License
=========
MIT License (MIT)



![githalytics.com alpha](https://cruel-carlota.pagodabox.com/0a72d1392c93920de762d18baee0e641 "githalytics.com")