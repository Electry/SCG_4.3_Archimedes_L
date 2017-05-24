.class public Lcom/lenovo/scg/camera/mode/StrobeMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "StrobeMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;
.implements Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;,
        Lcom/lenovo/scg/camera/mode/StrobeMode$Status;
    }
.end annotation


# static fields
.field private static final CAPTURE_INTERAL:I = 0xfa

.field private static final FORMAT:Ljava/lang/String; = "YUV420_SEMIPLANAR"

.field private static final MAX_IMAGE_NUM:I = 0xa


# instance fields
.field private ContinuousModeIsNormal:Z

.field private final SHOW_WAIT_TEXT_AFTER_CAPTURE_ANI:I

.field private final TAG:Ljava/lang/String;

.field private final UPDATE_INFINITY_FOCUS_MODE:I

.field private gotBitmap:I

.field private mAreaAlphaArray:[I

.field protected mAreaAlphaArraylength:I

.field private mAreaBitmapArray:[Landroid/graphics/Bitmap;

.field private mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mCapturedImage:I

.field private mIsBackToModePreview:Z

.field private mIsFade:Z

.field private mIsInterrupted:Z

.field private mIsLandScapeShooting:Z

.field private mIsMulitiFrameAnimationEnd:Z

.field private mIsTakePictureFinish:Z

.field private mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

.field private mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

.field public mModeHandler:Landroid/os/Handler;

.field private mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

.field private mOrientationWhenCapture:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPictureSize:Landroid/hardware/Camera$Size;

.field private mPreviewSize:Landroid/hardware/Camera$Size;

.field private mProcessImageList:[I

.field private mProcessImageListNumber:I

.field private mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

.field private mSelectViewVisible:Z

.field private mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

.field private mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

.field private mStrobePhotoBufferThreadHandler:Landroid/os/Handler;

.field private mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

.field private mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

.field private mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private mWaitRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private onCancelClick:Landroid/view/View$OnClickListener;

.field private onFadeClick:Landroid/view/View$OnClickListener;

.field private onSaveClick:Landroid/view/View$OnClickListener;

.field private orgPicSize:Ljava/lang/String;

.field private progress:I

.field private tips:Lcom/lenovo/scg/common/ui/RotateTips;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 64
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->ContinuousModeIsNormal:Z

    .line 66
    const-string v0, "StrobeMode"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->TAG:Ljava/lang/String;

    .line 78
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    .line 80
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsTakePictureFinish:Z

    .line 82
    iput v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    .line 88
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectViewVisible:Z

    .line 94
    iput v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->progress:I

    .line 100
    sget-object v0, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    .line 102
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsBackToModePreview:Z

    .line 104
    iput v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArraylength:I

    .line 106
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    .line 108
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    .line 110
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsMulitiFrameAnimationEnd:Z

    .line 126
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z

    .line 128
    iput v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->gotBitmap:I

    .line 130
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsInterrupted:Z

    .line 134
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->SHOW_WAIT_TEXT_AFTER_CAPTURE_ANI:I

    .line 135
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->UPDATE_INFINITY_FOCUS_MODE:I

    .line 137
    new-instance v0, Lcom/lenovo/scg/camera/mode/StrobeMode$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/StrobeMode$1;-><init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Lcom/lenovo/scg/camera/mode/StrobeMode$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/StrobeMode$2;-><init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .line 698
    new-instance v0, Lcom/lenovo/scg/camera/mode/StrobeMode$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/StrobeMode$3;-><init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->onSaveClick:Landroid/view/View$OnClickListener;

    .line 736
    new-instance v0, Lcom/lenovo/scg/camera/mode/StrobeMode$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/StrobeMode$4;-><init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->onCancelClick:Landroid/view/View$OnClickListener;

    .line 752
    new-instance v0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/StrobeMode$5;-><init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->onFadeClick:Landroid/view/View$OnClickListener;

    .line 905
    return-void
.end method

.method private MapIndex(I)I
    .locals 0
    .param p1, "point_index"    # I

    .prologue
    .line 347
    return p1
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/mode/StrobeMode;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # [I

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/StrobeMode;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/mode/StrobeMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/mode/StrobeMode;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/mode/StrobeMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->gotBitmap:I

    return v0
.end method

.method static synthetic access$1208(Lcom/lenovo/scg/camera/mode/StrobeMode;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->gotBitmap:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->gotBitmap:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mWaitRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeMode$Status;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/common/ui/RotateTips;)Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # Lcom/lenovo/scg/common/ui/RotateTips;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/lenovo/scg/camera/mode/StrobeMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/camera/mode/StrobeMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsMulitiFrameAnimationEnd:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/mode/StrobeMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectViewVisible:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/lenovo/scg/camera/mode/StrobeMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectViewVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/StrobeMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageListNumber:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/mode/StrobeMode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageListNumber:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageList:[I

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/camera/mode/StrobeMode;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p1, "x1"    # [I

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageList:[I

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/StrobeMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->requestCache()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    return-object v0
.end method

.method private cancelTargetCache(I)V
    .locals 3
    .param p1, "point_index"    # I

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/StrobeMode;->MapIndex(I)I

    move-result v1

    .line 353
    .local v1, "real_index":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 355
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 356
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method private freeBitmapArray()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 312
    const-string v1, "StrobeMode"

    const-string v2, "freeBitmapArray"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    aput-object v3, v1, v0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v0    # "i":I
    :cond_1
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    .line 322
    return-void
.end method

.method private hideSelectView()Z
    .locals 4

    .prologue
    .line 850
    const-string v2, "StrobeMode"

    const-string v3, "hideSelectView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 852
    .local v0, "exclude":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    .line 853
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectViewVisible:Z

    .line 855
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    if-eqz v2, :cond_0

    .line 856
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->cleanLayout()V

    .line 857
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setVisibility(I)V

    .line 858
    const-string v2, "StrobeMode"

    const-string v3, "hideSelectView View.GONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 860
    .local v1, "vgAll":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 862
    .end local v1    # "vgAll":Landroid/view/ViewGroup;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    .line 863
    const/4 v2, 0x1

    return v2

    .line 851
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method private onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V
    .locals 8
    .param p1, "status"    # Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    .prologue
    const/16 v6, 0xa

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v0, "StrobeMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_5

    .line 247
    iput v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->gotBitmap:I

    .line 248
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->freeBitmapArray()V

    .line 250
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsInterrupted:Z

    if-nez v0, :cond_4

    .line 251
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-nez v0, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->showEnterTips()V

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->startCameraPreview()V

    .line 264
    :cond_3
    :goto_1
    invoke-static {v7}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 265
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsBackToModePreview:Z

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->hideSelectView()Z

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->freeAllBuffer()V

    goto :goto_0

    .line 256
    :cond_4
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-nez v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->CENTER:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    const v2, 0x7f0f01ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_9

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 271
    :cond_6
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsBackToModePreview:Z

    .line 272
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    if-eqz v0, :cond_7

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->startAni(I)V

    .line 277
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setImageOriention(Z)V

    .line 278
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    if-nez v0, :cond_8

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    const-string v5, "YUV420_SEMIPLANAR"

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setEngineParameters(IIIILjava/lang/String;I)V

    .line 285
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 282
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    const-string v5, "YUV420_SEMIPLANAR"

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setEngineParameters(IIIILjava/lang/String;I)V

    goto :goto_2

    .line 286
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->DETECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_a

    .line 287
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsMulitiFrameAnimationEnd:Z

    .line 288
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsTakePictureFinish:Z

    .line 289
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsInterrupted:Z

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->stopCameraPreview()V

    goto/16 :goto_0

    .line 293
    :cond_a
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mWaitRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mWaitRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mWaitRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 298
    :cond_b
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsBackToModePreview:Z

    .line 299
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->showSelectView()Z

    .line 300
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArraylength:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_c

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArraylength:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaBitmapArray:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->drawSelectView(I[Landroid/graphics/Bitmap;[I)V

    goto/16 :goto_0

    .line 303
    :cond_c
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->tips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private requestCache()V
    .locals 3

    .prologue
    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageListNumber:I

    if-ge v0, v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageList:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 328
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->requestTargetCache(I)V

    .line 326
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mProcessImageList:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 330
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->cancelTargetCache(I)V

    goto :goto_1

    .line 333
    :cond_2
    return-void
.end method

.method private requestTargetCache(I)V
    .locals 3
    .param p1, "point_index"    # I

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/StrobeMode;->MapIndex(I)I

    move-result v1

    .line 338
    .local v1, "real_index":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 340
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 341
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    return-void
.end method

.method private showEnterTips()V
    .locals 5

    .prologue
    .line 362
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    const v2, 0x7f0f009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private showSelectView()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 811
    const-string v2, "StrobeMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showSelectView isMulitiFrameAnimationEnd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsMulitiFrameAnimationEnd:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2, v8}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    .line 813
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040065

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    .line 815
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 818
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 819
    .local v1, "vgAll":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit16 v2, v2, 0x3e8

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    div-int/2addr v2, v3

    const/16 v3, 0x6f1

    if-eq v2, v3, :cond_3

    .line 823
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setIs16vs9(Z)V

    .line 828
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 830
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setSelectPointListener(Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;)V

    .line 831
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->onSaveClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setSaveListener(Landroid/view/View$OnClickListener;)V

    .line 832
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->onCancelClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 833
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->onFadeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setFadeListener(Landroid/view/View$OnClickListener;)V

    .line 835
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z

    if-ne v2, v5, :cond_1

    .line 836
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z

    .line 837
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->getButtonFade()Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0203cc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 840
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsMulitiFrameAnimationEnd:Z

    if-eqz v2, :cond_2

    .line 841
    const-string v2, "StrobeMode"

    const-string/jumbo v3, "showSelectView View.VISIBLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setVisibility(I)V

    .line 843
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectViewVisible:Z

    .line 846
    :cond_2
    return v5

    .line 825
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setIs16vs9(Z)V

    goto :goto_0
.end method


# virtual methods
.method public OnAnimationEnd()V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 495
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0xa

    .line 557
    const-string v2, "StrobeMode"

    const-string v3, "enter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 560
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 561
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 562
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 564
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    .line 565
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 566
    .local v0, "exclude":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    .line 568
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V

    .line 570
    new-instance v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    const-string v3, "StrobeMode"

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    .line 571
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->start()V

    .line 572
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setMainThreadHandler(Landroid/os/Handler;)V

    .line 573
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    .line 575
    new-instance v2, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    const-string v3, "StrobeMode"

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    .line 576
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->start()V

    .line 577
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThreadHandler:Landroid/os/Handler;

    .line 579
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getOrientation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/mode/StrobeMode;->setOrientation(I)V

    .line 581
    new-instance v2, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 583
    new-instance v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 584
    .local v1, "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    sget-object v2, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    iput-object v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    .line 585
    iput v6, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    .line 586
    const-wide/16 v2, 0xfa

    iput-wide v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    .line 587
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->ContinuousModeIsNormal:Z

    if-nez v2, :cond_0

    .line 588
    sget-object v2, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;->MODE_FAST:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    iput-object v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->shotMode:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotMode;

    .line 590
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    .line 591
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 592
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    new-instance v3, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;-><init>(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/camera/mode/StrobeMode$1;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->setMulitiFrameCaptureAnimListener(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;)V

    .line 594
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsSupportZSD:Z

    .line 596
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setTools(Lcom/lenovo/scg/camera/ContinuousShotTool;)V

    .line 598
    new-instance v3, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-direct {v3, v4, v2}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .line 600
    new-instance v2, Lcom/lenovo/scg/common/animation/LoadingAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0xfa

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/lenovo/scg/common/animation/LoadingAnimation;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    .line 601
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->setAnimationEndListener(Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;)V

    .line 603
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mFlashStatusSave:Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->isTorch()Z

    move-result v2

    if-nez v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 610
    :cond_1
    sget-boolean v2, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-nez v2, :cond_2

    .line 611
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->showEnterTips()V

    .line 612
    :cond_2
    new-instance v2, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getOrientation()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mWaitRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 614
    return-void

    .line 565
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method protected exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 619
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 620
    const-string v1, "StrobeMode"

    const-string v2, "exit"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->release()V

    .line 622
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->hideSelectView()Z

    .line 626
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->freeBitmapArray()V

    .line 627
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 629
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->cancelMultiFrameAnim()V

    .line 631
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 632
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 634
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    if-eqz v1, :cond_2

    .line 635
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->quit()Z

    .line 636
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    .line 639
    :cond_2
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    .line 641
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    if-eqz v1, :cond_3

    .line 642
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->freeAllBuffer()V

    .line 643
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;->quit()Z

    .line 644
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoBufferThread;

    .line 647
    :cond_3
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoBufferThreadHandler:Landroid/os/Handler;

    .line 649
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V

    .line 651
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 653
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    if-nez v1, :cond_5

    .line 662
    :cond_4
    :goto_0
    return-void

    .line 655
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoController;

    .line 656
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 659
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 661
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    goto :goto_0
.end method

.method public getSavePicType()Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;
    .locals 1

    .prologue
    .line 526
    sget-object v0, Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;->YUV:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    return-object v0
.end method

.method public isBackToModePreview()Z
    .locals 3

    .prologue
    .line 898
    const-string v0, "StrobeMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsBackToModePreview  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsBackToModePreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsBackToModePreview:Z

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x1

    .line 902
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isBackToModePreview()Z

    move-result v0

    goto :goto_0
.end method

.method public isTakePictureFinish()Z
    .locals 2

    .prologue
    .line 694
    const-string v0, "StrobeMode"

    const-string v1, "isTakePictureFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsTakePictureFinish:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 505
    const-string v1, "StrobeMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBackPressed mIsBackToModePreview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsBackToModePreview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsBackToModePreview:Z

    if-eqz v1, :cond_1

    .line 512
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsMulitiFrameAnimationEnd:Z

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 514
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    .line 520
    :cond_0
    :goto_0
    return v0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->exit()V

    .line 520
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 431
    const-string v0, "StrobeMode"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_1

    .line 435
    sget-object v0, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    .line 436
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_2

    .line 441
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsMulitiFrameAnimationEnd:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->cancelMultiFrameAnim()V

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->exit()V

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 7
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 386
    const-string v2, "StrobeMode"

    const-string/jumbo v3, "onPictureTaken"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-eq v2, v3, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v5

    .line 391
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsInterrupted:Z

    if-eqz v2, :cond_3

    .line 392
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v2, :cond_2

    .line 393
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->stopTakePicture()V

    .line 395
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->aniStop()V

    .line 396
    sget-object v2, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->DETECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    .line 397
    sget-object v2, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    goto :goto_0

    .line 401
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    .line 402
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->nextAni()V

    .line 404
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 405
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 406
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 409
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "developer_setting_strobe_debug_key"

    invoke-virtual {v2, v3, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 411
    const-string v2, "/mnt/sdcard/DCIM/"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->saveFile([BLjava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_4
    iget v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 417
    iput v6, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    .line 418
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 419
    .local v1, "msg2":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 420
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 421
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    sget-object v2, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->DETECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    goto :goto_0
.end method

.method public onPictureTakenTimeOut()V
    .locals 4

    .prologue
    .line 932
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPictureTakenTimeOut()V

    .line 934
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 935
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    monitor-enter v1

    .line 936
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 937
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getLostFrame()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onPictureTaken([BLandroid/location/Location;)Z

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    :goto_1
    return-void

    .line 941
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mContext:Landroid/content/Context;

    const-string v1, "ContinuousShot Failed!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 944
    :cond_2
    sget-object v0, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    goto :goto_1
.end method

.method public onPointClicked(IZ)V
    .locals 5
    .param p1, "pointIndex"    # I
    .param p2, "bSelected"    # Z

    .prologue
    const/16 v4, 0x100

    .line 869
    const-string v1, "StrobeMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pointIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bSelected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 871
    if-eqz p2, :cond_1

    .line 872
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    aget v1, v1, p1

    if-eq v1, v4, :cond_0

    .line 873
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    aput v4, v1, p1

    .line 883
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z

    if-eqz v1, :cond_2

    .line 884
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->onFadeClick:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 893
    :cond_0
    :goto_1
    return-void

    .line 877
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    const/4 v2, 0x0

    aput v2, v1, p1

    goto :goto_0

    .line 886
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 887
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 888
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 889
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 890
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 452
    const-string v1, "StrobeMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume mStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 455
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v2, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v1, v2, :cond_0

    .line 456
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 457
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    .line 458
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 463
    .end local v0    # "exclude":[I
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    .line 461
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    goto :goto_0

    .line 456
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public onShutterButtonClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 370
    const-string v1, "StrobeMode"

    const-string/jumbo v2, "onShutterButtonClick"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 380
    :goto_0
    return v0

    .line 372
    :cond_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsTakePictureFinish:Z

    .line 373
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsInterrupted:Z

    if-eqz v1, :cond_1

    .line 374
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsInterrupted:Z

    .line 375
    iput v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCapturedImage:I

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mOrientationWhenCapture:I

    .line 379
    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 468
    const-string v0, "StrobeMode"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mCaptureTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_1

    .line 474
    sget-object v0, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/StrobeMode$Status;)V

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 477
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 481
    const-string v1, "StrobeMode"

    const-string/jumbo v2, "resume"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v2, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-eq v1, v2, :cond_0

    .line 484
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 485
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    .line 489
    .end local v0    # "exclude":[I
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/controller/StrobeModeController;->clearUIScreen([I)V

    goto :goto_0

    .line 484
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/4 v3, 0x1

    .line 532
    const-string v0, "StrobeMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setOrientation(I)V

    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mOrientationWhenCapture:I

    if-eq p1, v0, :cond_2

    .line 537
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsInterrupted:Z

    .line 540
    :cond_2
    if-eqz p1, :cond_3

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 541
    :cond_3
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    .line 548
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStatus:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/StrobeMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/StrobeMode$Status;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThread:Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/strobephoto/StrobePhotoEngineThread;->setImageOriention(Z)V

    .line 550
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setOrientation(I)V

    goto :goto_0

    .line 544
    :cond_5
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    if-eq v0, v3, :cond_0

    .line 545
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsLandScapeShooting:Z

    goto :goto_1
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 501
    return-void
.end method
