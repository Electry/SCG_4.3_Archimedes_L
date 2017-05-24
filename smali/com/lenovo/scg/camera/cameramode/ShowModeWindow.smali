.class public Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
.super Lcom/lenovo/scg/common/le3d/Le3dWindow;
.source "ShowModeWindow.java"


# static fields
.field private static final FIRST_INIT_VIEWS_SIZE:I = 0x8

.field private static final INIT_PRO_OTHER_MODE_COMPLETE:I = 0x44c

.field private static final MODE_TEXT_BG_ID:I = 0x1

.field private static final MODE_TEXT_ID:I = 0x2


# instance fields
.field private duration:I

.field private mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private mCameraModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/cameramode/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field private mChildHeight:I

.field private mChildTextBgHeight:I

.field private mChildTextBgWidth:I

.field private mChildWidth:I

.field private mChildsBetweenLeftMargin:I

.field private mChildsBetweenTopMargin:I

.field private mContext:Landroid/content/Context;

.field private mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

.field private mEntryModeAnimDuration:I

.field private mFirstInitProModeViewsSize:I

.field private mFirstModeTextBgView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private mFrameBuffer:[I

.field private mFrameBufferBinding:I

.field private mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private mHorChildsBetweenLeftMargin:I

.field private mHorChildsBetweenTopMargin:I

.field private mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

.field private mHorLeftMargin:I

.field private mHorProTopMargin:I

.field private mHorTopMargin:I

.field private mIsClickedBlankSpace:Z

.field private mIsEntryMode:Z

.field private mIsInAnimation:Z

.field private mIsInitAllProModesCompleted:Z

.field private mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

.field private mLeftMargin:I

.field private mMainHandler:Landroid/os/Handler;

.field mModeAnimIndex:[I

.field private mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

.field private mModeViewsSize:I

.field private mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

.field private mPressDownX:F

.field private mPressDownY:F

.field private mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private mProTopMargin:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTexture:[I

.field private mTextureImage:Lcom/lenovo/scg/common/le3d/Le3dTextureImage;

.field private mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private mTopMargin:I

.field private mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

.field private obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 2
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 112
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    .line 114
    const/16 v0, 0x73

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->duration:I

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->obj:Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsClickedBlankSpace:Z

    .line 132
    const/16 v0, 0xc8

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    .line 1653
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    .line 1654
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;II)V
    .locals 2
    .param p1, "context"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "orientation"    # I
    .param p3, "windowMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dWindow;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;II)V

    .line 112
    const/16 v0, 0x8

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    .line 114
    const/16 v0, 0x73

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->duration:I

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->obj:Ljava/lang/Object;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsClickedBlankSpace:Z

    .line 132
    const/16 v0, 0xc8

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    .line 1653
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    .line 1654
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dGridImage;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dGridImage;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    return v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    return v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    return v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    return v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startOtherFirstModeAnim()V

    return-void
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInitAllProModesCompleted:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInitAllProModesCompleted:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->showAllModeViews()V

    return-void
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsEntryMode:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsEntryMode:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    return v0
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dGLSurfaceView:Lcom/lenovo/scg/common/le3d/Le3dGLSurfaceViewInterface;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initModeView(Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initMainHandler()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    return-object v0
.end method

.method private endFBO()V
    .locals 2

    .prologue
    .line 1680
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1681
    return-void
.end method

.method private getAnimViewTransX(IFF)F
    .locals 5
    .param p1, "index"    # I
    .param p2, "scale"    # F
    .param p3, "oriCenterXInScreen"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 987
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 988
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    div-float v0, v1, v4

    .line 989
    .local v0, "centerXInScreenAfterAnim":F
    sub-float v1, v0, p3

    .line 999
    .end local v0    # "centerXInScreenAfterAnim":F
    :goto_0
    return v1

    .line 991
    :cond_0
    if-nez p1, :cond_1

    .line 992
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    div-float/2addr v2, v4

    add-float v0, v1, v2

    .line 993
    .restart local v0    # "centerXInScreenAfterAnim":F
    neg-float v1, p3

    add-float/2addr v1, v0

    goto :goto_0

    .line 994
    .end local v0    # "centerXInScreenAfterAnim":F
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 995
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    div-float/2addr v2, v4

    sub-float v0, v1, v2

    .line 996
    .restart local v0    # "centerXInScreenAfterAnim":F
    neg-float v1, p3

    add-float/2addr v1, v0

    goto :goto_0

    .line 999
    .end local v0    # "centerXInScreenAfterAnim":F
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAnimViewTransY(IFF)F
    .locals 4
    .param p1, "index"    # I
    .param p2, "scale"    # F
    .param p3, "oriCenterYInScreen"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1004
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_2

    .line 1005
    if-nez p1, :cond_0

    .line 1006
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    int-to-float v1, v1

    div-float v0, v1, v3

    .line 1007
    .local v0, "centerYInScreenAfterAnim":F
    sub-float v1, p3, v0

    .line 1016
    .end local v0    # "centerYInScreenAfterAnim":F
    :goto_0
    return v1

    .line 1008
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1009
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    div-float/2addr v2, v3

    add-float v0, v1, v2

    .line 1010
    .restart local v0    # "centerYInScreenAfterAnim":F
    sub-float v1, p3, v0

    goto :goto_0

    .line 1013
    .end local v0    # "centerYInScreenAfterAnim":F
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    int-to-float v1, v1

    div-float v0, v1, v3

    .line 1014
    .restart local v0    # "centerYInScreenAfterAnim":F
    sub-float v1, p3, v0

    goto :goto_0

    .line 1016
    .end local v0    # "centerYInScreenAfterAnim":F
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getColor(I)I
    .locals 1
    .param p1, "colorId"    # I

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    check-cast v0, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    return-object v0
.end method

.method private getCurrentModeBtn()Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    .locals 1

    .prologue
    .line 1518
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 1521
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    goto :goto_0
.end method

.method private getDimenValue(I)F
    .locals 1
    .param p1, "dimen"    # I

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getModeContainerHorMoveDistance()F
    .locals 2

    .prologue
    .line 756
    const v0, 0x7f090217

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterXInScreenById(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getModeContainerVerMoveDistance()F
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterYInScreenById(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f090216

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getModeViewInitCenterXInScreenById(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1289
    const/4 v0, 0x0

    .line 1290
    .local v0, "horTopMargin":I
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v1, :cond_0

    .line 1291
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorTopMargin:I

    .line 1295
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_1

    .line 1296
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildWidth:I

    rem-int/lit8 v2, p1, 0x2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildsBetweenLeftMargin:I

    rem-int/lit8 v3, p1, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLeftMargin:I

    add-int/2addr v1, v2

    .line 1298
    :goto_1
    return v1

    .line 1293
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorProTopMargin:I

    goto :goto_0

    .line 1298
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    div-int/lit8 v2, p1, 0x3

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v2, p1, 0x3

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorChildsBetweenLeftMargin:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method private getModeViewInitCenterYInScreenById(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 1303
    const/4 v0, 0x0

    .line 1304
    .local v0, "topMargin":I
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v1, :cond_0

    .line 1305
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopMargin:I

    .line 1309
    :goto_0
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_1

    .line 1310
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    div-int/lit8 v3, p1, 0x2

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildsBetweenTopMargin:I

    div-int/lit8 v4, p1, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1312
    :goto_1
    return v1

    .line 1307
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProTopMargin:I

    goto :goto_0

    .line 1312
    :cond_1
    rem-int/lit8 v1, p1, 0x3

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorChildsBetweenTopMargin:I

    mul-int/2addr v1, v2

    rem-int/lit8 v2, p1, 0x3

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLeftMargin:I

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method private getModeViewTextBgCenterXInScreen(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1317
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 1318
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterXInScreenById(I)I

    move-result v0

    .line 1320
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterXInScreenById(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private getModeViewTextBgCenterYInScreen(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1325
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 1326
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterYInScreenById(I)I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1328
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterYInScreenById(I)I

    move-result v0

    goto :goto_0
.end method

.method private getMoveX(F)F
    .locals 4
    .param p1, "moveX"    # F

    .prologue
    const/4 v1, 0x0

    .line 1275
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v2, :cond_2

    :cond_0
    move p1, v1

    .line 1285
    .end local p1    # "moveX":F
    :cond_1
    :goto_0
    return p1

    .line 1278
    .restart local p1    # "moveX":F
    :cond_2
    const v2, 0x7f090217

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterXInScreenById(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 1280
    .local v0, "max":F
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateX()F

    move-result v2

    add-float/2addr v2, p1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 1281
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateX()F

    move-result v1

    sub-float p1, v0, v1

    goto :goto_0

    .line 1282
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateX()F

    move-result v2

    add-float/2addr v2, p1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    .line 1283
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateX()F

    move-result v1

    neg-float p1, v1

    goto :goto_0
.end method

.method private getMoveY(F)F
    .locals 4
    .param p1, "moveY"    # F

    .prologue
    const/4 v1, 0x0

    .line 1261
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v2, :cond_2

    :cond_0
    move p1, v1

    .line 1271
    .end local p1    # "moveY":F
    :cond_1
    :goto_0
    return p1

    .line 1264
    .restart local p1    # "moveY":F
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterYInScreenById(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x7f090216

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 1266
    .local v0, "max":F
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v2

    add-float/2addr v2, p1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 1267
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v1

    sub-float p1, v0, v1

    goto :goto_0

    .line 1268
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v2

    add-float/2addr v2, p1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    .line 1269
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v1

    neg-float p1, v1

    goto :goto_0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "stringId"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initAutoProButtons()V
    .locals 7

    .prologue
    const v2, 0x7f090237

    const/4 v6, 0x0

    const v5, 0x7f09049f

    const v4, 0x7f09049e

    const/4 v3, 0x0

    .line 580
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 581
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 582
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f090238

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 585
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f020386

    invoke-virtual {v0, v3, v1, v6}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 587
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f09023d

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f09023e

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 589
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f02038b

    invoke-virtual {v0, v3, v1, v6}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setClickPaddingRegin(II)V

    .line 591
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setClickPaddingRegin(II)V

    .line 592
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 593
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 594
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 610
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getCurrentModeBtn()Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 680
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f090238

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 598
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f02038a

    invoke-virtual {v0, v3, v1, v6}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 600
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f09023d

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f09023e

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f020387

    invoke-virtual {v0, v3, v1, v6}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 604
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setClickPaddingRegin(II)V

    .line 605
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setClickPaddingRegin(II)V

    .line 607
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto :goto_0
.end method

.method private initEntryModeAnimContainer(Lcom/lenovo/scg/common/le3d/Le3dContainer;)V
    .locals 9
    .param p1, "modeView"    # Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1020
    if-eqz p1, :cond_2

    .line 1021
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-nez v3, :cond_1

    .line 1022
    new-instance v3, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .line 1023
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setCenter(I)V

    .line 1024
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getHeight()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setSize(FF)V

    .line 1025
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 1034
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1035
    invoke-virtual {p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dImage;

    .line 1036
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dImage;
    if-eqz v0, :cond_0

    .line 1037
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;

    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v2, v3, v0}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dImage;)V

    .line 1038
    .local v2, "image":Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;
    invoke-virtual {v2, v8}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->setCenter(I)V

    .line 1039
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getHeight()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->setSize(FF)V

    .line 1040
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getTranslateX()F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getTranslateY()F

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4, v6}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->setTranslate(FFF)V

    .line 1041
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getRotateZ()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->setRotateZ(F)V

    .line 1042
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 1034
    .end local v2    # "image":Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1027
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dImage;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->removeAllView()V

    .line 1028
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setVisible(Z)V

    .line 1029
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setCenter(I)V

    .line 1030
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getHeight()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setSize(FF)V

    .line 1031
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3, v6, v6, v6}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setTranslate(FFF)V

    .line 1032
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3, v7, v7, v7}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setScale(FFF)V

    goto :goto_0

    .line 1046
    :cond_2
    return-void
.end method

.method private initHorLe3dScrollBar()V
    .locals 5

    .prologue
    .line 167
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    const v1, 0x7f090256

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    float-to-int v1, v1

    const v2, 0x7f090255

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f090252

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v3

    float-to-int v3, v3

    const v4, 0x7f090251

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->init(IIII)V

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setCenter(I)V

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    const v1, 0x7f090257

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f090258

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setCenterPointInScreen(FF)V

    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setRotateZ(F)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto :goto_0
.end method

.method private initMainHandler()V
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1574
    new-instance v0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$8;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mMainHandler:Landroid/os/Handler;

    .line 1600
    :cond_0
    return-void
.end method

.method private initModeContainer()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setCenter(I)V

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 194
    return-void
.end method

.method private initModeView(Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V
    .locals 9
    .param p1, "cameraMode"    # Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .param p2, "index"    # I
    .param p3, "visible"    # Z

    .prologue
    const/4 v8, 0x0

    .line 295
    const-string v5, "jiaxiaowei"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initModeView---------------cameraMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/cameramode/CameraMode;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v1, v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 297
    .local v1, "cameraModeView":Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-virtual {v1, p2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setID(I)V

    .line 298
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setSize(FF)V

    .line 299
    sget v5, Lcom/lenovo/scg/common/le3d/Le3dView;->EVENT_ABILITY_CLICKED:I

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addEventAbility(I)V

    .line 300
    invoke-virtual {v1, p3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setVisible(Z)V

    .line 303
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v5, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 305
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v2, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 306
    .local v2, "image":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/cameramode/CameraMode;->getResourceId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(I)V

    .line 307
    invoke-virtual {v2, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 310
    invoke-virtual {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 312
    if-nez p2, :cond_0

    .line 313
    new-instance v5, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstModeTextBgView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 314
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstModeTextBgView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 315
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstModeTextBgView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 316
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstModeTextBgView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v6, 0x7f02038d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v8, v7}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 317
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstModeTextBgView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 326
    :goto_0
    new-instance v4, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 327
    .local v4, "textImage":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 328
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/cameramode/CameraMode;->getTitle()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090226

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f090224

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V

    .line 331
    invoke-virtual {v4, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 333
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 334
    invoke-virtual {v1, v8}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setVisible(Z)V

    .line 335
    new-instance v5, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 386
    return-void

    .line 319
    .end local v3    # "paint":Landroid/graphics/Paint;
    .end local v4    # "textImage":Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    :cond_0
    const/4 v0, 0x0

    .line 320
    .local v0, "bgImage":Lcom/lenovo/scg/common/le3d/Le3dImage;
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;

    .end local v0    # "bgImage":Lcom/lenovo/scg/common/le3d/Le3dImage;
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstModeTextBgView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {v0, v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dImage;)V

    .line 321
    .restart local v0    # "bgImage":Lcom/lenovo/scg/common/le3d/Le3dImage;
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setSize(FF)V

    .line 322
    invoke-virtual {v0, v8}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setCenter(I)V

    .line 323
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto :goto_0
.end method

.method private initModeViews()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;

    .line 199
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v5, :cond_1

    .line 200
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraConfig;->isQRCodeSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    sget-object v5, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->AUTO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    array-length v5, v5

    iput v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    .line 202
    sget-object v1, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->AUTO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 203
    .local v1, "cameraModes":[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    iput v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    .line 229
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 230
    .local v6, "start":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    if-ge v4, v5, :cond_5

    .line 231
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    aget-object v8, v1, v4

    invoke-static {v5, v8}, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->createCameraMode(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Lcom/lenovo/scg/camera/cameramode/CameraMode;

    move-result-object v0

    .line 232
    .local v0, "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v5, 0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initModeView(Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .end local v1    # "cameraModes":[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .end local v4    # "i":I
    .end local v6    # "start":J
    :cond_0
    sget-object v5, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->AUTO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    array-length v5, v5

    iput v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    .line 206
    sget-object v1, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->AUTO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 207
    .restart local v1    # "cameraModes":[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    iput v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    goto :goto_0

    .line 210
    .end local v1    # "cameraModes":[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraConfig;->isQRCodeSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    sget-object v5, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    array-length v5, v5

    iput v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    .line 212
    sget-object v1, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 213
    .restart local v1    # "cameraModes":[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    if-lt v5, v10, :cond_2

    .line 214
    iput v10, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    goto :goto_0

    .line 216
    :cond_2
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    iput v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    goto :goto_0

    .line 219
    .end local v1    # "cameraModes":[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_3
    sget-object v5, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    array-length v5, v5

    iput v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    .line 220
    sget-object v1, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 221
    .restart local v1    # "cameraModes":[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    const-string v5, "jiaxiaowei"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cameraModes-------size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mModeViewsSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    if-lt v5, v10, :cond_4

    .line 223
    iput v10, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    goto :goto_0

    .line 225
    :cond_4
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    iput v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    goto/16 :goto_0

    .line 236
    .restart local v4    # "i":I
    .restart local v6    # "start":J
    :cond_5
    new-instance v5, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v8, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v5, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 237
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v8, 0x7f02022d

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(I)V

    .line 238
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v5, v11}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 239
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v5, v11}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 240
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 242
    .local v2, "end":J
    const-string/jumbo v5, "wwf2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "all = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v2, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method private initOtherProModeViews()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 275
    return-void
.end method

.method private initScrollBarView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->isCanShowScrollView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    const v1, 0x7f090250

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    float-to-int v1, v1

    const v2, 0x7f09024f

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f090252

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v3

    float-to-int v3, v3

    const v4, 0x7f090251

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->init(IIII)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setCenter(I)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    const v1, 0x7f090253

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f090254

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setCenterPointInScreen(FF)V

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setVisible(Z)V

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto :goto_0
.end method

.method private initTextureImage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 1647
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    aget v2, v2, v6

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;III)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTextureImage:Lcom/lenovo/scg/common/le3d/Le3dTextureImage;

    .line 1648
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTextureImage:Lcom/lenovo/scg/common/le3d/Le3dTextureImage;

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->setSize(FF)V

    .line 1649
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTextureImage:Lcom/lenovo/scg/common/le3d/Le3dTextureImage;

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->setCenter(I)V

    .line 1650
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTextureImage:Lcom/lenovo/scg/common/le3d/Le3dTextureImage;

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->setCenterPointInScreen(FF)V

    .line 1651
    return-void
.end method

.method private initTopModeTextView()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 470
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 476
    new-array v0, v6, [Landroid/graphics/Paint;

    .line 477
    .local v0, "paint":[Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v0, v5

    .line 478
    aget-object v2, v0, v5

    const v3, 0x7f0d00ed

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v0, v4

    .line 480
    aget-object v2, v0, v4

    const v3, 0x7f0d00ec

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    new-array v1, v6, [Ljava/lang/String;

    .line 483
    .local v1, "str":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f0110

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 484
    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-ne v2, v4, :cond_0

    .line 485
    const v2, 0x7f0f0111

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 490
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v3, 0x7f090234

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v3

    float-to-int v3, v3

    const v4, 0x7f090236

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setString([Ljava/lang/String;I[Landroid/graphics/Paint;I)V

    .line 493
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 494
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 495
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    new-instance v3, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$3;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setEventListener(Lcom/lenovo/scg/common/le3d/EventListener;)V

    .line 549
    return-void

    .line 487
    :cond_0
    const v2, 0x7f0f0112

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method private initTopModeView()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f02037b

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(I)V

    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 457
    return-void
.end method

.method private initValues()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    .line 716
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    .line 717
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    .line 718
    const v0, 0x7f090218

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildWidth:I

    .line 719
    const v0, 0x7f090219

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    .line 720
    const v0, 0x7f090224

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgWidth:I

    .line 721
    const v0, 0x7f090225

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    .line 722
    const v0, 0x7f09021a

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildsBetweenLeftMargin:I

    .line 723
    const v0, 0x7f09021b

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildsBetweenTopMargin:I

    .line 724
    const v0, 0x7f09021c

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorChildsBetweenLeftMargin:I

    .line 725
    const v0, 0x7f09021d

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorChildsBetweenTopMargin:I

    .line 726
    const v0, 0x7f09021e

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopMargin:I

    .line 727
    const v0, 0x7f09021f

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProTopMargin:I

    .line 728
    const v0, 0x7f090223

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorProTopMargin:I

    .line 729
    const v0, 0x7f090220

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLeftMargin:I

    .line 730
    const v0, 0x7f090221

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLeftMargin:I

    .line 731
    const v0, 0x7f090222

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorTopMargin:I

    .line 732
    return-void
.end method

.method private isCanMove(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v0, 0x0

    .line 1214
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v1, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return v0

    .line 1217
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->isCanShowScrollView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1220
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    .line 1221
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLastMoveY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1229
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1225
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLastMoveX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto :goto_0
.end method

.method private isCanShowScrollView()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 1234
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_1

    .line 1235
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewTextBgCenterYInScreen(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const v2, 0x7f09024c

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 1243
    :cond_0
    :goto_0
    return v0

    .line 1239
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewTextBgCenterXInScreen(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const v2, 0x7f09024d

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1243
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isClicked(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    const/4 v0, 0x1

    .line 1247
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->clickTest(FF)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return v0

    .line 1249
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 1252
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutAutoAndProView()V
    .locals 6

    .prologue
    const v5, 0x7f09023b

    const v4, 0x7f09023a

    const v3, 0x7f090239

    const/high16 v2, 0x43870000    # 270.0f

    const/4 v1, 0x0

    .line 683
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    .line 684
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 685
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 686
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 689
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f09023f

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f090240

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 712
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f09023f

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f090240

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 694
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 699
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 700
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x7f09023c

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 703
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x7f090241

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x7f090242

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x7f09023c

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 708
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x7f090241

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x7f090242

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    goto/16 :goto_0
.end method

.method private layoutModeViews()V
    .locals 15

    .prologue
    .line 389
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v11}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->resetCenterPointInScreen()V

    .line 390
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setTranslate(FFF)V

    .line 391
    iget v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 392
    iget v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v11, v11, 0xb4

    if-nez v11, :cond_4

    .line 393
    const v11, 0x7f09024b

    invoke-direct {p0, v11}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v4

    .line 394
    .local v4, "clipRectTop":F
    const v11, 0x7f09024c

    invoke-direct {p0, v11}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    .line 395
    .local v1, "clipRectBottom":F
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v4, v13, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->initClipRect(FFFF)V

    .line 396
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v11, :cond_0

    .line 397
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v4, v13, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->initClipRect(FFFF)V

    .line 408
    .end local v1    # "clipRectBottom":F
    .end local v4    # "clipRectTop":F
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v11}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_8

    .line 409
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {p0, v11, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getViewFromId(Lcom/lenovo/scg/common/le3d/Le3dContainer;I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 410
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v0, :cond_3

    instance-of v11, v0, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v11, :cond_3

    .line 411
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v11, v12, v13}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    move-object v11, v0

    .line 412
    check-cast v11, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v5

    .local v5, "image":Lcom/lenovo/scg/common/le3d/Le3dView;
    move-object v11, v0

    .line 413
    check-cast v11, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v8

    .line 414
    .local v8, "textImageBg":Lcom/lenovo/scg/common/le3d/Le3dView;
    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v7

    .line 415
    .local v7, "textImage":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v5, :cond_1

    .line 416
    iget v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v11, v11, 0xb4

    if-nez v11, :cond_5

    .line 417
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateZ(F)V

    .line 421
    :goto_2
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterXInScreenById(I)I

    move-result v9

    .line 422
    .local v9, "x":I
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterYInScreenById(I)I

    move-result v10

    .line 423
    .local v10, "y":I
    int-to-float v11, v9

    int-to-float v12, v10

    invoke-virtual {v5, v11, v12}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenterPointInScreen(FF)V

    .line 425
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_1
    if-eqz v7, :cond_2

    .line 426
    iget v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v11, v11, 0xb4

    if-nez v11, :cond_6

    .line 427
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateZ(F)V

    .line 431
    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v7, v11, v12, v13}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 432
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewTextBgCenterXInScreen(I)I

    move-result v11

    int-to-float v11, v11

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewTextBgCenterYInScreen(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v7, v11, v12}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenterPointInScreen(FF)V

    .line 434
    :cond_2
    if-eqz v8, :cond_3

    .line 435
    iget v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v11, v11, 0xb4

    if-nez v11, :cond_7

    .line 436
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateZ(F)V

    .line 440
    :goto_4
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewTextBgCenterXInScreen(I)I

    move-result v11

    int-to-float v11, v11

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewTextBgCenterYInScreen(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenterPointInScreen(FF)V

    .line 408
    .end local v5    # "image":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v7    # "textImage":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v8    # "textImageBg":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 400
    .end local v6    # "j":I
    :cond_4
    const v11, 0x7f09024d

    invoke-direct {p0, v11}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    .line 401
    .local v2, "clipRectLeft":F
    const v11, 0x7f09024e

    invoke-direct {p0, v11}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v3

    .line 402
    .local v3, "clipRectRight":F
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v2, v12, v3, v13}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->initClipRect(FFFF)V

    .line 403
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v11, :cond_0

    .line 404
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v11, v2, v12, v3, v13}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->initClipRect(FFFF)V

    goto/16 :goto_0

    .line 419
    .end local v2    # "clipRectLeft":F
    .end local v3    # "clipRectRight":F
    .restart local v5    # "image":Lcom/lenovo/scg/common/le3d/Le3dView;
    .restart local v6    # "j":I
    .restart local v7    # "textImage":Lcom/lenovo/scg/common/le3d/Le3dView;
    .restart local v8    # "textImageBg":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_5
    const/high16 v11, 0x43870000    # 270.0f

    invoke-virtual {v5, v11}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateZ(F)V

    goto :goto_2

    .line 429
    :cond_6
    const/high16 v11, 0x43870000    # 270.0f

    invoke-virtual {v7, v11}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateZ(F)V

    goto :goto_3

    .line 438
    :cond_7
    const/high16 v11, 0x43870000    # 270.0f

    invoke-virtual {v8, v11}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateZ(F)V

    goto :goto_4

    .line 444
    .end local v5    # "image":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v7    # "textImage":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v8    # "textImageBg":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_8
    iget v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v11, v11, 0xb4

    if-nez v11, :cond_9

    .line 445
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeContainerVerMoveDistance()F

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setMoveDistance(FF)V

    .line 449
    :goto_5
    return-void

    .line 447
    :cond_9
    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeContainerHorMoveDistance()F

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setMoveDistance(FF)V

    goto :goto_5
.end method

.method private layoutScrollBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1149
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    if-nez v0, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setLe3dScrollBar(Lcom/lenovo/scg/common/le3d/Le3dScrollBar;)V

    .line 1154
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setVisible(Z)V

    .line 1155
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->reset()V

    .line 1156
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setVisible(Z)V

    goto :goto_0

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    if-nez v0, :cond_3

    .line 1161
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initHorLe3dScrollBar()V

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setLe3dScrollBar(Lcom/lenovo/scg/common/le3d/Le3dScrollBar;)V

    .line 1164
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setVisible(Z)V

    .line 1165
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->reset()V

    .line 1166
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->setVisible(Z)V

    goto :goto_0
.end method

.method private layoutTopModeTextView()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v0, :cond_0

    .line 553
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 555
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f09022b

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f09022c

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 560
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x7f09022e

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x7f09022d

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    goto :goto_0
.end method

.method private layoutTopModeView()V
    .locals 3

    .prologue
    .line 460
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const v1, 0x7f090227

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v1

    const v2, 0x7f090228

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 467
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x7f09022a

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x7f090229

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    goto :goto_0
.end method

.method private resetTopViewsAlpha()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1078
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setAlpha(F)V

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setAlpha(F)V

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v0, :cond_2

    .line 1085
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setAlpha(F)V

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v0, :cond_3

    .line 1091
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setAlpha(F)V

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v0, :cond_4

    .line 1094
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setAlpha(F)V

    .line 1096
    :cond_4
    return-void
.end method

.method private restoreFrameBufferBind()V
    .locals 2

    .prologue
    .line 1690
    const v0, 0x8d40

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBufferBinding:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1691
    return-void
.end method

.method private saveFrameBufferBind()V
    .locals 2

    .prologue
    .line 1684
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 1685
    .local v0, "intBuffer":Ljava/nio/IntBuffer;
    const v1, 0x8ca6

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1686
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBufferBinding:I

    .line 1687
    return-void
.end method

.method private showAllModeViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 278
    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-eq v2, v3, :cond_0

    .line 292
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    if-ge v1, v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 283
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->getVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setVisible(Z)V

    .line 281
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->layoutContentPane()V

    .line 291
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->requestRender()V

    goto :goto_0
.end method

.method private showModeViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1538
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    if-eqz v4, :cond_0

    .line 1539
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1540
    .local v1, "color":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    check-cast v4, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->setBackgroundColor(I)V

    .line 1542
    .end local v1    # "color":I
    :cond_0
    iget v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v4, :cond_2

    .line 1543
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 1544
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 1545
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v0, :cond_1

    .line 1546
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/common/le3d/Le3dView;->setVisible(Z)V

    .line 1543
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1550
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v2    # "i":I
    :cond_2
    const/16 v3, 0x8

    .line 1551
    .local v3, "visibleViewSize":I
    iget v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_4

    .line 1552
    const/4 v3, 0x6

    .line 1556
    :goto_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    .line 1557
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 1558
    .restart local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v0, :cond_3

    .line 1559
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/common/le3d/Le3dView;->setVisible(Z)V

    .line 1556
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1554
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v2    # "i":I
    :cond_4
    const/16 v3, 0x8

    goto :goto_1

    .line 1562
    .restart local v2    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    if-eqz v4, :cond_6

    .line 1563
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->reset()V

    .line 1565
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    if-eqz v4, :cond_7

    .line 1566
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->reset()V

    .line 1569
    .end local v3    # "visibleViewSize":I
    :cond_7
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->resetTopViewsAlpha()V

    .line 1570
    return-void
.end method

.method private startCamerModeEntryAnim(Lcom/lenovo/scg/common/le3d/Le3dContainer;FFIII)V
    .locals 7
    .param p1, "cameraModeContainer"    # Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .param p2, "transX"    # F
    .param p3, "transY"    # F
    .param p4, "duration"    # I
    .param p5, "delayTime"    # I
    .param p6, "index"    # I

    .prologue
    .line 1762
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 1763
    invoke-virtual {p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v2

    .line 1764
    .local v2, "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v2, :cond_4

    .line 1765
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1766
    :cond_0
    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateX()F

    move-result v3

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateY()F

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 1768
    :cond_1
    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateX()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateY()F

    move-result v4

    add-float/2addr v4, p3

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getTranslateZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->setTranslate(FFF)V

    .line 1769
    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->setScale(FFF)V

    .line 1770
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setAlpha(F)V

    .line 1772
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    invoke-direct {v0, v2, p4}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1773
    .local v0, "childAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 1774
    :cond_2
    neg-float v3, p2

    neg-float v4, p3

    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 1778
    :goto_1
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 1779
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 1780
    int-to-long v4, p5

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setDelay(J)V

    .line 1781
    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne p6, v3, :cond_6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 1782
    new-instance v3, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$10;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$10;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 1805
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1762
    .end local v0    # "childAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1776
    .restart local v0    # "childAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_5
    neg-float v3, p2

    neg-float v4, p3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    goto :goto_1

    .line 1794
    :cond_6
    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne p6, v3, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1795
    new-instance v3, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$11;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$11;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    goto :goto_2

    .line 1808
    .end local v0    # "childAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    .end local v2    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_7
    return-void
.end method

.method private startCommonChangeFunctionAnim()V
    .locals 12

    .prologue
    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v10, -0x3de00000    # -40.0f

    const/16 v9, 0x12c

    const/4 v8, 0x0

    .line 1712
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {v2, v6, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1713
    .local v2, "proTransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09031f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1714
    .local v1, "proTrans":F
    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_0

    .line 1715
    invoke-virtual {v2, v8, v1, v8}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 1716
    invoke-virtual {v2, v11}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateZ(F)V

    .line 1721
    :goto_0
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1723
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {v0, v6, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1724
    .local v0, "autoTransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_1

    .line 1725
    invoke-virtual {v0, v8, v1, v8}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 1726
    invoke-virtual {v0, v11}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateZ(F)V

    .line 1731
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1733
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090320

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 1734
    .local v4, "textTrans":F
    new-instance v5, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-direct {v5, v6, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1735
    .local v5, "textTransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_2

    .line 1736
    neg-float v6, v4

    invoke-virtual {v5, v6, v8, v8}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 1741
    :goto_2
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1743
    new-instance v3, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    invoke-direct {v3, v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1744
    .local v3, "text1TransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_3

    .line 1745
    neg-float v6, v4

    invoke-virtual {v3, v6, v8, v8}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 1749
    :goto_3
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1758
    return-void

    .line 1718
    .end local v0    # "autoTransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    .end local v3    # "text1TransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    .end local v4    # "textTrans":F
    .end local v5    # "textTransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_0
    neg-float v6, v1

    invoke-virtual {v2, v6, v8, v8}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 1719
    invoke-virtual {v2, v10}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateZ(F)V

    goto :goto_0

    .line 1728
    .restart local v0    # "autoTransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_1
    neg-float v6, v1

    invoke-virtual {v0, v6, v8, v8}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 1729
    invoke-virtual {v0, v10}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateZ(F)V

    goto :goto_1

    .line 1738
    .restart local v4    # "textTrans":F
    .restart local v5    # "textTransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_2
    invoke-virtual {v5, v8, v4, v8}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    goto :goto_2

    .line 1747
    .restart local v3    # "text1TransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_3
    invoke-virtual {v3, v8, v4, v8}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    goto :goto_3
.end method

.method private startEntryAnim(ILcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    const/4 v2, 0x0

    .line 781
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    move-object v1, p2

    .line 782
    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/16 v4, 0x87

    mul-int/lit8 v5, p1, 0x14

    move-object v0, p0

    move v3, v2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startCamerModeEntryAnim(Lcom/lenovo/scg/common/le3d/Le3dContainer;FFIII)V

    .line 789
    :goto_0
    return-void

    .line 784
    :cond_0
    rem-int/lit8 v0, p1, 0x4

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterXInScreenById(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterXInScreenById(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v2, v0

    .line 785
    .local v2, "transX":F
    rem-int/lit8 v0, p1, 0x4

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterYInScreenById(I)I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeViewInitCenterYInScreenById(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v3, v0

    .local v3, "transY":F
    move-object v1, p2

    .line 786
    check-cast v1, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/16 v4, 0x78

    mul-int/lit8 v5, p1, 0xf

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startCamerModeEntryAnim(Lcom/lenovo/scg/common/le3d/Le3dContainer;FFIII)V

    goto :goto_0
.end method

.method private startEntryAnimation()V
    .locals 3

    .prologue
    .line 766
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    .line 767
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mMainHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 768
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initMainHandler()V

    .line 770
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I

    if-ge v1, v2, :cond_2

    .line 771
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 772
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v0, :cond_1

    .line 773
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setAlpha(F)V

    .line 774
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startEntryAnim(ILcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 770
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initOtherProModeViews()V

    .line 778
    return-void
.end method

.method private startFBO()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const v3, 0x46180400    # 9729.0f

    const v9, 0x8d40

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 1656
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    .line 1657
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    invoke-static {v4, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 1658
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    aget v2, v2, v1

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 1660
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    invoke-static {v4, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1661
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1662
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1664
    const/16 v2, 0x2801

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1665
    const/16 v2, 0x2800

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1666
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1667
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1669
    const/16 v2, 0x1908

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 1671
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    aget v3, v3, v1

    invoke-static {v9, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 1677
    :goto_0
    return-void

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    aget v0, v0, v1

    invoke-static {v9, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_0
.end method

.method private startHorEntryAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 792
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v6, 0x6

    if-ge v4, v6, :cond_1

    .line 793
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v2

    .line 794
    .local v2, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v2, :cond_0

    .line 795
    invoke-virtual {v2, v9}, Lcom/lenovo/scg/common/le3d/Le3dView;->setAlpha(F)V

    .line 796
    invoke-virtual {v2, v9, v9, v7}, Lcom/lenovo/scg/common/le3d/Le3dView;->setScale(FFF)V

    .line 792
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 799
    .end local v2    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    .line 800
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initOtherProModeViews()V

    .line 801
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v6, v10}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v5

    .line 802
    .local v5, "secondChild":Lcom/lenovo/scg/common/le3d/Le3dView;
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v6, v11}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v3

    .line 804
    .local v3, "fifthChild":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v5, :cond_2

    .line 805
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->duration:I

    invoke-direct {v0, v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 806
    .local v0, "anim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    invoke-virtual {v0, v8, v8, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 807
    invoke-virtual {v0, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 808
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 809
    new-instance v6, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$5;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$5;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 818
    .end local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_2
    if-eqz v3, :cond_3

    .line 819
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->duration:I

    invoke-direct {v1, v3, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 820
    .local v1, "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    invoke-virtual {v1, v8, v8, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 821
    invoke-virtual {v1, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 822
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 824
    .end local v1    # "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_3
    new-array v6, v11, [I

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    .line 825
    return-void

    .line 824
    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x5
    .end array-data
.end method

.method private startModeViewsAnimEntryMode()V
    .locals 8

    .prologue
    .line 1049
    new-instance v5, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    invoke-direct {v5, v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1050
    .local v5, "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v6}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getAlpha()F

    move-result v0

    .line 1051
    .local v0, "alpha":F
    neg-float v6, v0

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 1052
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1054
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopArrowView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    invoke-direct {v1, v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1055
    .local v1, "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    neg-float v6, v0

    invoke-virtual {v1, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 1056
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1058
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    invoke-direct {v2, v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1059
    .local v2, "anim2":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    neg-float v6, v0

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 1060
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1066
    new-instance v3, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    invoke-direct {v3, v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1067
    .local v3, "anim4":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    neg-float v6, v0

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 1068
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1070
    new-instance v4, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButton:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    invoke-direct {v4, v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1071
    .local v4, "anim5":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    neg-float v6, v0

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 1072
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1074
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->requestRender()V

    .line 1075
    return-void
.end method

.method private startOtherFirstModeAnim()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 830
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 831
    .local v4, "random":Ljava/util/Random;
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 832
    .local v3, "firstIndex":I
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v2

    .line 833
    .local v2, "firstAnimView":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v2, :cond_0

    .line 834
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    aget v6, v6, v3

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_3

    .line 835
    invoke-virtual {v2, v9}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateX(F)V

    .line 839
    :goto_0
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->duration:I

    invoke-direct {v1, v2, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 840
    .local v1, "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    invoke-virtual {v1, v11, v11, v10}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 841
    invoke-virtual {v1, v10}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 842
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    aget v6, v6, v3

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_4

    .line 843
    invoke-virtual {v1, v12}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateX(F)V

    .line 847
    :goto_1
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 848
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    aput v13, v6, v3

    .line 851
    .end local v1    # "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v7, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    rsub-int/lit8 v8, v3, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v5

    .line 852
    .local v5, "secondAnimView":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v5, :cond_1

    .line 853
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    rsub-int/lit8 v7, v3, 0x3

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_5

    .line 854
    invoke-virtual {v5, v9}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateX(F)V

    .line 858
    :goto_2
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->duration:I

    invoke-direct {v0, v5, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 859
    .local v0, "anim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    invoke-virtual {v0, v11, v11, v10}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 860
    invoke-virtual {v0, v10}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 861
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    rsub-int/lit8 v7, v3, 0x3

    aget v6, v6, v7

    rem-int/lit8 v6, v6, 0x3

    if-nez v6, :cond_6

    .line 862
    invoke-virtual {v0, v12}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateX(F)V

    .line 866
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 868
    .end local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mMainHandler:Landroid/os/Handler;

    if-nez v6, :cond_2

    .line 869
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initMainHandler()V

    .line 872
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startOtherSecondModeAnim()V

    .line 873
    iget-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    rsub-int/lit8 v7, v3, 0x3

    aput v13, v6, v7

    .line 874
    return-void

    .line 837
    .end local v5    # "secondAnimView":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_3
    invoke-virtual {v2, v12}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateX(F)V

    goto :goto_0

    .line 845
    .restart local v1    # "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_4
    invoke-virtual {v1, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateX(F)V

    goto :goto_1

    .line 856
    .end local v1    # "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    .restart local v5    # "secondAnimView":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_5
    invoke-virtual {v5, v12}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateX(F)V

    goto :goto_2

    .line 864
    .restart local v0    # "anim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_6
    invoke-virtual {v0, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateX(F)V

    goto :goto_3
.end method

.method private startOtherSecondModeAnim()V
    .locals 10

    .prologue
    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x3d4c0000    # -90.0f

    .line 877
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 878
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    aget v3, v3, v2

    if-ltz v3, :cond_2

    .line 880
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v1

    .line 881
    .local v1, "animView":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-nez v1, :cond_1

    .line 913
    .end local v1    # "animView":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    return-void

    .line 884
    .restart local v1    # "animView":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    aget v3, v3, v2

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_3

    .line 885
    invoke-virtual {v1, v6}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateX(F)V

    .line 889
    :goto_1
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->duration:I

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 890
    .local v0, "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    invoke-virtual {v0, v8, v8, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 891
    invoke-virtual {v0, v7}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 892
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeAnimIndex:[I

    aget v3, v3, v2

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_4

    .line 893
    invoke-virtual {v0, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateX(F)V

    .line 897
    :goto_2
    const-wide/16 v4, 0x50

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setDelay(J)V

    .line 898
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 899
    new-instance v3, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$6;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$6;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 877
    .end local v0    # "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    .end local v1    # "animView":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .restart local v1    # "animView":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_3
    invoke-virtual {v1, v9}, Lcom/lenovo/scg/common/le3d/Le3dView;->setRotateX(F)V

    goto :goto_1

    .line 895
    .restart local v0    # "anim1":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    :cond_4
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setRotateX(F)V

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1483
    const-string v2, "jiaxiaowei"

    const-string/jumbo v3, "showModeWindow-------------destroy-----------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1485
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mRootView:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 1486
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->destory()V

    .line 1484
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1490
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    if-eqz v2, :cond_3

    .line 1491
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    aget v2, v2, v4

    if-eqz v2, :cond_2

    .line 1492
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1493
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    aput v4, v2, v4

    .line 1495
    :cond_2
    iput-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTexture:[I

    .line 1497
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    if-eqz v2, :cond_5

    .line 1498
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    aget v2, v2, v4

    if-eqz v2, :cond_4

    .line 1499
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 1500
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    aput v4, v2, v4

    .line 1502
    :cond_4
    iput-object v6, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFrameBuffer:[I

    .line 1504
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mControllerProxy:Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;

    check-cast v2, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->restoreBackgroundColor()V

    .line 1505
    return-void
.end method

.method public draw()V
    .locals 4

    .prologue
    const/16 v3, 0x303

    const/4 v2, 0x0

    .line 1623
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->saveFrameBufferBind()V

    .line 1624
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startFBO()V

    .line 1625
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1626
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1628
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->saveBlendFunc()V

    .line 1629
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->updateBlendFunc(II)V

    .line 1630
    invoke-super {p0}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->draw()V

    .line 1631
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->endFBO()V

    .line 1632
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->restoreBlendFunc()V

    .line 1633
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->saveBlendFunc()V

    .line 1634
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/16 v1, 0x302

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->updateBlendFunc(II)V

    .line 1636
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTextureImage:Lcom/lenovo/scg/common/le3d/Le3dTextureImage;

    if-nez v0, :cond_0

    .line 1637
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initTextureImage()V

    .line 1639
    :cond_0
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1640
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1641
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTextureImage:Lcom/lenovo/scg/common/le3d/Le3dTextureImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->draw()V

    .line 1642
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->restoreBlendFunc()V

    .line 1643
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->restoreFrameBufferBind()V

    .line 1644
    return-void
.end method

.method public entry()V
    .locals 1

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    if-eqz v0, :cond_0

    .line 1111
    :goto_0
    return-void

    .line 1105
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->showModeViews()V

    .line 1106
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    .line 1107
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startEntryAnimation()V

    goto :goto_0

    .line 1109
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startHorEntryAnimation()V

    goto :goto_0
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1452
    return-void
.end method

.method public initViews()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initValues()V

    .line 181
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initModeContainer()V

    .line 182
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initModeViews()V

    .line 183
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initScrollBarView()V

    .line 184
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initTopModeView()V

    .line 185
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initTopModeTextView()V

    .line 186
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initAutoProButtons()V

    .line 187
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->layoutContentPane()V

    .line 188
    return-void
.end method

.method public layoutContentPane()V
    .locals 2

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-nez v0, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1138
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->stopFling()V

    .line 1140
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->layoutTopModeView()V

    .line 1141
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->layoutTopModeTextView()V

    .line 1142
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->layoutScrollBar()V

    .line 1143
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->layoutModeViews()V

    .line 1144
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->layoutAutoAndProView()V

    .line 1145
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->requestRender()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsAnimationing:Z

    if-eqz v0, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1118
    :cond_0
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "showModeWindow------onBackPressed------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->hideShowModeWindow(I)V

    .line 1121
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->finishGaussExt()V

    .line 1123
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->onModeFrameBackpressed()V

    goto :goto_0
.end method

.method protected onCallback(Lcom/lenovo/scg/common/le3d/Le3dCallbackData;)V
    .locals 0
    .param p1, "callbackData"    # Lcom/lenovo/scg/common/le3d/Le3dCallbackData;

    .prologue
    .line 1511
    return-void
.end method

.method public onFling(IFF)V
    .locals 12
    .param p1, "direction"    # I
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 741
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->isCanShowScrollView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    const-string v0, "jiaxiaowei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------showModeWindow-----onFling----mOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    .line 746
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeContainerVerMoveDistance()F

    move-result v11

    .line 747
    .local v11, "max":F
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v2

    float-to-int v2, v2

    float-to-int v3, p3

    neg-int v4, v3

    float-to-int v8, v11

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->fling(IIIIIIII)V

    .line 752
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onFling(IFF)V

    goto :goto_0

    .line 749
    .end local v11    # "max":F
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getModeContainerHorMoveDistance()F

    move-result v11

    .line 750
    .restart local v11    # "max":F
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateX()F

    move-result v0

    float-to-int v3, v0

    float-to-int v5, p2

    float-to-int v8, v11

    move v4, v1

    move v6, v1

    move v7, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->fling(IIIIIIII)V

    goto :goto_1
.end method

.method public onHide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1457
    const-string v2, "jiaxiaowei"

    const-string/jumbo v3, "showModeWindow----onHide----"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->stopFling()V

    .line 1459
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->resetCenterPointInScreen()V

    .line 1460
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v4, v4, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setTranslate(FFF)V

    .line 1461
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1462
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 1463
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {v0, v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->setVisible(Z)V

    .line 1461
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1467
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v2, :cond_3

    .line 1468
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setVisible(Z)V

    .line 1469
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1470
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 1471
    .restart local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dView;->destory()V

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1474
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .line 1476
    :cond_3
    return-void
.end method

.method public onMove(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, 0x0

    .line 1173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1174
    .local v2, "start":J
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onMove(FF)V

    .line 1175
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    if-eqz v5, :cond_0

    .line 1178
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->isClicked(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1179
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v5}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1180
    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 1181
    .local v4, "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 1182
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 1189
    .end local v4    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->isCanMove(FF)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1211
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v5, v5, 0xb4

    if-nez v5, :cond_3

    .line 1193
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLastMoveY:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 1194
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLastMoveY:F

    sub-float v1, p2, v5

    .line 1195
    .local v1, "moveY":F
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getMoveY(F)F

    move-result v1

    .line 1196
    cmpl-float v5, v1, v6

    if-eqz v5, :cond_2

    .line 1197
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v5, v6, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->onMove(FF)V

    .line 1200
    .end local v1    # "moveY":F
    :cond_2
    iput p2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLastMoveY:F

    goto :goto_0

    .line 1202
    :cond_3
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLastMoveX:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    .line 1203
    iget v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLastMoveX:F

    sub-float v0, p1, v5

    .line 1204
    .local v0, "moveX":F
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getMoveX(F)F

    move-result v0

    .line 1205
    cmpl-float v5, v0, v6

    if-eqz v5, :cond_4

    .line 1206
    iget-object v5, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v5, v0, v6}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->onMove(FF)V

    .line 1209
    .end local v0    # "moveX":F
    :cond_4
    iput p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLastMoveX:F

    goto :goto_0
.end method

.method public onPressDown(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1335
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    if-eqz v3, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onPressDown(FF)V

    .line 1339
    iput p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownX:F

    .line 1340
    iput p2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownY:F

    .line 1341
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getCurrentModeBtn()Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1342
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getCurrentModeBtn()Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->clickTest(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1343
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getCurrentModeBtn()Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 1344
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1345
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressDown(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto :goto_0

    .line 1351
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    if-eqz v3, :cond_3

    .line 1352
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v3, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->clickTest(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1353
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iput-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 1354
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1355
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mTopModeTextView1:Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressDown(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto :goto_0

    .line 1370
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v3, :cond_0

    .line 1371
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1372
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewFromId(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .line 1373
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dContainer;
    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->clickTest(FF)Z

    move-result v1

    .line 1377
    .local v1, "click":Z
    if-eqz v1, :cond_4

    .line 1378
    iput-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 1379
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1380
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressDown(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto/16 :goto_0

    .line 1371
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1385
    .end local v0    # "child":Lcom/lenovo/scg/common/le3d/Le3dContainer;
    .end local v1    # "click":Z
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsClickedBlankSpace:Z

    goto/16 :goto_0
.end method

.method public onPressUp(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 1392
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onPressUp(FF)V

    .line 1393
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    if-eqz v1, :cond_4

    .line 1394
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->clickTest(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->isClicked(FF)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1395
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1396
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 1423
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 1425
    :cond_2
    return-void

    .line 1399
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    .line 1401
    .local v0, "clickView":Lcom/lenovo/scg/common/le3d/Le3dView;
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/common/le3d/EventListener;->onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 1402
    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mPressDownButton:Lcom/lenovo/scg/common/le3d/Le3dView;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getEventListener()Lcom/lenovo/scg/common/le3d/EventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/common/le3d/EventListener;->onClick(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    goto :goto_0

    .line 1407
    .end local v0    # "clickView":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_4
    const-string v1, "ShowModeWindow onPressUp"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1412
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsClickedBlankSpace:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->isClicked(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsAnimationing:Z

    if-nez v1, :cond_5

    .line 1413
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsClickedBlankSpace:Z

    .line 1414
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->onBackPressed()V

    .line 1421
    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScroll(FF)V
    .locals 0
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 1257
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onScroll(FF)V

    .line 1258
    return-void
.end method

.method public onSingleTapUp(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1430
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->onSingleTapUp(FF)V

    .line 1431
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getCurrentModeBtn()Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1432
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getCurrentModeBtn()Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->clickTest(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1433
    iget v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v3, :cond_0

    .line 1447
    :cond_0
    return-void

    .line 1437
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v3, :cond_0

    .line 1438
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1439
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewFromId(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v0

    .line 1440
    .local v0, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->clickTest(FF)Z

    move-result v1

    .line 1441
    .local v1, "click":Z
    if-nez v1, :cond_0

    .line 1438
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public show(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1605
    invoke-super {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dWindow;->show(I)V

    .line 1606
    iget v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    if-nez v0, :cond_1

    .line 1607
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->showModeViews()V

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->showAllModeViews()V

    .line 1610
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    if-eqz v0, :cond_2

    .line 1611
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->reset()V

    .line 1613
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHorLe3dScrollBar:Lcom/lenovo/scg/common/le3d/Le3dScrollBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dScrollBar;->reset()V

    goto :goto_0
.end method

.method public startChangeFuncAnim()V
    .locals 4

    .prologue
    const v3, 0x3dcccccd    # 0.1f

    .line 1694
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsInAnimation:Z

    .line 1695
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startCommonChangeFunctionAnim()V

    .line 1696
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 1697
    .local v0, "modeContainerTransAnim":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setAlpha(F)V

    .line 1698
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 1699
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 1701
    new-instance v1, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$9;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 1709
    return-void
.end method

.method public startEnterModeAnimation(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 12
    .param p1, "modeView"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 924
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mIsEntryMode:Z

    move-object v9, p1

    .line 925
    check-cast v9, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-direct {p0, v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initEntryModeAnimContainer(Lcom/lenovo/scg/common/le3d/Le3dContainer;)V

    .line 926
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startModeViewsAnimEntryMode()V

    .line 928
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setCenter(I)V

    .line 929
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v9}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 930
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;

    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v9, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimDuration:I

    invoke-direct {v0, v9, v10}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;-><init>(Lcom/lenovo/scg/common/le3d/Le3dView;I)V

    .line 931
    .local v0, "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    iget v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I

    rem-int/lit16 v9, v9, 0xb4

    if-nez v9, :cond_2

    .line 932
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v9}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getHeight()F

    move-result v9

    iget v10, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I

    int-to-float v10, v10

    sub-float v3, v9, v10

    .line 933
    .local v3, "height":F
    iget v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    int-to-float v9, v9

    div-float v7, v9, v3

    .line 935
    .local v7, "scale":F
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v2

    .line 936
    .local v2, "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v2, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-nez v9, :cond_1

    .line 937
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setVisible(Z)V

    .line 938
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->requestRender()V

    .line 939
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getID()I

    move-result v5

    .line 940
    .local v5, "id":I
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/cameramode/CameraMode;

    .line 941
    .local v1, "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    if-eqz v1, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    invoke-virtual {v9, v1, v10}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->enterMode(Lcom/lenovo/scg/camera/cameramode/CameraMode;I)V

    .end local v1    # "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .end local v5    # "id":I
    :cond_1
    move-object v9, p1

    .line 945
    check-cast v9, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v9, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v6

    .line 946
    .local v6, "oriAnimView":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v6}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenterXInScreen()F

    move-result v9

    invoke-direct {p0, v4, v7, v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getAnimViewTransX(IFF)F

    move-result v9

    invoke-virtual {v6}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenterYInScreen()F

    move-result v10

    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v11}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-direct {p0, v4, v7, v10}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getAnimViewTransY(IFF)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9, v10, v11}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 947
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v7, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    .line 965
    .end local v3    # "height":F
    :goto_1
    new-instance v9, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;

    invoke-direct {v9, p0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$7;-><init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dView;)V

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setStopListener(Lcom/lenovo/scg/common/le3d/Le3dAnimation$StopListener;)V

    .line 980
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addAnimation(Lcom/lenovo/scg/common/le3d/Le3dAnimation;)V

    .line 929
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 949
    .end local v2    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v6    # "oriAnimView":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v7    # "scale":F
    :cond_2
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v9}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getWidth()F

    move-result v8

    .line 950
    .local v8, "width":F
    iget v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenHeight:I

    int-to-float v9, v9

    div-float v7, v9, v8

    .line 951
    .restart local v7    # "scale":F
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v2

    .line 952
    .restart local v2    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v2, :cond_3

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-nez v9, :cond_4

    .line 953
    :cond_3
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mEntryModeAnimContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->setVisible(Z)V

    .line 954
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->requestRender()V

    .line 955
    invoke-virtual {p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->getID()I

    move-result v5

    .line 956
    .restart local v5    # "id":I
    iget-object v9, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/cameramode/CameraMode;

    .line 957
    .restart local v1    # "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    if-eqz v1, :cond_4

    .line 958
    invoke-direct {p0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I

    invoke-virtual {v9, v1, v10}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->enterMode(Lcom/lenovo/scg/camera/cameramode/CameraMode;I)V

    .end local v1    # "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .end local v5    # "id":I
    :cond_4
    move-object v9, p1

    .line 961
    check-cast v9, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v9, v4}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v6

    .line 962
    .restart local v6    # "oriAnimView":Lcom/lenovo/scg/common/le3d/Le3dView;
    invoke-virtual {v6}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenterXInScreen()F

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v10}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-direct {p0, v4, v7, v9}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getAnimViewTransX(IFF)F

    move-result v9

    invoke-virtual {v6}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenterYInScreen()F

    move-result v10

    iget-object v11, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v11}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getTranslateY()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-direct {p0, v4, v7, v10}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getAnimViewTransY(IFF)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9, v10, v11}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setTranslate(FFF)V

    .line 963
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v7, v9}, Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;->setScale(FFF)V

    goto :goto_1

    .line 983
    .end local v0    # "animation":Lcom/lenovo/scg/common/le3d/Le3dViewBasicAnimation;
    .end local v2    # "child":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v6    # "oriAnimView":Lcom/lenovo/scg/common/le3d/Le3dView;
    .end local v7    # "scale":F
    .end local v8    # "width":F
    :cond_5
    return-void
.end method
