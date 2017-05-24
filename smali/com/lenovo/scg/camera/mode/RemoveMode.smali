.class public Lcom/lenovo/scg/camera/mode/RemoveMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "RemoveMode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;
.implements Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RemoveMode"

.field public static mPreviewHeight:I

.field public static mPreviewWidth:I

.field public static mScreenHeight:I

.field public static mScreenWidth:I


# instance fields
.field private final QUIT:I

.field private final SAVE:I

.field private final SAVEDATA:I

.field private final UPDATE:I

.field private isInExecute:Z

.field private mActualPictureHeight:I

.field private mActualPictureWidth:I

.field private mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mCancelRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mContext:Landroid/content/Context;

.field private mDetectedObjNum:I

.field private mDetectedSaveObjNum:I

.field private mEraseLabelList:[I

.field private mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCount:I

.field private mIsCancelled:Z

.field private mIsTakePictureFinish:Z

.field private mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

.field private mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

.field mLiuMinghandler:Landroid/os/Handler;

.field mLiuMinghandlerThread:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

.field private mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

.field private mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

.field private mMargin:I

.field private mMaskArgb:[I

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

.field private mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

.field private mObjectRectArray:[Landroid/graphics/Rect;

.field private mOrientation:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPath:Ljava/lang/String;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mPosX:I

.field private mPosY:I

.field private mPreviewArgb:[I

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewView:Landroid/widget/ImageView;

.field private mRatio:I

.field private mRemoveView:Landroid/widget/RelativeLayout;

.field private mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mSaveArray:[I

.field private mSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mScreenHeight43:I

.field private mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 188
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 92
    new-instance v0, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-direct {v0}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    .line 94
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    .line 99
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 109
    iput v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    .line 111
    iput v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFiles:Ljava/util/List;

    .line 167
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveArray:[I

    .line 169
    new-array v0, v4, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mObjectRectArray:[Landroid/graphics/Rect;

    .line 483
    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->SAVEDATA:I

    .line 485
    iput v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->UPDATE:I

    .line 487
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->SAVE:I

    .line 489
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->QUIT:I

    .line 823
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsTakePictureFinish:Z

    .line 824
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsCancelled:Z

    .line 189
    const-string v0, "RemoveMode"

    const-string v1, "RemoveMode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/RemoveMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/RemoveMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->save()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/lenovo/scg/camera/mode/RemoveMode;Lcom/lenovo/scg/common/ui/RotateTips;)Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;
    .param p1, "x1"    # Lcom/lenovo/scg/common/ui/RotateTips;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/RemoveMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/RemoveMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/morpho/core/ObjectEraser2App;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/mode/RemoveMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsTakePictureFinish:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/RemoveMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsCancelled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/mode/RemoveMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsCancelled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/RemoveMode;)Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/mode/RemoveMode;Lcom/lenovo/scg/common/ui/RotateTips;)Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;
    .param p1, "x1"    # Lcom/lenovo/scg/common/ui/RotateTips;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/RemoveMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RemoveMode;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private save()V
    .locals 23

    .prologue
    .line 870
    const-string v2, "RemoveMode"

    const-string/jumbo v4, "save"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    invoke-virtual {v2}, Lcom/morpho/core/ObjectEraser2App;->getFailureCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    const-string v2, "RemoveMode"

    const-string v4, "just save first one"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v21, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct/range {v21 .. v21}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 874
    .local v21, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    new-instance v4, Lcom/lenovo/scg/camera/mode/RemoveMode$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lenovo/scg/camera/mode/RemoveMode$7;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 884
    const-string v2, "RemoveMode"

    const-string/jumbo v4, "save end"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :goto_0
    return-void

    .line 889
    .end local v21    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    :cond_0
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveArray:[I

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveArray:[I

    const/4 v4, 0x0

    aput v4, v2, v19

    .line 889
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 893
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    mul-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->allocateBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 895
    .local v20, "mOutputByteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveArray:[I

    move-object/from16 v0, v20

    invoke-virtual {v2, v4, v0}, Lcom/morpho/core/ObjectEraser2App;->prepareForSave([ILjava/nio/ByteBuffer;)V

    .line 897
    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveArray:[I

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    .line 898
    const-string v2, "RemoveMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSaveArray[index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveArray:[I

    aget v5, v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveArray:[I

    aget v2, v2, v19

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v3

    .line 903
    .local v3, "jpeg":[B
    if-nez v3, :cond_3

    .line 904
    const-string v2, "RemoveMode"

    const-string v4, "jpeg == null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v3    # "jpeg":[B
    :cond_2
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 910
    .restart local v3    # "jpeg":[B
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    mul-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v7, v2, [B

    .line 911
    .local v7, "tmpBuffer":[B
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_5

    .line 912
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    sget v4, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    .line 913
    array-length v2, v7

    new-array v11, v2, [B

    .line 914
    .local v11, "newYUVData":[B
    new-instance v6, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;

    invoke-direct {v6}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;-><init>()V

    .line 915
    .local v6, "former":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    invoke-virtual {v6}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Init()Z

    .line 916
    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    sget-object v10, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ROTATE_270:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->RotateYUVBuffer([BIILcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;[B)Z

    .line 917
    invoke-virtual {v6}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Finish()V

    .line 918
    move-object v7, v11

    .line 923
    .end local v6    # "former":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    .end local v11    # "newYUVData":[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    move/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Lcom/morpho/core/ObjectEraser2App;->addBigImage([BI)I

    goto :goto_3

    .line 920
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    sget v14, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    move/from16 v16, v0

    move-object v13, v3

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    goto :goto_4

    .line 927
    .end local v3    # "jpeg":[B
    .end local v7    # "tmpBuffer":[B
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v0, v2, [B

    move-object/from16 v18, v0

    .line 928
    .local v18, "dataFromBuffer":[B
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 929
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    move-object/from16 v0, v18

    invoke-static {v0, v2, v4}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->YUV2JPEG([BII)[B

    move-result-object v22

    .line 931
    .local v22, "result":[B
    new-instance v21, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct/range {v21 .. v21}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 932
    .restart local v21    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 935
    const/16 v18, 0x0

    .line 936
    invoke-static/range {v20 .. v20}, Lcom/morpho/utils/nio/NativeMemoryAllocator;->freeBuffer(Ljava/nio/ByteBuffer;)I

    .line 937
    const/16 v20, 0x0

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    new-instance v4, Lcom/lenovo/scg/camera/mode/RemoveMode$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lenovo/scg/camera/mode/RemoveMode$8;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 666
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/DCIM/preview.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 667
    .local v1, "fos":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    .line 668
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 669
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 670
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 674
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 675
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public OnAnimationEnd()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "RemoveMode"

    const-string v1, "OnAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 459
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 195
    const-string v8, "RemoveMode"

    const-string v9, "enter"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 199
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mObjectRectArray:[Landroid/graphics/Rect;

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 200
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mObjectRectArray:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 204
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 205
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 206
    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v8, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenWidth:I

    .line 207
    iget v8, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v8, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight:I

    .line 209
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mScreenWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mScreenHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mContext:Landroid/content/Context;

    .line 214
    new-instance v8, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-direct {v8}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;-><init>()V

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    .line 215
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v8}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    .line 217
    const/4 v8, 0x0

    iput v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFrameCount:I

    .line 219
    new-instance v8, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {v8, v9}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 220
    new-instance v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 221
    .local v0, "csp":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    const/16 v8, 0xa

    iput v8, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    .line 222
    const-wide/16 v8, 0x12c

    iput-wide v8, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    .line 223
    sget-object v8, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    iput-object v8, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    .line 224
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    .line 225
    sget-object v8, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;->NOT_AUTO_PLAY:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    iput-object v8, v0, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->am:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    .line 226
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 227
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v8, p0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->setMulitiFrameCaptureAnimListener(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;)V

    .line 229
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v8

    iput-boolean v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsSupportZSD:Z

    .line 231
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v8, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    .line 232
    const/4 v8, 0x3

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    .line 233
    .local v1, "exclude":[I
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v8, v1}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->clearUIScreen([I)V

    .line 235
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 236
    .local v4, "mPictureSize":Landroid/hardware/Camera$Size;
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    iput v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    .line 237
    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    iput v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    .line 238
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPictureWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPictureHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 242
    .local v5, "mPreviewSize":Landroid/hardware/Camera$Size;
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    sput v8, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewWidth:I

    .line 243
    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    sput v8, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewHeight:I

    .line 244
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPreviewWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPreviewHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRatio:I

    .line 248
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRatio = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRatio:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iput v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    .line 250
    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    iput v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    .line 252
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f04015e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    .line 253
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    const v9, 0x7f10054d

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;

    .line 254
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100827

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    .line 255
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    invoke-virtual {v8, p0}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->setId(I)V

    .line 257
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    const v9, 0x7f100828

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 258
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getOrientation()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 259
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    const v9, 0x7f1002ce

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 260
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getOrientation()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 261
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v9, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v8, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    const-string v9, "liuming"

    invoke-direct {v8, p0, v9}, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandlerThread:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    .line 265
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandlerThread:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->start()V

    .line 266
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandlerThread:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    invoke-virtual {v9}, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandlerThread:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    invoke-direct {v8, v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandler:Landroid/os/Handler;

    .line 268
    new-instance v9, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v8, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-direct {v9, v10, v8}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V

    iput-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .line 270
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v9, Lcom/lenovo/scg/camera/mode/RemoveMode$1;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/camera/mode/RemoveMode$1;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v9, Lcom/lenovo/scg/camera/mode/RemoveMode$2;

    invoke-direct {v9, p0}, Lcom/lenovo/scg/camera/mode/RemoveMode$2;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->init()V

    .line 292
    new-instance v8, Lcom/lenovo/scg/common/animation/LoadingAnimation;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v10

    const/16 v11, 0xa

    const/16 v12, 0x12c

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/lenovo/scg/common/animation/LoadingAnimation;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    .line 294
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v8, p0}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->setAnimationEndListener(Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;)V

    .line 296
    iget v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 298
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mActualPictureWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v8, "RemoveMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mActualPictureHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFlashStatusSave:Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->isTorch()Z

    move-result v8

    if-nez v8, :cond_1

    .line 303
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v8

    const-string/jumbo v9, "off"

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 308
    :cond_1
    new-instance v8, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v11}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getOrientation()I

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 309
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v9, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getOrientation()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 310
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0064

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;I)V

    .line 313
    return-void

    .line 232
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public execute()V
    .locals 13

    .prologue
    .line 580
    const-string v2, "RemoveMode"

    const-string v3, "execute"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->isInExecute:Z

    .line 583
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->stopCameraPreview()V

    .line 585
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    if-nez v2, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    invoke-virtual {v2}, Lcom/morpho/core/ObjectEraser2App;->detect()I

    .line 591
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    invoke-virtual {v2}, Lcom/morpho/core/ObjectEraser2App;->getFailureCode()I

    move-result v2

    if-nez v2, :cond_4

    .line 592
    const-string v2, "RemoveMode"

    const-string/jumbo v3, "success"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mObjectRectArray:[Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/morpho/core/ObjectEraser2App;->getNumberOfFoundObjects([Landroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mDetectedObjNum:I

    .line 598
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDetectedObjNum  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mDetectedObjNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    if-eqz v2, :cond_2

    .line 602
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    .line 605
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mDetectedObjNum:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    .line 606
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mDetectedObjNum:I

    if-gt v12, v2, :cond_3

    .line 607
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    const/4 v3, 0x1

    aput v3, v2, v12

    .line 606
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 610
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    invoke-virtual {v2, v3}, Lcom/morpho/core/ObjectEraser2App;->setArrayOfErasedObjectFlags([I)I

    .line 612
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/morpho/core/ObjectEraser2App;->getPreviewImage(II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewArgb:[I

    .line 618
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewArgb:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v7, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 621
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/camera/mode/RemoveMode$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/mode/RemoveMode$3;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 632
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->showRemoveSuccess()V

    .line 661
    .end local v12    # "i":I
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->isInExecute:Z

    goto/16 :goto_0

    .line 634
    :cond_4
    const-string v2, "RemoveMode"

    const-string v3, "fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Init()Z

    .line 636
    const/4 v1, 0x0

    .line 637
    .local v1, "YUVData":[B
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_6

    .line 638
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v1

    .end local v1    # "YUVData":[B
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    sget v4, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZ)[B

    move-result-object v1

    .line 639
    .restart local v1    # "YUVData":[B
    array-length v2, v1

    new-array v5, v2, [B

    .line 640
    .local v5, "newYUVData":[B
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;-><init>()V

    .line 641
    .local v0, "former":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Init()Z

    .line 642
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    sget-object v4, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ROTATE_270:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->RotateYUVBuffer([BIILcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;[B)Z

    .line 643
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Finish()V

    .line 644
    move-object v1, v5

    .line 649
    .end local v0    # "former":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    .end local v5    # "newYUVData":[B
    :goto_3
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    iget v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    sget-object v10, Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;->LE_CLR_FMT_YVU420sp:Lcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;

    iget-object v11, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    move-object v7, v1

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->ImageConvertToScaleBitmap([BIILcom/lenovo/scg/LeCSCJNI/LeCSColorFormat$ColorFormat;Landroid/graphics/Bitmap;)V

    .line 650
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeColorConvert:Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;

    invoke-virtual {v2}, Lcom/lenovo/scg/LeCSCJNI/LeColorConvert;->Finish()V

    .line 651
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->showRemoveFail()V

    goto :goto_2

    .line 646
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    sget v10, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZ)[B

    move-result-object v1

    goto :goto_3
.end method

.method protected exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 317
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 318
    const-string v1, "RemoveMode"

    const-string v2, "exit"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v1, "RemoveMode exit"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-virtual {v1}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    .line 324
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLeImageDecoder:Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandlerThread:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    if-eqz v1, :cond_2

    .line 333
    const-string v1, "RemoveMode"

    const-string/jumbo v2, "stop mLiuMinghandlerThread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandlerThread:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 335
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandlerThread:Lcom/lenovo/scg/camera/mode/RemoveMode$LiuMingHandlerThread;

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v1, :cond_3

    .line 339
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->uninit()Z

    .line 340
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 343
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearCurrentMode()V

    .line 345
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 346
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 347
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 352
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewArgb:[I

    .line 353
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMaskArgb:[I

    .line 355
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    if-eqz v1, :cond_5

    .line 356
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    invoke-virtual {v1}, Lcom/morpho/core/ObjectEraser2App;->finish()V

    .line 357
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    .line 360
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->release()V

    .line 363
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    if-nez v1, :cond_7

    .line 370
    :cond_6
    :goto_0
    return-void

    .line 365
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoController;

    .line 366
    .local v0, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    .line 369
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 8

    .prologue
    .line 566
    const-string v0, "RemoveMode"

    const-string v1, "init begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    invoke-virtual {v0}, Lcom/morpho/core/ObjectEraser2App;->finish()V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    .line 572
    :cond_0
    new-instance v0, Lcom/morpho/core/ObjectEraser2App;

    invoke-direct {v0}, Lcom/morpho/core/ObjectEraser2App;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    .line 573
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureWidth:I

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPictureHeight:I

    sget v3, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewWidth:I

    sget v4, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewHeight:I

    const-string v5, "YUV420_SEMIPLANAR"

    const/16 v6, 0xa

    sget-object v7, Lcom/morpho/core/ObjectEraser2App$Pass;->TWO:Lcom/morpho/core/ObjectEraser2App$Pass;

    invoke-virtual/range {v0 .. v7}, Lcom/morpho/core/ObjectEraser2App;->initialize(IIIILjava/lang/String;ILcom/morpho/core/ObjectEraser2App$Pass;)I

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    invoke-virtual {v0}, Lcom/morpho/core/ObjectEraser2App;->start()V

    .line 576
    const-string v0, "RemoveMode"

    const-string v1, "init end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method

.method public isBackToModePreview()Z
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTakePictureFinish()Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsTakePictureFinish:Z

    return v0
.end method

.method public onAnimEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v0, "RemoveMode"

    const-string/jumbo v1, "onAnimEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 181
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 470
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->isAniRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v0

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->reset()V

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->exit()V

    .line 480
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "RemoveMode"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->restoreFlash()V

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->cancelMultiFrameAnim()V

    .line 413
    :cond_0
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x1

    .line 438
    const-string v1, "RemoveMode"

    const-string/jumbo v2, "onPictureTaken"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 441
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 442
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFrameCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFrameCount:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 443
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->nextAni()V

    .line 448
    const-string v1, "RemoveMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrameCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFrameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFrameCount:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 450
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsTakePictureFinish:Z

    .line 452
    :cond_0
    return v4
.end method

.method public onPictureTakenTimeOut()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    .line 833
    const-string v2, "RemoveMode"

    const-string/jumbo v3, "onPictureTakenTimeOut"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFrameCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsTakePictureFinish:Z

    .line 837
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFrameCount:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 838
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/camera/mode/RemoveMode$6;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/mode/RemoveMode$6;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 866
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getOrientation()I

    move-result v12

    .line 847
    .local v12, "orientation":I
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v1, 0x0

    .line 850
    .local v1, "YUVData":[B
    if-eqz v12, :cond_1

    const/16 v2, 0xb4

    if-ne v12, v2, :cond_2

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getLostFrame()[B

    move-result-object v1

    .end local v1    # "YUVData":[B
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    sget v4, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZ)[B

    move-result-object v1

    .line 853
    .restart local v1    # "YUVData":[B
    array-length v2, v1

    new-array v5, v2, [B

    .line 854
    .local v5, "newYUVData":[B
    new-instance v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;

    invoke-direct {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;-><init>()V

    .line 855
    .local v0, "former":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Init()Z

    .line 856
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    sget-object v4, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ROTATE_270:Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->RotateYUVBuffer([BIILcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;[B)Z

    .line 857
    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->Finish()V

    .line 858
    move-object v1, v5

    .line 863
    .end local v0    # "former":Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
    .end local v5    # "newYUVData":[B
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    invoke-virtual {v2, v1}, Lcom/morpho/core/ObjectEraser2App;->addImage([B)I

    .line 864
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->execute()V

    goto :goto_0

    .line 860
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getLostFrame()[B

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v9, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    sget v10, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getScaleYUVData([BIIIZ)[B

    move-result-object v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 422
    const-string v0, "RemoveMode"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->clearUIScreen([I)V

    .line 426
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 397
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I

    .line 398
    const-string v0, "RemoveMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->startAni(I)V

    .line 400
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsTakePictureFinish:Z

    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->clearUIScreen([I)V

    .line 402
    return v3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 781
    const-string v2, "RemoveMode"

    const-string/jumbo v3, "onTouch"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->isInExecute:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 784
    :cond_0
    const-string v1, "RemoveMode"

    const-string v2, "isInExecute == true, return"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v1, 0x0

    .line 820
    :cond_1
    :goto_0
    return v1

    .line 788
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 789
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.getRawX()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.getRawY()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRatio:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_4

    .line 793
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    .line 794
    sget v2, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenWidth:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    .line 795
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPosX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPosY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    int-to-float v2, v2

    sget v3, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    .line 798
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    int-to-float v2, v2

    sget v3, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    .line 813
    :cond_3
    :goto_1
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPosX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPosY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 817
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 818
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLiuMinghandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 799
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRatio:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 800
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMargin:I

    if-lt v2, v3, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMargin:I

    add-int/2addr v2, v3

    sget v3, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight:I

    if-le v2, v3, :cond_6

    .line 801
    :cond_5
    const-string v2, "RemoveMode"

    const-string/jumbo v3, "out of margin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 804
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMargin:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    .line 805
    sget v2, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenWidth:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    .line 806
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPosX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string v2, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPosY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenHeight43:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    .line 809
    iget v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    int-to-float v2, v2

    sget v3, Lcom/lenovo/scg/camera/mode/RemoveMode;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    goto/16 :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 417
    const-string v0, "RemoveMode"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 754
    const-string v0, "RemoveMode"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->startCameraPreview()V

    .line 757
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 758
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->resume()V

    .line 759
    iput v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mFrameCount:I

    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 762
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 766
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 768
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 770
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->stopAnim()V

    .line 772
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mRemoveView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 774
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->init()V

    .line 775
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->clear()V

    .line 776
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->setId(I)V

    .line 777
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 430
    const-string v1, "RemoveMode"

    const-string/jumbo v2, "resume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 432
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->clearUIScreen([I)V

    .line 433
    return-void

    .line 431
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

    .line 950
    const-string v0, "RemoveMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation, rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsTakePictureFinish:Z

    if-nez v0, :cond_0

    .line 953
    const-string v0, "RemoveMode"

    const-string v1, "mIsCancelled = true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mIsCancelled:Z

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 958
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 959
    return-void
.end method

.method public showRemoveFail()V
    .locals 2

    .prologue
    .line 728
    const-string v0, "RemoveMode"

    const-string/jumbo v1, "showRemoveFail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/camera/mode/RemoveMode$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/RemoveMode$5;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method public showRemoveSuccess()V
    .locals 2

    .prologue
    .line 712
    const-string v0, "RemoveMode"

    const-string/jumbo v1, "showRemoveSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/RemoveModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/camera/mode/RemoveMode$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/RemoveMode$4;-><init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 465
    return-void
.end method

.method public updateAfterTouch()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 680
    const-string v1, "RemoveMode"

    const-string/jumbo v3, "updateAfterTouch"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->isInExecute:Z

    .line 683
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->getId()I

    move-result v1

    if-nez v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->setId(I)V

    .line 685
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mDetectedObjNum:I

    if-gt v8, v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    aput v2, v0, v8

    .line 685
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 689
    .end local v8    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosX:I

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPosY:I

    iget v5, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v6, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/morpho/core/ObjectEraser2App;->getObjectLabel(IIII)I

    move-result v9

    .line 690
    .local v9, "label":I
    const-string v1, "RemoveMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-lt v9, v0, :cond_2

    iget v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mDetectedObjNum:I

    if-gt v9, v1, :cond_2

    .line 692
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    aget v3, v3, v9

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    aput v0, v1, v9

    .line 693
    const-string v0, "RemoveMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEraseLabelList[label] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    aget v3, v3, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local v9    # "label":I
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    invoke-virtual {v0, v1}, Lcom/morpho/core/ObjectEraser2App;->setArrayOfErasedObjectFlags([I)I

    .line 698
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mMorphoObjEraser2JNI:Lcom/morpho/core/ObjectEraser2App;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    invoke-virtual {v0, v1, v3}, Lcom/morpho/core/ObjectEraser2App;->getPreviewImage(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewArgb:[I

    .line 700
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewArgb:[I

    if-nez v0, :cond_3

    .line 709
    :goto_1
    return-void

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mTopView:Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mObjectRectArray:[Landroid/graphics/Rect;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mDetectedObjNum:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mEraseLabelList:[I

    invoke-virtual {v0, v1, v3, v4}, Lcom/lenovo/scg/camera/mode/ui/RemoveModeUI;->initRectList([Landroid/graphics/Rect;I[I)V

    .line 705
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mPreviewArgb:[I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v6, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureWidth:I

    iget v7, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->mActualPictureHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 707
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->showRemoveSuccess()V

    .line 708
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RemoveMode;->isInExecute:Z

    goto :goto_1
.end method
