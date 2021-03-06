//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/kguthrie/Projects/RookAndPawn/kami-solver/kami-solver-core/src/main/java/com/rookandpawn/kami/parser/Convoluter.java
//

#include "Color.h"
#include "Convoluter.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "KamiImage.h"
#include "com/google/common/collect/Lists.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/Comparator.h"
#include "java/util/List.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface ComRookandpawnKamiParserConvoluter ()

+ (short *)getClosestNonNullPixelWithInt:(jint)row
                                     withInt:(jint)column
                                     withInt:(jint)height
                                     withInt:(jint)width
                         withRPUIColorArray2:(jshort***)pixels;

@end

inline jint** ComRookandpawnKamiParserConvoluter_get_nonNullSearchPath();
static jint(* ComRookandpawnKamiParserConvoluter_nonNullSearchPath)[2];
inline jint ComRookandpawnKamiParserConvoluter_get_nonNullSearchPathLength();
static jint ComRookandpawnKamiParserConvoluter_nonNullSearchPathLength;

__attribute__((unused)) static short *ComRookandpawnKamiParserConvoluter_getClosestNonNullPixelWithInt_withInt_withInt_withInt_withRPUIColorArray2_(jint row, jint column, jint height, jint width, jshort*** pixels);

@interface ComRookandpawnKamiParserConvoluter_$Lambda$1 : NSObject < JavaUtilComparator >

- (jint)compareWithId:(IOSIntArray *)a1
               withId:(IOSIntArray *)a2;

@end

J2OBJC_STATIC_INIT(ComRookandpawnKamiParserConvoluter_$Lambda$1)

inline ComRookandpawnKamiParserConvoluter_$Lambda$1 *ComRookandpawnKamiParserConvoluter_$Lambda$1_get_instance();
static ComRookandpawnKamiParserConvoluter_$Lambda$1 *ComRookandpawnKamiParserConvoluter_$Lambda$1_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComRookandpawnKamiParserConvoluter_$Lambda$1, instance, ComRookandpawnKamiParserConvoluter_$Lambda$1 *)

__attribute__((unused)) static void ComRookandpawnKamiParserConvoluter_$Lambda$1_init(ComRookandpawnKamiParserConvoluter_$Lambda$1 *self);

__attribute__((unused)) static ComRookandpawnKamiParserConvoluter_$Lambda$1 *new_ComRookandpawnKamiParserConvoluter_$Lambda$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static ComRookandpawnKamiParserConvoluter_$Lambda$1 *create_ComRookandpawnKamiParserConvoluter_$Lambda$1_init();

J2OBJC_INITIALIZED_DEFN(ComRookandpawnKamiParserConvoluter)

@implementation ComRookandpawnKamiParserConvoluter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComRookandpawnKamiParserConvoluter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (short *)getClosestNonNullPixelWithInt:(jint)row
                                     withInt:(jint)column
                                     withInt:(jint)height
                                     withInt:(jint)width
                         withRPUIColorArray2:(jshort***)pixels {
  return ComRookandpawnKamiParserConvoluter_getClosestNonNullPixelWithInt_withInt_withInt_withInt_withRPUIColorArray2_(row, column, height, width, pixels);
}

+ (RPUIKamiImage *)convoluteWithRPUIKamiImage:(RPUIKamiImage *)original
                              withShortArray2:(IOSObjectArray *)kernel {
  return ComRookandpawnKamiParserConvoluter_convoluteWithRPUIKamiImage_withShortArray2_(original, kernel);
}

