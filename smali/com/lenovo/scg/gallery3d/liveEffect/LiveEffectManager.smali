.class public Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;
.super Ljava/lang/Object;
.source "LiveEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$1;,
        Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    }
.end annotation


# static fields
.field public static final COLORFILTER_MODE_BLUE:I = 0x1

.field public static final COLORFILTER_MODE_GREEN:I = 0x3

.field public static final COLORFILTER_MODE_PINK:I = 0x4

.field public static final COLORFILTER_MODE_RED:I = 0x0

.field public static final COLORFILTER_MODE_YELLOW:I = 0x2

.field public static final COMIC_MODE_1:I = 0x0

.field public static final COMIC_MODE_2:I = 0x1

.field public static final COMIC_MODE_3:I = 0x2

.field public static final COMIC_MODE_4:I = 0x3

.field public static final COMIC_MODE_5:I = 0x4

.field public static final DATASIZE_16_9:I = 0xbdd80

.field public static final DATASIZE_16_9_K860:I = 0x151800

.field public static final DATASIZE_4_3:I = 0xafc80

.field public static final DATASIZE_4_3_K860:I = 0xfd200

.field public static final DATASIZE_5_3:I = 0x8ca00

.field private static final EFFECT_PRM_IDX_PICTURE_FILE_MAX:I = 0x16

.field public static final GLASS_MODE_1:I = 0x0

.field public static final GLASS_MODE_2:I = 0x1

.field public static final GLASS_MODE_3:I = 0x2

.field public static final GLASS_MODE_4:I = 0x3

.field public static final GLASS_MODE_5:I = 0x4

.field public static final HIGHT_16_9:I = 0x21c

.field public static final HIGHT_16_9_K860:I = 0x2d0

.field public static final HIGHT_4_3:I = 0x258

.field public static final HIGHT_4_3_K860:I = 0x2d0

.field public static final HIGHT_5_3:I = 0x1e0

.field public static final KALEIDOSCOPE_MODE_1:I = 0x0

.field public static final KALEIDOSCOPE_MODE_2:I = 0x1

.field public static final KALEIDOSCOPE_MODE_3:I = 0x2

.field public static final KALEIDOSCOPE_MODE_4:I = 0x3

.field public static final KALEIDOSCOPE_MODE_5:I = 0x4

.field public static final MAKEUP_SIZE:I = 0x6fbb4

.field private static final MAX_NUM_EFFECT_PARAM_PICTURE_FILE:I = 0x5

.field private static final MAX_NUM_PRETTY_EFFECT_PARAM_PICTURE_FILE:I = 0xf

.field public static final MORPHO_OK:I = 0x0

.field public static final NATURE_MODE:I = 0x0

.field public static final NOSTALGY_MODE_ANTIQUE:I = 0x0

.field public static final NOSTALGY_MODE_CLASSIC:I = 0x1

.field public static final NOSTALGY_MODE_COLD:I = 0x2

.field public static final NOSTALGY_MODE_MEMORY:I = 0x4

.field public static final NOSTALGY_MODE_WARM:I = 0x3

.field public static final OUTLINE_SIZE:I = 0x135b00

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_BACKLIGHT:I = 0x7

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_BAKE:I = 0x8

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_COLORFILTER:I = 0xe

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_COMIC:I = 0xf

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_DEFOCUS:I = 0xb

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_FISHEYE1:I = 0x0

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_GLASS:I = 0x12

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_KALEIDOSCOPE:I = 0x11

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_LIGHTEN:I = 0x3

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_MIRROR:I = 0x6

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_NATURE:I = 0x13

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_NEGATIVE:I = 0x4

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_NOSTALGY:I = 0xc

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_OVEREXPOSE:I = 0x2

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_PENCIL:I = 0x5

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_PINFOCUS:I = 0xa

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_POSTER:I = 0x10

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_PRETTY:I = 0x15

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_SELECTCOLOR:I = 0x14

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_SOLARIZE:I = 0x9

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_VIVID:I = 0x1

.field private static final PICTURE_FILE_EFFECT_PRM_IDX_WARM:I = 0xd

.field public static final POSTER_MODE_1:I = 0x0

