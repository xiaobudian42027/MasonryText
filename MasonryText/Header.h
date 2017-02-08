//
//  Header.h
//  MasonryText
//
//  Created by xiaorenwu on 2017/2/8.
//  Copyright © 2017年 xiaorenwu. All rights reserved.
//

#ifndef Header_h
#define Header_h


#ifndef YYSYNTH_DYNAMIC_PROPERTY_OBJECT
#define YYSYNTH_DYNAMIC_PROPERTY_OBJECT(_getter_,_setter_,_association_,_type_)\
-(void)_setter_:(_type_)object{\
  [self willChangeValueForKey:@#_getter_];\
  objc_setAssociatedObject(self,_cmd,object,OBJC_ASSOCIATION_##_association_);\
  [self didChangeValueForKey:@#_getter_];\
}\
-(_type_)_getter_{\
  return objc_getAssociatedObject(self,@selector(_setter_:))\
}
#endif



#endif /* Header_h */