+ (RPUIKamiImage *)convoluteWithRPUIKamiImage:(RPUIKamiImage *)original
                             withDoubleArray2:(IOSObjectArray *)kernel {
  return ComRookandpawnKamiParserConvoluter_convoluteWithRPUIKamiImage_withDoubleArray2_(original, kernel);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LRPUIColor;", 0xa, 0, 1, -1, -1, -1, -1 },
    { NULL, "LRPUIKamiImage;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LRPUIKamiImage;", 0x9, 2, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getClosestNonNullPixelWithInt:withInt:withInt:withInt:withRPUIColorArray2:);
  methods[2].selector = @selector(convoluteWithRPUIKamiImage:withShortArray2:);
  methods[3].selector = @selector(convoluteWithRPUIKamiImage:withDoubleArray2:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "nonNullSearchPath", "[[I", .constantValue.asLong = 0, 0x1a, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "getClosestNonNullPixel", "IIII[[LRPUIColor;", "convolute", "LRPUIKamiImage;[[S", "LRPUIKamiImage;[[D", &ComRookandpawnKamiParserConvoluter_nonNullSearchPath };
  static const J2ObjcClassInfo _ComRookandpawnKamiParserConvoluter = { "Convoluter", "com.rookandpawn.kami.parser", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_ComRookandpawnKamiParserConvoluter;
}

+ (void)initialize {
  if (self == [ComRookandpawnKamiParserConvoluter class]) {
    {
      jint maxDist = 10;
      id<JavaUtilList> dists = ComGoogleCommonCollectLists_newArrayList();
      for (jint row = -maxDist; row <= maxDist; row++) {
        for (jint col = -maxDist; col <= maxDist; col++) {
          [((id<JavaUtilList>) nil_chk(dists)) addWithId:[IOSIntArray newArrayWithInts:(jint[]){ row, col } count:2]];
        }
      }
      JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(dists, JreLoadStatic(ComRookandpawnKamiParserConvoluter_$Lambda$1, instance));
      ComRookandpawnKamiParserConvoluter_nonNullSearchPathLength = [dists size];
      ComRookandpawnKamiParserConvoluter_nonNullSearchPath = calloc(ComRookandpawnKamiParserConvoluter_nonNullSearchPathLength, sizeof(int[2]));
      
      for (jint e = 0; e < ComRookandpawnKamiParserConvoluter_nonNullSearchPathLength; e++) {
        IOSIntArray *entry = [dists getWithInt:e];
        ComRookandpawnKamiParserConvoluter_nonNullSearchPath[e][0] = [entry intAtIndex:0];
        ComRookandpawnKamiParserConvoluter_nonNullSearchPath[e][1] = [entry intAtIndex:1];
      }
    }
    J2OBJC_SET_INITIALIZED(ComRookandpawnKamiParserConvoluter)
  }
}

@end

void ComRookandpawnKamiParserConvoluter_init(ComRookandpawnKamiParserConvoluter *self) {
  NSObject_init(self);
}

ComRookandpawnKamiParserConvoluter *new_ComRookandpawnKamiParserConvoluter_init() {
  J2OBJC_NEW_IMPL(ComRookandpawnKamiParserConvoluter, init)
}

ComRookandpawnKamiParserConvoluter *create_ComRookandpawnKamiParserConvoluter_init() {
  J2OBJC_CREATE_IMPL(ComRookandpawnKamiParserConvoluter, init)
}

short* ComRookandpawnKamiParserConvoluter_getClosestNonNullPixelWithInt_withInt_withInt_withInt_withRPUIColorArray2_(jint row, jint column, jint height, jint width, jshort*** pixels) {
  ComRookandpawnKamiParserConvoluter_initialize();
  {
    for (int i = 0; i < ComRookandpawnKamiParserConvoluter_nonNullSearchPathLength; i++) {
      jint r = row + ComRookandpawnKamiParserConvoluter_nonNullSearchPath[i][0];
      jint c = column + ComRookandpawnKamiParserConvoluter_nonNullSearchPath[i][1];
      
      if (r >= height) {
        r = height - 1;
      }
      if (r < 0) {
        r = 0;
      }
      if (c >= width) {
        c = width - 1;
      }
      if (c < 0) {
        c = 0;
      }
      
      short* result = pixels[r][c];
      
      if (result) {
        return result;
      }
    }
  }
  @throw new_JavaLangRuntimeException_initWithNSString_(@"No non-null pixel within 10 pixels");
}

RPUIKamiImage *ComRookandpawnKamiParserConvoluter_convoluteWithRPUIKamiImage_withShortArray2_(RPUIKamiImage *original, IOSObjectArray *rawKernel) {
  ComRookandpawnKamiParserConvoluter_initialize();
  jint kernelHeight = (rawKernel)->size_;
  jint kernelWidth = ((IOSShortArray *)IOSObjectArray_Get(rawKernel, 0))->size_;
  jint height = [((RPUIKamiImage *) nil_chk(original)) getHeight];
  jint width = [original getWidth];
  jint borderHeight = (kernelHeight / 2);
  jint borderWidth = (kernelWidth / 2);
  RPUIKamiImage *result = new_RPUIKamiImage_initWithInt_withInt_(width, height);
  
  jshort** kernel = calloc(kernelHeight, sizeof(jshort*));
  
  for (jint kr = 0; kr < kernelHeight; kr++) {
    
    IOSShortArray* kRow = [rawKernel objectAtIndex:kr];
    
    jshort* kNewRow = calloc(kernelWidth, sizeof(jshort));
    
    kernel[kr] = kNewRow;
    
    for (jint kc = 0; kc < kernelWidth; kc++) {
      kNewRow[kc] = [kRow shortAtIndex:kc];
    }
  }
  
  jshort*** source = calloc(height, sizeof(jshort**));
  
  for (jint row = 0; row < height; row++) {
    
    jshort** sRow = calloc(width, sizeof(jshort*));
    source[row] = sRow;
    
    for (jint col = 0; col < width; col++) {
      
      RPUIColor *pixel = [original getPixelWithInt:row withInt:col];
      
      if (pixel) {
        sRow[col] = calloc(3, sizeof(jshort));
        sRow[col][0] = [pixel getR];
        sRow[col][1] = [pixel getG];
        sRow[col][2] = [pixel getB];
      }
      else {
        sRow[col] = nil;
      }
    }
  }
  
  for (jint tColumn = 0; tColumn < width; tColumn++) {
    for (jint tRow = 0; tRow < height; tRow++) {
      @autoreleasepool {
        if (!source[tRow][tColumn]) {
          continue;
        }
        jshort r = 0;
        jshort g = 0;
        jshort b = 0;
        for (jint kColumn = 0; kColumn < kernelWidth; kColumn++) {
          jint sColumn = tColumn + kColumn - borderWidth;
          sColumn = sColumn < 0 ? 0 : sColumn;
          sColumn = sColumn >= width ? width - 1 : sColumn;
          for (jint kRow = 0; kRow < kernelHeight; kRow++) {
            jint sRow = tRow + kRow - borderHeight;
            sRow = sRow < 0 ? 0 : sRow;
            sRow = sRow >= height ? height - 1 : sRow;
            short* pixel = ComRookandpawnKamiParserConvoluter_getClosestNonNullPixelWithInt_withInt_withInt_withInt_withRPUIColorArray2_(sRow, sColumn, height, width, source);
            jshort k = kernel[kRow][kColumn];
            r += pixel[0] * k;
            g += pixel[1] * k;
            b += pixel[2] * k;
          }
        }
        [result setPixelWithInt:tRow withInt:tColumn withRPUIColor:new_RPUIColor_initWithInt_withInt_withInt_(r, g, b)];
      }
    }
  }
  
  
  for (jint kr = 0; kr < kernelHeight; kr++) {
    free(kernel[kr]);
  }
  
  free(kernel);
  
  for (jint row = 0; row < height; row++) {
    for (jint col = 0; col < width; col++) {
      if (source[row][col]) {
        free(source[row][col]);
      }
    }
    free(source[row]);
  }
  
  free(source);
  
  return result;
}

RPUIKamiImage *ComRookandpawnKamiParserConvoluter_convoluteWithRPUIKamiImage_withDoubleArray2_(RPUIKamiImage *original, IOSObjectArray *rawKernel) {
  ComRookandpawnKamiParserConvoluter_initialize();
  jint kernelHeight = (rawKernel)->size_;
  jint kernelWidth = ((IOSDoubleArray *)IOSObjectArray_Get(rawKernel, 0))->size_;
  jint height = [((RPUIKamiImage *) nil_chk(original)) getHeight];
  jint width = [original getWidth];
  jint borderHeight = (kernelHeight / 2);
  jint borderWidth = (kernelWidth / 2);
  RPUIKamiImage *result = new_RPUIKamiImage_initWithInt_withInt_(width, height);
  
  jdouble** kernel = calloc(kernelHeight, sizeof(jdouble*));
  
  for (jint kr = 0; kr < kernelHeight; kr++) {
    
    IOSDoubleArray* kRow = [rawKernel objectAtIndex:kr];
    
    jdouble* kNewRow = calloc(kernelWidth, sizeof(jdouble));
    
    kernel[kr] = kNewRow;
    
    for (jint kc = 0; kc < kernelWidth; kc++) {
      kNewRow[kc] = [kRow doubleAtIndex:kc];
    }
  }
  
  jshort*** source = calloc(height, sizeof(jshort**));
  
  for (jint row = 0; row < height; row++) {
    
    jshort** sRow = calloc(width, sizeof(jshort*));
    source[row] = sRow;
    
    for (jint col = 0; col < width; col++) {
      
      RPUIColor *pixel = [original getPixelWithInt:row withInt:col];
      
      if (pixel) {
        sRow[col] = calloc(3, sizeof(jshort));
        sRow[col][0] = [pixel getR];
        sRow[col][1] = [pixel getG];
        sRow[col][2] = [pixel getB];
      }
      else {
        sRow[col] = nil;
      }
    }
  }
  
  for (jint tColumn = 0; tColumn < width; tColumn++) {
    for (jint tRow = 0; tRow < height; tRow++) {
      @autoreleasepool {
        if (!source[tRow][tColumn]) {
          continue;
        }
        double r = 0;
        double g = 0;
        double b = 0;
        for (jint kColumn = 0; kColumn < kernelWidth; kColumn++) {
          jint sColumn = tColumn + kColumn - borderWidth;
          sColumn = sColumn < 0 ? 0 : sColumn;
          sColumn = sColumn >= width ? width - 1 : sColumn;
          for (jint kRow = 0; kRow < kernelHeight; kRow++) {
            jint sRow = tRow + kRow - borderHeight;
            sRow = sRow < 0 ? 0 : sRow;
            sRow = sRow >= height ? height - 1 : sRow;
            short* pixel = ComRookandpawnKamiParserConvoluter_getClosestNonNullPixelWithInt_withInt_withInt_withInt_withRPUIColorArray2_(sRow, sColumn, height, width, source);
            jdouble k = kernel[kRow][kColumn];
            r += k * pixel[0];
            g += k * pixel[1];
            b += k * pixel[2];
          }
        }
        [result setPixelWithInt:tRow withInt:tColumn withRPUIColor:new_RPUIColor_initWithInt_withInt_withInt_(r, g, b)];
      }
    }
  }
  
  for (jint kr = 0; kr < kernelHeight; kr++) {
    free(kernel[kr]);
  }
  
  free(kernel);
  
  for (jint row = 0; row < height; row++) {
    for (jint col = 0; col < width; col++) {
      if (source[row][col]) {
        free(source[row][col]);
      }
    }
    free(source[row]);
  }
  
  free(source);
  
  return result;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComRookandpawnKamiParserConvoluter)

J2OBJC_INITIALIZED_DEFN(ComRookandpawnKamiParserConvoluter_$Lambda$1)

@implementation ComRookandpawnKamiParserConvoluter_$Lambda$1

- (jint)compareWithId:(IOSIntArray *)a1
               withId:(IOSIntArray *)a2 {
  return (IOSIntArray_Get(nil_chk(a1), 0) * IOSIntArray_Get(a1, 0) + IOSIntArray_Get(a1, 1) * IOSIntArray_Get(a1, 1)) - (IOSIntArray_Get(nil_chk(a2), 0) * IOSIntArray_Get(a2, 0) + IOSIntArray_Get(a2, 1) * IOSIntArray_Get(a2, 1));
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (void)initialize {
  if (self == [ComRookandpawnKamiParserConvoluter_$Lambda$1 class]) {
    ComRookandpawnKamiParserConvoluter_$Lambda$1_instance = new_ComRookandpawnKamiParserConvoluter_$Lambda$1_init();
    J2OBJC_SET_INITIALIZED(ComRookandpawnKamiParserConvoluter_$Lambda$1)
  }
}

@end

void ComRookandpawnKamiParserConvoluter_$Lambda$1_init(ComRookandpawnKamiParserConvoluter_$Lambda$1 *self) {
  NSObject_init(self);
}

ComRookandpawnKamiParserConvoluter_$Lambda$1 *new_ComRookandpawnKamiParserConvoluter_$Lambda$1_init() {
  J2OBJC_NEW_IMPL(ComRookandpawnKamiParserConvoluter_$Lambda$1, init)
}

ComRookandpawnKamiParserConvoluter_$Lambda$1 *create_ComRookandpawnKamiParserConvoluter_$Lambda$1_init() {
  J2OBJC_CREATE_IMPL(ComRookandpawnKamiParserConvoluter_$Lambda$1, init)
}