.field public static final POSTER_MODE_2:I = 0x1

.field public static final POSTER_MODE_3:I = 0x2

.field public static final POSTER_MODE_4:I = 0x3

.field public static final POSTER_MODE_5:I = 0x4

.field public static final PRETTY_MODE_HIGH:I = 0x2

.field public static final PRETTY_MODE_LOW:I = 0x0

.field public static final PRETTY_MODE_MIDDLE:I = 0x1

.field public static final PREVIEW_DATA_FORMAT_PICTUREFILE:I = -0x1

.field public static final PREVIEW_DATA_FORMAT_YUV420P:I = 0x0

.field public static final PREVIEW_DATA_FORMAT_YUV420SP:I = 0x1

.field public static final PREVIEW_DATA_FORMAT_YVU420SP:I = 0x2

.field public static final PRM_COLORFILTER_BLUE:[I

.field public static final PRM_COLORFILTER_GREEN:[I

.field public static final PRM_COLORFILTER_PINK:[I

.field public static final PRM_COLORFILTER_RED:[I

.field public static final PRM_COLORFILTER_YELLOW:[I

.field public static final PRM_COMIC_1:[I

.field public static final PRM_COMIC_2:[I

.field public static final PRM_COMIC_3:[I

.field public static final PRM_COMIC_4:[I

.field public static final PRM_COMIC_5:[I

.field public static final PRM_GLASS_1:[I

.field public static final PRM_GLASS_2:[I

.field public static final PRM_GLASS_3:[I

.field public static final PRM_GLASS_4:[I

.field public static final PRM_GLASS_5:[I

.field public static final PRM_IDX_BACKLIGHT_GAIN:I = 0x0

.field public static final PRM_IDX_BAKE_RADIUS_IN:I = 0x0

.field public static final PRM_IDX_BAKE_RADIUS_OUT:I = 0x1

.field public static final PRM_IDX_DEFOCUS_STRENGTH:I = 0x0

.field public static final PRM_IDX_FISHEYE1_DEFORM_RATIO:I = 0x0

.field public static final PRM_IDX_LIGHTEN_STRENGTH:I = 0x0

.field public static final PRM_IDX_MIRROR_ORIENTATION:I = 0x0

.field public static final PRM_IDX_NEGATIVE_REVERSE_ALL:I = 0x3

.field public static final PRM_IDX_NEGATIVE_REVERSE_BLUE:I = 0x2

.field public static final PRM_IDX_NEGATIVE_REVERSE_GREEN:I = 0x1

.field public static final PRM_IDX_NEGATIVE_REVERSE_RED:I = 0x0

.field public static final PRM_IDX_OVEREXPOSE_GAIN:I = 0x1

.field public static final PRM_IDX_OVEREXPOSE_THRES:I = 0x0

.field public static final PRM_IDX_PENCIL_LINEDENSITY:I = 0x1

.field public static final PRM_IDX_PENCIL_TOUCH:I = 0x0

.field public static final PRM_IDX_PENCIL_TOUCH_VALUE_HORIZONTAL:I = 0x0

.field public static final PRM_IDX_PENCIL_TOUCH_VALUE_HORIZONTAL_TO_EDGEL:I = 0x2

.field public static final PRM_IDX_PENCIL_TOUCH_VALUE_RDIAGONAL_LEFT_UP:I = 0x3

.field public static final PRM_IDX_PENCIL_TOUCH_VALUE_RDIAGONAL_RIGHT_UP:I = 0x4

.field public static final PRM_IDX_PENCIL_TOUCH_VALUE_VERTICAL:I = 0x1

.field public static final PRM_IDX_PENCIL_TOUCH_VALUE_VERTICAL_TO_EDGE:I = 0x5

.field public static final PRM_IDX_PINFOCUS_AREA:I = 0x0

.field public static final PRM_IDX_SOLARIZE_THRES:I = 0x0

.field public static final PRM_IDX_VIVID_STRENGTH:I = 0x0

.field public static final PRM_KALEIDOSCOPE_1:[D

.field public static final PRM_KALEIDOSCOPE_2:[D

.field public static final PRM_KALEIDOSCOPE_3:[D

.field public static final PRM_KALEIDOSCOPE_4:[D

.field public static final PRM_KALEIDOSCOPE_5:[D

.field public static final PRM_NATURE:[I

.field public static final PRM_NOSTALGY_ANTIQUE:[I

.field public static final PRM_NOSTALGY_CLASSIC:[I

.field public static final PRM_NOSTALGY_COLD:[I

.field public static final PRM_NOSTALGY_MEMORY:[I

.field public static final PRM_NOSTALGY_WARM:[I

.field public static final PRM_POSTER_1:[I

.field public static final PRM_POSTER_2:[I

.field public static final PRM_POSTER_3:[I

.field public static final PRM_POSTER_4:[I

.field public static final PRM_POSTER_5:[I

.field public static final PRM_PRETTY_HIGH:[I

.field public static final PRM_PRETTY_LOW:[I

.field public static final PRM_PRETTY_MIDDLE:[I

.field public static final PRM_SELECTCOLOR:[I

.field public static final SELECTCOLOR_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LiveEffectManager"

.field public static final WIDTH_16_9:I = 0x3c0

.field public static final WIDTH_16_9_K860:I = 0x500

.field public static final WIDTH_4_3:I = 0x320

.field public static final WIDTH_4_3_K860:I = 0x3c0

.field public static final WIDTH_5_3:I = 0x320


# instance fields
.field private isPreviewProcess:Z

.field private mArgb8888:[I

.field private mColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

.field private mCurrentCameraType:I

.field private mCurrentFilterId:I

.field private mEffect:Ljava/lang/String;

.field private mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

.field private mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

.field private mFaceBeautyRectValue:[I

.field private mFaceRect:Landroid/graphics/Rect;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mIsFB:Z

.field private mMakeupData:[B

.field private mOutlineData:[B

.field private mPictureFileEffectParam:[[I

.field private mPictureFileEffectParamIndex:I

.field private mPrettyEffectParam:[I

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewOutData:[B

.field private mPreviewWidth:I

.field private pictureEffectTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/16 v4, 0xb

    const/4 v3, 0x2

    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 68
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_LOW:[I

    .line 70
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_MIDDLE:[I

    .line 72
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_HIGH:[I

    .line 303
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_ANTIQUE:[I

    .line 305
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_CLASSIC:[I

    .line 307
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_COLD:[I

    .line 309
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_WARM:[I

    .line 311
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_MEMORY:[I

    .line 314
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_RED:[I

    .line 316
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_BLUE:[I

    .line 318
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_YELLOW:[I

    .line 320
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_GREEN:[I

    .line 322
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_PINK:[I

    .line 325
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_1:[I

    .line 327
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_2:[I

    .line 329
    new-array v0, v1, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_3:[I

    .line 331
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_4:[I

    .line 333
    new-array v0, v1, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_5:[I

    .line 336
    new-array v0, v2, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_1:[I

    .line 338
    new-array v0, v2, [I

    fill-array-data v0, :array_13

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_2:[I

    .line 340
    new-array v0, v2, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_3:[I

    .line 342
    new-array v0, v2, [I

    fill-array-data v0, :array_15

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_4:[I

    .line 344
    new-array v0, v2, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_5:[I

    .line 347
    new-array v0, v1, [D

    fill-array-data v0, :array_17

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_1:[D

    .line 349
    new-array v0, v1, [D

    fill-array-data v0, :array_18

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_2:[D

    .line 351
    new-array v0, v1, [D

    fill-array-data v0, :array_19

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_3:[D

    .line 353
    new-array v0, v1, [D

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_4:[D

    .line 355
    new-array v0, v1, [D

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_5:[D

    .line 358
    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_1:[I

    .line 360
    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_2:[I

    .line 362
    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_3:[I

    .line 364
    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_4:[I

    .line 366
    new-array v0, v3, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_5:[I

    .line 369
    new-array v0, v5, [I

    fill-array-data v0, :array_21

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NATURE:[I

    .line 372
    new-array v0, v5, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_SELECTCOLOR:[I

    return-void

    .line 68
    :array_0
    .array-data 4
        0xff
        0xff
        0xff
        0x64
        0x50
        0x3c
        0x3c
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 70
    :array_1
    .array-data 4
        0xff
        0xff
        0xff
        0x8c
        0x64
        0x4b
        0x50
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 72
    :array_2
    .array-data 4
        0xff
        0xff
        0xff
        0xb4
        0x78
        0x5a
        0x64
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 303
    :array_3
    .array-data 4
        0x85
        0x100
        0x100
        0x0
    .end array-data

    .line 305
    :array_4
    .array-data 4
        0x87
        0x5a
        0x100
        0x0
    .end array-data

    .line 307
    :array_5
    .array-data 4
        0x5f
        0x100
        0x0
        0x0
    .end array-data

    .line 309
    :array_6
    .array-data 4
        0xba
        0x4e
        0xd2
        0x0
    .end array-data

    .line 311
    :array_7
    .array-data 4
        0x85
        0x100
        0x100
        0x1
    .end array-data

    .line 314
    :array_8
    .array-data 4
        0xff
        0x3e
        0x3e
    .end array-data

    .line 316
    :array_9
    .array-data 4
        0x7c
        0xff
        0xff
    .end array-data

    .line 318
    :array_a
    .array-data 4
        0xff
        0xff
        0x64
    .end array-data

    .line 320
    :array_b
    .array-data 4
        0x7c
        0xff
        0x7c
    .end array-data

    .line 322
    :array_c
    .array-data 4
        0xff
        0x6e
        0x98
    .end array-data

    .line 325
    :array_d
    .array-data 4
        0xff
        0x100
        0x64
    .end array-data

    .line 327
    :array_e
    .array-data 4
        0x0
        0x8e
        0x0
    .end array-data

    .line 329
    :array_f
    .array-data 4
        0x0
        0x8e
        0x64
    .end array-data

    .line 331
    :array_10
    .array-data 4
        0x0
        0x1
        0x0
    .end array-data

    .line 333
    :array_11
    .array-data 4
        0xff
        0x100
        0x16
    .end array-data

    .line 336
    :array_12
    .array-data 4
        0x5a
        0x79
        0x8a
        0x100
    .end array-data

    .line 338
    :array_13
    .array-data 4
        0x5a
        0x79
        0x8a
        0x0
    .end array-data

    .line 340
    :array_14
    .array-data 4
        0x5a
        0x4c
        0xf9
        0x0
    .end array-data

    .line 342
    :array_15
    .array-data 4
        0xb3
        0x50
        0xf9
        0xc2
    .end array-data

    .line 344
    :array_16
    .array-data 4
        0x100
        0x6b
        0xf9
        0x7
    .end array-data

    .line 347
    :array_17
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
    .end array-data

    .line 349
    :array_18
    .array-data 8
        0x3fd05a1cac083127L    # 0.2555
        0x3fbbb98c7e28240bL    # 0.1083
        0x3fc3333333333333L    # 0.15
    .end array-data

    .line 351
    :array_19
    .array-data 8
        0x3fe45aee631f8a09L    # 0.6361
        0x3fb119ce075f6fd2L    # 0.0668
        0x3fc3333333333333L    # 0.15
    .end array-data

    .line 353
    :array_1a
    .array-data 8
        0x3fdf1c432ca57a78L    # 0.4861
        0x3fe3c779a6b50b0fL    # 0.6181
        0x3fc3333333333333L    # 0.15
    .end array-data

    .line 355
    :array_1b
    .array-data 8
        0x3fdf1c432ca57a78L    # 0.4861
        0x3fe3c779a6b50b0fL    # 0.6181
        0x3fc3333333333333L    # 0.15
    .end array-data

    .line 358
    :array_1c
    .array-data 4
        0x1b
        0x29
    .end array-data

    .line 360
    :array_1d
    .array-data 4
        0x7
        0xd
    .end array-data

    .line 362
    :array_1e
    .array-data 4
        0x12
        0xd
    .end array-data

    .line 364
    :array_1f
    .array-data 4
        0x20
        0x5a
    .end array-data

    .line 366
    :array_20
    .array-data 4
        0x26
        0x9f
    .end array-data

    .line 369
    :array_21
    .array-data 4
        0x40
        0x16
        0x11
        0x2f
        0x4a
    .end array-data

    .line 372
    :array_22
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isPreview"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mIsFB:Z

    .line 392
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mArgb8888:[I

    .line 408
    const-string v0, "ES_NONE"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffect:Ljava/lang/String;

    .line 410
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewOutData:[B

    .line 412
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mOutlineData:[B

    .line 414
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mMakeupData:[B

    .line 416
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 424
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->isPreviewProcess:Z

    .line 1039
    new-instance v0, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    .line 1043
    const/16 v0, 0x16

    const/4 v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    .line 1045
    return-void
.end method

.method private setEffect(Ljava/lang/String;)V
    .locals 0
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffect:Ljava/lang/String;

    .line 1087
    return-void
.end method

.method private setImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1073
    iput p1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    .line 1074
    iput p2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageHeight:I

    .line 1075
    return-void
.end method

.method private setPictureFileParamIndex(Ljava/lang/String;)V
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setEffect(Ljava/lang/String;)V

    .line 845
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->toValueOfString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;

    move-result-object v0

    .line 847
    .local v0, "currentEffect":Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$1;->$SwitchMap$com$lenovo$scg$gallery3d$liveEffect$LiveEffectManager$Effect:[I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager$Effect;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 938
    const/16 v1, 0x16

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    .line 939
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and mPictureFileEffectParamIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    return-void

    .line 850
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 854
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 858
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 862
    :pswitch_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 866
    :pswitch_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 870
    :pswitch_5
    const/4 v1, 0x5

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 874
    :pswitch_6
    const/4 v1, 0x6

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 878
    :pswitch_7
    const/4 v1, 0x7

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 882
    :pswitch_8
    const/16 v1, 0x8

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 886
    :pswitch_9
    const/16 v1, 0x9

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 890
    :pswitch_a
    const/16 v1, 0xa

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 894
    :pswitch_b
    const/16 v1, 0xb

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 898
    :pswitch_c
    const/16 v1, 0xc

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 902
    :pswitch_d
    const/16 v1, 0xd

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 906
    :pswitch_e
    const/16 v1, 0xe

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 910
    :pswitch_f
    const/16 v1, 0xf

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 914
    :pswitch_10
    const/16 v1, 0x10

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 918
    :pswitch_11
    const/16 v1, 0x11

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 922
    :pswitch_12
    const/16 v1, 0x12

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 926
    :pswitch_13
    const/16 v1, 0x13

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 930
    :pswitch_14
    const/16 v1, 0x14

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 934
    :pswitch_15
    const/16 v1, 0x15

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    goto :goto_0

    .line 847
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private setPictureSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1070
    return-void
.end method


# virtual methods
.method public applyLiveEffectToPictureFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "bitmapIn"    # Landroid/graphics/Bitmap;
    .param p2, "bitmapOut"    # Landroid/graphics/Bitmap;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mCurrentCameraType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->doEffectPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->pictureEffectTime:I

    .line 968
    const-string v0, "LiveEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pictureEffectTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->pictureEffectTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->pictureEffectTime:I

    return v0
.end method

.method public applyLiveEffectToPictureFile(Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bitmapIn"    # Landroid/graphics/Bitmap;
    .param p5, "bitmapOut"    # Landroid/graphics/Bitmap;
    .param p6, "currentCameraType"    # I

    .prologue
    const/4 v2, -0x1

    .line 973
    const/4 v0, -0x1

    .line 975
    .local v0, "ret":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->initialize(Ljava/lang/String;III)I

    move-result v0

    .line 976
    const-string v1, "ES_SELECTCOLOR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ES_NATURE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileParamIndex(Ljava/lang/String;)V

    .line 978
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileModeParam(II)V

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    invoke-virtual {v1, p4, p5, p6}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->doEffectPicture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->pictureEffectTime:I

    .line 982
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->finish(I)I

    move-result v0

    .line 984
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyEffectToPicture pictureEffectTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->pictureEffectTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 989
    const-string v1, "LiveEffectManager"

    const-string v2, "LiveEffectManager clear"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mIsFB:Z

    if-eqz v1, :cond_7

    .line 992
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewOutData:[B

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewOutData:[B

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mOutlineData:[B

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mOutlineData:[B

    .line 996
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mMakeupData:[B

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mMakeupData:[B

    .line 998
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    if-eqz v1, :cond_3

    .line 999
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v1}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Finish()V

    .line 1000
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 1003
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mFaceRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mFaceRect:Landroid/graphics/Rect;

    .line 1005
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mFaceBeautyRectValue:[I

    if-eqz v1, :cond_5

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mFaceBeautyRectValue:[I

    .line 1007
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mIsFB:Z

    .line 1025
    :cond_6
    :goto_0
    return-void

    .line 1010
    :cond_7
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->isPreviewProcess:Z

    if-eqz v1, :cond_a

    .line 1011
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->finish()V

    .line 1012
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    if-eqz v1, :cond_8

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    .line 1014
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    if-eqz v1, :cond_9

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    .line 1024
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    if-eqz v1, :cond_6

    check-cast v0, [[I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    goto :goto_0

    .line 1021
    :cond_a
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    if-eqz v1, :cond_9

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    goto :goto_1
.end method

.method public finilizePictureFileParam()V
    .locals 2

    .prologue
    .line 543
    const-string v0, "LiveEffectManager"

    const-string v1, "before mEffectNativeGallery.finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mArgb8888:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mArgb8888:[I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->finish(I)I

    .line 547
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 550
    const-string v0, "LiveEffectManager"

    const-string/jumbo v1, "preview process quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->isPreviewProcess:Z

    .line 554
    const-string v0, "LiveEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->finish(I)I

    .line 557
    return-void
.end method

.method public getCurrentFilterId()I
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mCurrentFilterId:I

    return v0
.end method

.method public initialize(Ljava/lang/String;I)V
    .locals 5
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "cameraType"    # I

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "ret":I
    iput p2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mCurrentCameraType:I

    .line 498
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileParamIndex(Ljava/lang/String;)V

    .line 499
    iget v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewHeight:I

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setImageSize(II)V

    .line 502
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->finish(I)I

    .line 503
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize before mEffectNative.initialize mPreviewWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and mPreviewHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " effect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewHeight:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewFormat:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->initialize(Ljava/lang/String;III)I

    move-result v0

    .line 507
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and effect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public initializePictureFileParam(Ljava/lang/String;III)V
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "cameraType"    # I

    .prologue
    .line 952
    const/4 v0, -0x1

    .line 953
    .local v0, "ret":I
    iput p4, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mCurrentCameraType:I

    .line 954
    invoke-direct {p0, p2, p3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureSize(II)V

    .line 955
    invoke-direct {p0, p2, p3}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setImageSize(II)V

    .line 956
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->setPictureFileParamIndex(Ljava/lang/String;)V

    .line 957
    mul-int v1, p2, p3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mArgb8888:[I

    .line 958
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->initialize(Ljava/lang/String;III)I

    move-result v0

    .line 959
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializePictureFileParam ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void
.end method

.method public setFBEngineCameraMode(Z)V
    .locals 0
    .param p1, "bFront"    # Z

    .prologue
    .line 516
    return-void
.end method

.method public setFBMode(Z)V
    .locals 0
    .param p1, "isFb"    # Z

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mIsFB:Z

    .line 512
    return-void
.end method

.method public setFaceDirection(I)V
    .locals 0
    .param p1, "ori"    # I

    .prologue
    .line 1079
    return-void
.end method

.method public setFilter(I)V
    .locals 0
    .param p1, "filterId"    # I

    .prologue
    .line 1082
    iput p1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mCurrentFilterId:I

    .line 1083
    return-void
.end method

.method public setOrientation(Ljava/lang/String;II)I
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "orientation"    # I
    .param p3, "cpuType"    # I

    .prologue
    .line 945
    const/4 v0, -0x1

    .line 946
    .local v0, "ret":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->setOrientation(Ljava/lang/String;II)I

    move-result v0

    .line 947
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LiveEffectManager after mEffectNative.setOrientation ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return v0
.end method

.method public setPictureFileModeParam(II)V
    .locals 11
    .param p1, "mode"    # I
    .param p2, "flag"    # I

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 561
    iget v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPictureFileEffectParamIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v1, 0x15

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    if-ne v1, v2, :cond_3

    .line 568
    packed-switch p1, :pswitch_data_0

    .line 591
    :cond_2
    if-ltz p2, :cond_0

    .line 592
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffect:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    invoke-virtual {v1, v2, v3, v6, p2}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->setEffectParam(Ljava/lang/String;[III)I

    goto :goto_0

    .line 570
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_LOW:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 571
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_LOW:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 572
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPrettyEffectParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 577
    .end local v0    # "i":I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_MIDDLE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 578
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_MIDDLE:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 579
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPrettyEffectParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 584
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_HIGH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_PRETTY_HIGH:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 586
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPrettyEffectParam = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPrettyEffectParam:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 599
    .end local v0    # "i":I
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    packed-switch v1, :pswitch_data_1

    .line 800
    :cond_4
    :goto_4
    :pswitch_3
    if-gez p2, :cond_5

    .line 801
    const-string v1, "LiveEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0327 setPictureFileModeParam flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffect:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3, v6, p2}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->setEffectParam(Ljava/lang/String;[III)I

    goto/16 :goto_0

    .line 601
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    goto :goto_4

    .line 603
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_ANTIQUE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 604
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_ANTIQUE:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 608
    .end local v0    # "i":I
    :pswitch_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_CLASSIC:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 609
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_CLASSIC:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 613
    .end local v0    # "i":I
    :pswitch_7
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_COLD:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 614
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_COLD:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 618
    .end local v0    # "i":I
    :pswitch_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_WARM:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 619
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_WARM:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 623
    .end local v0    # "i":I
    :pswitch_9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_MEMORY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 624
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NOSTALGY_MEMORY:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 630
    .end local v0    # "i":I
    :pswitch_a
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_4

    .line 632
    :pswitch_b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_RED:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 633
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_RED:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 637
    .end local v0    # "i":I
    :pswitch_c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_BLUE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 638
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_BLUE:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 642
    .end local v0    # "i":I
    :pswitch_d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_YELLOW:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 643
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_YELLOW:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 647
    .end local v0    # "i":I
    :pswitch_e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_GREEN:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 648
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_GREEN:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 652
    .end local v0    # "i":I
    :pswitch_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_e
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_PINK:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 653
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COLORFILTER_PINK:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 659
    .end local v0    # "i":I
    :pswitch_10
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_4

    .line 661
    :pswitch_11
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_1:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 662
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_1:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 665
    .end local v0    # "i":I
    :pswitch_12
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_2:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 666
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_2:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 669
    .end local v0    # "i":I
    :pswitch_13
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_3:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 670
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_3:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 674
    .end local v0    # "i":I
    :pswitch_14
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_4:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 675
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_4:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 679
    .end local v0    # "i":I
    :pswitch_15
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_13
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 680
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_COMIC_5:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 686
    .end local v0    # "i":I
    :pswitch_16
    packed-switch p1, :pswitch_data_5

    goto/16 :goto_4

    .line 688
    :pswitch_17
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_14
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_1:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 689
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_1:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 692
    .end local v0    # "i":I
    :pswitch_18
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_15
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_2:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 693
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_2:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 696
    .end local v0    # "i":I
    :pswitch_19
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_16
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_3:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 697
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_3:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 701
    .end local v0    # "i":I
    :pswitch_1a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_17
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_4:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 702
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_4:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 706
    .end local v0    # "i":I
    :pswitch_1b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_18
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 707
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_POSTER_5:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 713
    .end local v0    # "i":I
    :pswitch_1c
    packed-switch p1, :pswitch_data_6

    goto/16 :goto_4

    .line 716
    :pswitch_1d
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_1:[D

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v6

    .line 717
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageHeight:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_1:[D

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v7

    .line 718
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_1:[D

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v8

    .line 719
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    aput v6, v1, v9

    .line 720
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    aput v6, v1, v10

    goto/16 :goto_4

    .line 724
    :pswitch_1e
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_2:[D

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v6

    .line 725
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageHeight:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_2:[D

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v7

    .line 726
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_2:[D

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v8

    .line 727
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    const/16 v2, 0xf

    aput v2, v1, v9

    .line 728
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    aput v7, v1, v10

    goto/16 :goto_4

    .line 732
    :pswitch_1f
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_3:[D

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v6

    .line 733
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageHeight:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_3:[D

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v7

    .line 734
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_3:[D

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v8

    .line 735
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    const/16 v2, 0xf

    aput v2, v1, v9

    .line 736
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    aput v8, v1, v10

    goto/16 :goto_4

    .line 741
    :pswitch_20
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_4:[D

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v6

    .line 742
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageHeight:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_4:[D

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v7

    .line 743
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_4:[D

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v8

    .line 744
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    const/16 v2, 0xf

    aput v2, v1, v9

    .line 745
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    aput v9, v1, v10

    goto/16 :goto_4

    .line 750
    :pswitch_21
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_5:[D

    aget-wide v4, v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v6

    .line 751
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageHeight:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_5:[D

    aget-wide v4, v4, v7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v7

    .line 752
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mImageWidth:I

    int-to-double v2, v2

    sget-object v4, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_KALEIDOSCOPE_5:[D

    aget-wide v4, v4, v8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v8

    .line 753
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    const/16 v2, 0xf8

    aput v2, v1, v9

    .line 754
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    aput v10, v1, v10

    goto/16 :goto_4

    .line 762
    :pswitch_22
    packed-switch p1, :pswitch_data_7

    goto/16 :goto_4

    .line 765
    :pswitch_23
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_19
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_1:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 766
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_1:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 769
    .end local v0    # "i":I
    :pswitch_24
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_2:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 770
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_2:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 773
    .end local v0    # "i":I
    :pswitch_25
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1b
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_3:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 774
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_3:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 778
    .end local v0    # "i":I
    :pswitch_26
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1c
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_4:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 779
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_4:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 783
    .end local v0    # "i":I
    :pswitch_27
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 784
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_GLASS_5:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 783
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 790
    .end local v0    # "i":I
    :pswitch_28
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1e
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NATURE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 791
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_NATURE:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 790
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 795
    .end local v0    # "i":I
    :pswitch_29
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1f
    sget-object v1, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_SELECTCOLOR:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 796
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->PRM_SELECTCOLOR:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 804
    .end local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffect:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3, v6, p2}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->setEffectParam(Ljava/lang/String;[III)I

    goto/16 :goto_0

    .line 568
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 599
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_29
    .end packed-switch

    .line 601
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 630
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 659
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 686
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 713
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 762
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
    .end packed-switch
.end method

.method public setPictureFileValueParam(III)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I
    .param p3, "flag"    # I

    .prologue
    .line 810
    iget v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 839
    :goto_0
    return-void

    .line 813
    :cond_0
    const-string v0, "LiveEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " effect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and mPictureFileEffectParamIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    packed-switch v0, :pswitch_data_0

    .line 833
    :goto_1
    if-gez p3, :cond_1

    .line 834
    const-string v0, "LiveEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0327 setPictureFileValueParam flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNativeGallery:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffect:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2, p1, p3}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->setEffectParam(Ljava/lang/String;[III)I

    goto :goto_0

    .line 829
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v0, v0, v1

    aput p2, v0, p1

    goto :goto_1

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffectNative:Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mEffect:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParam:[[I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPictureFileEffectParamIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2, p1, p3}, Lcom/lenovo/scg/gallery3d/liveEffect/LeLiveEffectJNI;->setEffectParam(Ljava/lang/String;[III)I

    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPreviewSize(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "previewFormat"    # I

    .prologue
    .line 1048
    iput p1, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewWidth:I

    .line 1049
    iput p2, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewHeight:I

    .line 1053
    packed-switch p3, :pswitch_data_0

    .line 1066
    :goto_0
    return-void

    .line 1055
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewFormat:I

    goto :goto_0

    .line 1059
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewFormat:I

    goto :goto_0

    .line 1063
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/liveEffect/LiveEffectManager;->mPreviewFormat:I

    goto :goto_0

    .line 1053
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
