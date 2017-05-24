.class public Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;
.super Ljava/lang/Object;
.source "VideoModeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_VIDEO_INTENT_FLASH_MARGIN:I = 0x49

.field private static final EXTR_PROGRESS:F = 0.01f

.field private static final FRONT_PREVIEW_PADDING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VideoModeUI"

.field public static final VIDEO_FLASH_MARGIN:I = 0x8


# instance fields
.field private mAppView:Landroid/view/View;

.field private mBestLiveOn:Z

.field private mContext:Landroid/content/Context;

.field private mEslapingLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mEslapingTextView:Landroid/widget/TextView;

.field private mFinalTextView:Landroid/widget/TextView;

.field private mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mFrontPreview:Landroid/widget/ImageView;

.field mFrontPreviewListener:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;

.field private mFrontSurfaceView:Landroid/view/SurfaceView;

.field private mInidcatorTextView:Landroid/widget/TextView;

.field private mIsVideoIntent:Z

.field private mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressLayout:Landroid/widget/RelativeLayout;

.field private mRecordingTimeLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mThredsholdTime:I

.field private mTimeFinalLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mVideoFlashOn:Z

.field private mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

.field private mVideoPrepareTips:Lcom/lenovo/scg/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/lenovo/scg/camera/mode/VideoMode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "mode"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mBestLiveOn:Z

    .line 62
    iput v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mThredsholdTime:I

    .line 203
    const-string v0, "VideoModeUI"

    const-string v1, "VideoModeUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    .line 205
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    .line 207
    iput-object p3, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    .line 208
    invoke-virtual {p3}, Lcom/lenovo/scg/camera/mode/VideoMode;->getVideoDuration()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mThredsholdTime:I

    .line 209
    invoke-virtual {p3}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mIsVideoIntent:Z

    .line 211
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->initViews()V

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Lcom/lenovo/scg/camera/mode/VideoMode;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mBestLiveOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mBestLiveOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method private initFlashBtn()V
    .locals 3

    .prologue
    .line 327
    const-string v0, "VideoModeUI"

    const-string v1, "initFlashBtn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v1, 0x7f1009e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 331
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02036b

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;-><init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const-string v0, "VideoModeUI"

    const-string v1, "Init mFlashSwitch done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02036a

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private initViews()V
    .locals 10

    .prologue
    const v9, 0x7f1009e1

    const v8, 0x7f1009e0

    const/4 v7, -0x1

    .line 215
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 216
    const-string v4, "VideoModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initViews() on thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v4, 0x4

    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->initFlashBtn()V

    .line 223
    :cond_0
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mIsVideoIntent:Z

    if-nez v4, :cond_5

    .line 224
    const-string v4, "VideoModeUI"

    const-string/jumbo v5, "normal video"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    .line 226
    .local v3, "vg":Landroid/view/ViewGroup;
    const v4, 0x7f1007a4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 227
    .local v2, "vChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 231
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04012a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    .line 233
    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 234
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 237
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1007a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoPrepareTips:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 240
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoPrepareTips:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/VideoMode;->getOrientation()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 243
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mRecordingTimeLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 245
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009e2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mInidcatorTextView:Landroid/widget/TextView;

    .line 247
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSpeedVideo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->showSpecialVideoLayout()V

    .line 251
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mRecordingTimeLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v4, :cond_3

    .line 252
    const-string v4, "VideoModeUI"

    const-string v5, "mRecordingTimeLayout init done!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeTextView:Landroid/widget/TextView;

    .line 258
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBestLive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 259
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009e5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    .line 261
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    .line 263
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009e4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 265
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setClickable(Z)V

    .line 266
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v5, 0x7f0209ba

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 268
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v5, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;-><init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const-string v4, "VideoModeUI"

    const-string v5, "init BestLive done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "vChild":Landroid/view/View;
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :goto_1
    return-void

    .line 254
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    .restart local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v2    # "vChild":Landroid/view/View;
    .restart local v3    # "vg":Landroid/view/ViewGroup;
    :cond_3
    const-string v4, "VideoModeUI"

    const-string v5, "Can\'t find mRecordingTimeLayout!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_4
    const-string v4, "VideoModeUI"

    const-string v5, "Best live not enable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "vChild":Landroid/view/View;
    .end local v3    # "vg":Landroid/view/ViewGroup;
    :cond_5
    const-string v4, "VideoModeUI"

    const-string/jumbo v5, "third party calling"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mThredsholdTime:I

    if-lez v4, :cond_6

    .line 285
    const-string v4, "VideoModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Has video time limitation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mThredsholdTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressLayout:Landroid/widget/RelativeLayout;

    .line 288
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    .line 290
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mThredsholdTime:I

    int-to-float v5, v5

    const v6, 0x3f8147ae    # 1.01f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 292
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009dc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 294
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingTextView:Landroid/widget/TextView;

    .line 296
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009de

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeFinalLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 298
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    const v5, 0x7f1009df

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFinalTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 301
    :cond_6
    const-string v4, "VideoModeUI"

    const-string v5, "No UI countdown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mRecordingTimeLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 304
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mAppView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeTextView:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 309
    :cond_7
    const-string v4, "VideoModeUI"

    const-string v5, "mAppView == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public getFlashBtnStatus()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z

    return v0
.end method

