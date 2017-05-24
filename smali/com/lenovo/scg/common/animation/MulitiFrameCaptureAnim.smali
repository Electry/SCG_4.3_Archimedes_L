.class public Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;
.super Ljava/lang/Object;
.source "MulitiFrameCaptureAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;,
        Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;
    }
.end annotation


# static fields
.field private static final ANIM_NUM:I = 0x5

.field private static final START_ANIM:I = 0x1


# instance fields
.field private mAnim:Landroid/view/animation/TranslateAnimation;

.field private mAnimIndex:I

.field private mAnimMode:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

.field private mAnimTimes:[J

.field private mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;

.field private mConvertBitmapTask:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

.field private mFrameCount:I

.field private mHandler:Landroid/os/Handler;

.field private mIsInAnim:Z

.field private mListener:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

.field private mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mReceviewYUVDatasIndex:I

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mShadowAnim:Landroid/view/animation/TranslateAnimation;

.field private mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mShowView:Lcom/lenovo/scg/camera/ui/RotateImageView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;)V
    .locals 2
    .param p1, "controller"    # Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimTimes:[J

    .line 65
    sget-object v0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;->AUTO_PLAY:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimMode:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    .line 82
    new-instance v0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$1;-><init>(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mController:Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;

    .line 101
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-interface {p1}, Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    .line 105
    invoke-interface {p1}, Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mParentView:Landroid/view/ViewGroup;

    .line 106
    new-instance v0, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mConvertBitmapTask:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mConvertBitmapTask:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    new-instance v1, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$2;-><init>(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->setCallback(Lcom/lenovo/scg/common/animation/ConvertBitmapTask$Callback;)V

    goto :goto_0

    .line 59
    :array_0
    .array-data 8
        0xa7
        0x85
        0x85
        0x85
        0xa7
        0xa7
        0xc8
        0xc8
        0xc8
        0xc8
    .end array-data
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->startAnim()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    return v0
.end method

.method static synthetic access$408(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)[J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimTimes:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->stopAnim()V

    return-void
.end method

.method private getShadowViewAnimTransY()F
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 364
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 365
    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    .line 367
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    goto :goto_0
.end method

.method private recycleBitmaps()V
    .locals 4

    .prologue
    .line 315
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 316
    .local v1, "bitmapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 317
    iget-object v3, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 318
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method private startAnim()V
    .locals 11

    .prologue
    .line 214
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAnimIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFrameCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mAnimIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    iget v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimTimes:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->stopAnim()V

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->initLayout()V

    .line 221
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_5

    .line 222
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnim:Landroid/view/animation/TranslateAnimation;

    .line 235
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnim:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimTimes:[J

    iget v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 238
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_1

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->getShadowViewAnimTransY()F

    move-result v10

    .line 245
    .local v10, "transY":F
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    if-nez v0, :cond_8

    .line 246
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowAnim:Landroid/view/animation/TranslateAnimation;

    .line 254
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowAnim:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimTimes:[J

    iget v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$3;-><init>(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 224
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "transY":F
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_6

    .line 225
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnim:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_1

    .line 227
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    if-nez v0, :cond_7

    .line 228
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnim:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_1

    .line 230
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    .line 231
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnim:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_1

    .line 247
    .restart local v9    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "transY":F
    :cond_8
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_9

    .line 248
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowAnim:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 249
    :cond_9
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_a

    .line 250
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowAnim:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2

    .line 251
    :cond_a
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_4

    .line 252
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    neg-float v3, v10

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowAnim:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_2
.end method

.method private stopAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iput-boolean v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mIsInAnim:Z

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mRootView:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleViewDrawable(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 303
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->recycleBitmaps()V

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 305
    iput v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimIndex:I

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mListener:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mListener:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

    invoke-interface {v0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;->onAnimEnd()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mConvertBitmapTask:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mConvertBitmapTask:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->shutdownExecutorService()V

    .line 312
    :cond_1
    return-void
.end method

.method private updateAnimViewLayout()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 330
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 331
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 333
    .local v2, "bmpWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 334
    .local v1, "bmpHeight":I
    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 335
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 336
    .local v6, "screenWidth":I
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v5, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 337
    .local v5, "screenHeight":I
    int-to-float v8, v6

    int-to-float v9, v2

    div-float v7, v8, v9

    .line 338
    .local v7, "widthScale":F
    int-to-float v8, v5

    int-to-float v9, v1

    div-float v3, v8, v9

    .line 339
    .local v3, "heightScale":F
    cmpl-float v8, v7, v3

    if-lez v8, :cond_1

    .line 340
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v8, v2

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 342
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 343
    iget v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 344
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v8, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v8, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .end local v1    # "bmpHeight":I
    .end local v2    # "bmpWidth":I
    .end local v3    # "heightScale":F
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    .end local v7    # "widthScale":F
    :cond_0
    :goto_0
    return-void

    .line 347
    .restart local v1    # "bmpHeight":I
    .restart local v2    # "bmpWidth":I
    .restart local v3    # "heightScale":F
    .restart local v5    # "screenHeight":I
    .restart local v6    # "screenWidth":I
    .restart local v7    # "widthScale":F
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 348
    .restart local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v8, v1

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 349
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 350
    int-to-float v8, v5

    int-to-float v9, v1

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    float-to-int v8, v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 355
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v8, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v8, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v8, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v2, :cond_0

    .line 389
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 374
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 376
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 378
    const/4 v0, 0x0

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 381
    .local v1, "shadowAnim":Landroid/view/animation/Animation;
    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 383
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 384
    iget-object v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->clearAnimation()V

    .line 385
    const/4 v1, 0x0

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->stopAnim()V

    goto :goto_0
.end method

.method public initLayout()V
    .locals 13

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x0

    const v10, 0x7f09031c

    const/16 v9, 0xb4

    const/16 v8, 0xa

    .line 124
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_3

    .line 125
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 126
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const v5, 0x7f04010d

    iget-object v6, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mParentView:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 127
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f1006f4

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mRootView:Landroid/widget/RelativeLayout;

    .line 128
    const v5, 0x7f1000a9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 129
    const v5, 0x7f1006f5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 130
    iget v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    if-ne v5, v9, :cond_0

    .line 131
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v5, v9, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 132
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v5, v9, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 134
    :cond_0
    const v5, 0x7f1006f6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 135
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v5, :cond_3

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    .line 138
    .local v4, "width":I
    const/4 v0, 0x0

    .line 139
    .local v0, "height":I
    iget v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    if-nez v5, :cond_4

    .line 140
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 141
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 142
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 165
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mShadowView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v5, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->updateAnimViewLayout()V

    .line 170
    .end local v0    # "height":I
    .end local v1    # "inflate":Landroid/view/LayoutInflater;
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "width":I
    :cond_3
    return-void

    .line 145
    .restart local v0    # "height":I
    .restart local v1    # "inflate":Landroid/view/LayoutInflater;
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "view":Landroid/view/View;
    .restart local v4    # "width":I
    :cond_4
    iget v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    if-ne v5, v9, :cond_5

    .line 146
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 147
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 148
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 151
    :cond_5
    iget v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_6

    .line 152
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 153
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 154
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 157
    :cond_6
    iget v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    .line 158
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 159
    iget-object v5, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 160
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_0
.end method

.method public isAniRunning()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mIsInAnim:Z

    return v0
.end method

.method public setMulitiFrameCaptureAnimListener(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mListener:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;

    .line 327
    return-void
.end method

.method public setPlayMode(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;)V
    .locals 0
    .param p1, "animMode"    # Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimMode:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    .line 121
    return-void
.end method

.method public setTotalFrameCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I

    .line 174
    return-void
.end method

.method public declared-synchronized setYUVData([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-boolean v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mIsInAnim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 182
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mReceviewYUVDatasIndex:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 185
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mReceviewYUVDatasIndex:I

    if-nez v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mController:Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/MulitiFrameCaptureAnimController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    .line 187
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======================mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mConvertBitmapTask:Lcom/lenovo/scg/common/animation/ConvertBitmapTask;

    iget v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mOrientation:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/lenovo/scg/common/animation/ConvertBitmapTask;->getBitmap([BIII)V

    .line 190
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mReceviewYUVDatasIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mReceviewYUVDatasIndex:I

    .line 192
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mReceviewYUVDatasIndex:I

    iget v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mAnimMode:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    sget-object v1, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;->AUTO_PLAY:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->startAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I

    .line 202
    iget v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I

    if-le v0, v2, :cond_2

    .line 203
    iput v2, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mFrameCount:I

    .line 205
    :cond_2
    iput-boolean v1, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mIsInAnim:Z

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