.method public hideVideoPrepareTips()V
    .locals 2

    .prologue
    .line 464
    const-string v0, "VideoModeUI"

    const-string v1, "hideVideoPrepareTips "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoPrepareTips:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoPrepareTips:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    const-string v0, "VideoModeUI"

    const-string v1, "mVideoPrepareTips == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetPosition4HighResolution()V
    .locals 3

    .prologue
    .line 314
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 317
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x247

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->dpToPixel(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 318
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    const-string v1, "VideoModeUI"

    const-string/jumbo v2, "resetPosition4HighResolution mProgressLayout done "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v1, "VideoModeUI"

    const-string/jumbo v2, "resetPosition4HighResolution mProgressLayout == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public set3rdVideoFlashBtn(ZI)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "marginTop"    # I

    .prologue
    .line 412
    const-string v1, "VideoModeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set3rdVideoFlashBtn visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-eqz p1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v1, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->initFlashBtn()V

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 421
    if-lez p2, :cond_1

    .line 422
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 424
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {p2}, Lcom/lenovo/scg/camera/CameraUtil;->dpToPixel(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 425
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    const-string v1, "VideoModeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset mFlashSwitch topMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 433
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    goto :goto_0
.end method

.method public setBestLive(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 364
    if-eqz p1, :cond_1

    .line 365
    const-string v1, "VideoModeUI"

    const-string v3, "init FrontSurfaceView"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->initBestLive()V

    .line 367
    const-string v3, "VideoModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFrontSurfaceView != null "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->getFrontSurfaceCallback()Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 378
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 379
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 385
    .local v0, "previewlayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09035e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 387
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09035f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 389
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;

    invoke-direct {v1, p0, v5}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;-><init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreviewListener:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;

    .line 392
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreviewListener:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f0209bb

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 395
    const-string v1, "VideoModeUI"

    const-string v2, "finish init FrontSurfaceView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0    # "previewlayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 367
    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 399
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->getFrontSurfaceCallback()Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 404
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f0209ba

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 405
    const-string v1, "VideoModeUI"

    const-string/jumbo v2, "release FrontSurfaceView done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->releaseBestLive()V

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/4 v1, 0x1

    .line 528
    const-string v0, "VideoModeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOrientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v2, "VideoModeUI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFlashSwitch != null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mRecordingTimeLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mRecordingTimeLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeFinalLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v0, :cond_4

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeFinalLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 542
    :cond_4
    return-void

    .line 529
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecordingTimeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    :cond_0
    return-void
.end method

.method public showSpecialVideoLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 567
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->isRapidVideo()Z

    move-result v1

    .line 568
    .local v1, "rapid":Z
    const-string v2, "VideoModeUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInidcatorTextView VISIBLE and rapid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mInidcatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSlowVideo()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 573
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mInidcatorTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const v2, 0x7f0f0a63

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 575
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_2

    const v2, 0x7f0208c9

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 578
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 580
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mInidcatorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 582
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 573
    :cond_1
    const v2, 0x7f0f0a62

    goto :goto_0

    .line 575
    :cond_2
    const v2, 0x7f020935

    goto :goto_1
.end method

.method public startStopVideoRecording(Z)V
    .locals 9
    .param p1, "start"    # Z

    .prologue
    const/16 v8, 0x8

    .line 438
    const-string v6, "VideoModeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startStopVideoRecording "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_0

    const-string/jumbo v5, "start"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v5, 0x6

    new-array v4, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mRecordingTimeLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mLiveSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeFinalLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    aput-object v6, v4, v5

    .line 441
    .local v4, "views":[Landroid/view/View;
    move-object v0, v4

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 442
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_1

    .line 441
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "views":[Landroid/view/View;
    :cond_0
    const-string/jumbo v5, "stop"

    goto :goto_0

    .line 445
    .restart local v0    # "arr$":[Landroid/view/View;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "view":Landroid/view/View;
    .restart local v4    # "views":[Landroid/view/View;
    :cond_1
    if-eqz p1, :cond_2

    .line 446
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    goto :goto_2

    .line 448
    :cond_2
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    goto :goto_2

    .line 452
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    if-nez p1, :cond_5

    .line 453
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    if-eqz v5, :cond_4

    .line 454
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 457
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mInidcatorTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 458
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mInidcatorTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :cond_5
    return-void
.end method

.method public updateFrontPreview(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 546
    const-string v1, "VideoModeUI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFrontPreview \'bitmap != null\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$3;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$3;-><init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 560
    :cond_0
    :goto_1
    return-void

    .line 546
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 558
    :cond_2
    const-string v0, "VideoModeUI"

    const-string/jumbo v1, "updateFrontPreview mLiveFrontPreivew == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateRecordingTime(I)V
    .locals 10
    .param p1, "time"    # I

    .prologue
    .line 474
    int-to-long v6, p1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/lenovo/scg/camera/CameraUtil;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, "timeString":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 478
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v6, :cond_0

    .line 480
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 481
    const-string v6, "VideoModeUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mProgressBar VISIBLE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v6, "VideoModeUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mProgressBar current: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    int-to-float v7, p1

    iget v8, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mThredsholdTime:I

    int-to-float v8, v8

    const v9, 0x3c23d70a    # 0.01f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 487
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 488
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v8, p1, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFinalTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mThredsholdTime:I

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 493
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 495
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 497
    .local v4, "screenWidth":I
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 499
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    int-to-double v6, p1

    iget v8, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mThredsholdTime:I

    int-to-double v8, v8

    div-double v2, v6, v8

    .line 500
    .local v2, "percent":D
    const-string v6, "VideoModeUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "percent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    cmpg-double v6, v2, v6

    if-gez v6, :cond_3

    .line 503
    int-to-double v6, v4

    mul-double/2addr v6, v2

    double-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 504
    const-string v6, "VideoModeUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "leftMargin is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v6, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFinalTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 515
    :goto_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_0

    .line 516
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStopVideoRecording()V

    goto/16 :goto_0

    .line 509
    :cond_3
    const-string v6, "VideoModeUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stop process when percent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mEslapingLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 511
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFinalTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d00f1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
