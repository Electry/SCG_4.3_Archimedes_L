.class public Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "SpecialEffectWindow.java"

# interfaces
.implements Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyDownUpListener;,
        Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;
    }
.end annotation


# static fields
.field public static LiveEffectListLength:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private duration:I

.field private effectPaint:Landroid/graphics/Paint;

.field private mBlueTextPaint:Landroid/graphics/Paint;

.field private mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffectNameId:I

.field private mDownUpDetector:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;

.field private mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mEffectFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mEffectListTopLeftY:F

.field private mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

.field private mEffectNameBackgroundOffset:F

.field private mEffectNameId:[I

.field private mEffectNameOffset:F

.field private mEffectRectBorder:F

.field private mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field private mEnableSelEffect:Z

.field private mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;

.field private mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

.field private mHorDownPointCenterX:F

.field private mHorDownPointCenterY:F

.field private mHorListMinusVertList:F

.field private mHorRectToRectMargin:F

.field private mHorUpPointCenterX:F

.field private mHorUpPointCenterY:F

.field private mHorizonalLeftMargin:F

.field private mHorizonalTopMargin:F

.field private mHorizontalBackgroundW:F

.field private mHorizontalMoveX:F

.field private mIsDown:Z

.field private mOrientation:I

.field private mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

.field private mPointsWidth:F

.field private mPreOrientation:I

.field private mRecordCurrentMoveX:F

.field private mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private mScreenHeight:F

.field private mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

.field private mScreenWidth:F

.field private mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

.field private mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

.field private mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

.field private mTextBackgroundH:F

.field private mVertDownPointCenterX:F

.field private mVertDownPointCenterY:F

.field private mVertRectToRectMargin:F

.field private mVertUpPointCenterX:F

.field private mVertUpPointCenterY:F

.field private mVerticalBackgroundW:F

.field private mVerticalLeftMargin:F

.field private mVerticalTopMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0xc

    sput v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numOfType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F

    .line 105
    const-string v0, "SpecialEffectWindow"

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    .line 977
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mIsDown:Z

    .line 157
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    .line 158
    new-instance v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;

    invoke-direct {v0, p0, v4}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mGestureListener:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;

    .line 159
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 160
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mGestureListener:Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 161
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;

    new-instance v1, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyDownUpListener;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$MyDownUpListener;-><init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;)V

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;-><init>(Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mDownUpDetector:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;

    .line 162
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    .line 164
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setVisibility(I)V

    .line 165
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 168
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-direct {v0, p1, p0, v1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GLView;I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 171
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->initViews(I)V

    .line 172
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/EffectPointButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setEnableSelEffect(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertDownPointCenterX:F

    return v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertDownPointCenterY:F

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorDownPointCenterX:F

    return v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorDownPointCenterY:F

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertUpPointCenterX:F

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertUpPointCenterY:F

    return v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorUpPointCenterX:F

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorUpPointCenterY:F

    return v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    return v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertRectToRectMargin:F

    return v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    return v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorRectToRectMargin:F

    return v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mIsDown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mIsDown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEnableSelEffect:Z

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F

    return v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
    .param p1, "x1"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F

    return p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;I)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    return v0
.end method

.method private draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v2, 0x0

    .line 655
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->update()V

    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->setGLRoot(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->resetAlpha()V

    .line 659
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->getCanvasSaveFlags()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 660
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->calculate(J)Z

    .line 661
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 662
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 663
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->resetAlpha()V

    .line 666
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->getCanvasSaveFlags()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 667
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->calculate(J)Z

    .line 668
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 669
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 670
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_0

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    if-eqz v0, :cond_5

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->isActive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 673
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->setAlpha(F)V

    .line 674
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 675
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->setAlpha(F)V

    .line 680
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 681
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    goto :goto_0

    .line 684
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0
.end method

.method private getDimensOfResource(I)F
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getEffectContentInitCenterX(I)F
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 821
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 822
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalLeftMargin:F

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorRectToRectMargin:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 824
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalLeftMargin:F

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertRectToRectMargin:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getEffectContentInitCenterY(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 831
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 832
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalTopMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 835
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalTopMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getEffectNameInitCenterX(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    return v0
.end method

.method private getEffectNameInitCenterY(I)F
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 847
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 848
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalTopMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mTextBackgroundH:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameOffset:F

    sub-float/2addr v0, v1

    .line 851
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalTopMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mTextBackgroundH:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameOffset:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private getTextureDrawRect(II)Landroid/graphics/RectF;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 728
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 729
    .local v0, "rcDst":Landroid/graphics/RectF;
    if-le p2, p1, :cond_0

    .line 730
    sub-int v1, p2, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, p1

    add-int v3, p2, p1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 735
    :goto_0
    return-object v0

    .line 732
    :cond_0
    neg-int v1, p2

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-int v2, p2, p1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, p2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method private initButtons()V
    .locals 3

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEnableSelEffect:Z

    if-eqz v0, :cond_1

    .line 269
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 270
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "sss init buttons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setViewSize(FF)V

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorUpPointCenterX:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorUpPointCenterY:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setCenterPointInScreenForward(FF)V

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->layoutForPointView(I)V

    .line 295
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "xx init buttons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setViewSize(FF)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertUpPointCenterX:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertUpPointCenterY:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setCenterPointInScreenForward(FF)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->layoutForPointView(I)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setViewSize(FF)V

    .line 284
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertDownPointCenterX:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertDownPointCenterY:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setCenterPointInScreenForward(FF)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->layoutForPointView(I)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorDownPointCenterX:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorDownPointCenterY:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->setCenterPointInScreenForward(FF)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->layoutForPointView(I)V

    goto :goto_0
.end method

.method private initEffectContainer()V
    .locals 13

    .prologue
    .line 305
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v8, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    if-ge v6, v8, :cond_4

    .line 306
    new-instance v5, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;-><init>(Landroid/content/Context;)V

    .line 307
    .local v5, "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setID(I)V

    .line 308
    iget v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setViewSize(FF)V

    .line 309
    const-string v8, "DebugSize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mEffectRectBorder = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenWidth:F

    iget v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenHeight:F

    invoke-virtual {v5, v8, v9}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setScreenSize(FF)V

    .line 311
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aget-object v8, v8, v6

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 312
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setEffectManager(Lcom/lenovo/scg/camera/effect/LiveEffectManager;)V

    .line 313
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 314
    new-instance v8, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;

    invoke-direct {v8, p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow$1;-><init>(Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;)V

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setEventListener(Lcom/lenovo/scg/camera/effect/EventListener;)V

    .line 374
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v8, v5}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 377
    new-instance v4, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    .line 378
    .local v4, "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    sget v8, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/2addr v8, v6

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 379
    iget v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenWidth:F

    iget v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenHeight:F

    invoke-virtual {v4, v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setScreenSize(FF)V

    .line 380
    const v8, 0x7f020475

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 382
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 383
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v8, v4}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 384
    const-string v8, "DebugSize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gridBitmap = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getViewWidth()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "gridBitmap heigth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getViewHeight()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v1, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    .line 388
    .local v1, "effectNameBackground":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    if-nez v6, :cond_0

    .line 389
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 393
    :goto_1
    sget v8, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    invoke-virtual {v1, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 394
    const-string/jumbo v8, "tyl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mEffectNameId[i] ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameId:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const v8, 0x7f020477

    invoke-virtual {v1, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 396
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v9

    invoke-virtual {v1, v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 397
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v8, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 398
    const-string v8, "DebugSize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "effectNameBackground = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getViewWidth()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "effectNameBackground heigth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getViewHeight()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v2, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    .line 402
    .local v2, "effectNameHightBackground":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    if-nez v6, :cond_1

    .line 403
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 407
    :goto_2
    sget v8, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v8, v8, 0x3

    add-int/2addr v8, v6

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 408
    const-string/jumbo v8, "tyl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mEffectNameId[i] ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameId:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const v8, 0x7f020478

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 410
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v9

    invoke-virtual {v2, v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 411
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v8, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 414
    new-instance v3, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    .line 415
    .local v3, "effectNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    if-nez v6, :cond_2

    .line 416
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 420
    :goto_3
    sget v8, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v6

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 421
    const-string/jumbo v8, "tyl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mEffectNameId[i] ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameId:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameId:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902f1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->effectPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0902f0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v3, v8, v9, v10, v11}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V

    .line 425
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v9

    invoke-virtual {v3, v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 426
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v8, v3}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 429
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    .line 430
    .local v0, "effectColorNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    if-nez v6, :cond_3

    .line 431
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 435
    :goto_4
    sget v8, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v6

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 436
    const-string/jumbo v8, "tyl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mEffectNameId[i] ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameId:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameId:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0902f1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mBlueTextPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0902f0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V

    .line 440
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v8

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 441
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 305
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 391
    .end local v0    # "effectColorNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v2    # "effectNameHightBackground":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v3    # "effectNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    goto/16 :goto_1

    .line 405
    .restart local v2    # "effectNameHightBackground":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    goto/16 :goto_2

    .line 418
    .restart local v3    # "effectNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    goto/16 :goto_3

    .line 433
    .restart local v0    # "effectColorNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    goto/16 :goto_4

    .line 445
    .end local v0    # "effectColorNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v1    # "effectNameBackground":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v2    # "effectNameHightBackground":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v3    # "effectNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v4    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v5    # "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_4
    new-instance v8, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 446
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v9, 0x7f020476

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 447
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    iget v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v7

    .line 448
    .local v7, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    iget v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I

    sget v10, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 449
    .restart local v4    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 450
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v9

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 451
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    sget v9, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 452
    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    iget-object v9, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 462
    return-void
.end method

.method private initValues(I)V
    .locals 6
    .param p1, "numOfType"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    new-array v0, v5, [Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_FilmLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_MapleLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_MemoryLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_CountryLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_VelviaLomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sepia:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Comic:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sketch:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Mirror:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 195
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameId:[I

    .line 201
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->duration:I

    .line 202
    const v0, 0x7f0902b8

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectListTopLeftY:F

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenWidth:F

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenHeight:F

    .line 208
    const v0, 0x7f0902e9

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    .line 209
    const v0, 0x7f0902ed

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalMoveX:F

    .line 213
    const v0, 0x7f0902e5

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    .line 215
    const v0, 0x7f0902e6

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalLeftMargin:F

    .line 217
    const v0, 0x7f0902e7

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorRectToRectMargin:F

    .line 219
    const v0, 0x7f0902e8

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalTopMargin:F

    .line 221
    const v0, 0x7f0902eb

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalLeftMargin:F

    .line 223
    const v0, 0x7f0902ea

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertRectToRectMargin:F

    .line 225
    const v0, 0x7f0902ec

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalTopMargin:F

    .line 227
    const v0, 0x7f0902ee

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mTextBackgroundH:F

    .line 229
    const v0, 0x7f0902fb

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointsWidth:F

    .line 230
    const v0, 0x7f0902fc

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertDownPointCenterX:F

    .line 231
    const v0, 0x7f0902fd

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertDownPointCenterY:F

    .line 233
    const v0, 0x7f090300

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorDownPointCenterX:F

    .line 234
    const v0, 0x7f090301

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorDownPointCenterY:F

    .line 236
    const v0, 0x7f090302

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorUpPointCenterX:F

    .line 237
    const v0, 0x7f090303

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorUpPointCenterY:F

    .line 239
    const v0, 0x7f0902fe

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertUpPointCenterX:F

    .line 240
    const v0, 0x7f0902ff

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertUpPointCenterY:F

    .line 242
    const v0, 0x7f0902f2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameOffset:F

    .line 243
    const v0, 0x7f0902f3

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectNameBackgroundOffset:F

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->effectPaint:Landroid/graphics/Paint;

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->effectPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mBlueTextPaint:Landroid/graphics/Paint;

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mBlueTextPaint:Landroid/graphics/Paint;

    const v1, -0xda3901

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iput p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I

    .line 254
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initViews  effectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    .line 257
    new-instance v0, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->setScreenSize(FF)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->setOnFlingFinishedListener(Lcom/lenovo/scg/camera/effect/SpecialEffectContainer$OnFlingFinishedListener;)V

    .line 261
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setEnableSelEffect(Z)V

    .line 263
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorRectToRectMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVertRectToRectMargin:F

    sub-float/2addr v0, v1

    sget v1, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorListMinusVertList:F

    .line 265
    return-void

    .line 195
    nop

    :array_0
    .array-data 4
        0x7f0f008a
        0x7f0f008b
        0x7f0f008c
        0x7f0f008d
        0x7f0f008e
        0x7f0f008f
        0x7f0f0090
        0x7f0f0091
        0x7f0f0092
        0x7f0f01da
        0x7f0f01d8
        0x7f0f01d9
    .end array-data
.end method

.method private layoutForEffectContent(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V
    .locals 3
    .param p1, "child"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .param p2, "i"    # I

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 524
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_3

    .line 525
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_1

    .line 526
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 529
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorListMinusVertList:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane content position getRecordMoveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane content position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_2
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 535
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ddd layoutContentPane content position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 540
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_4

    .line 541
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 543
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 544
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorListMinusVertList:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 546
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane content position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 549
    :cond_5
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 555
    :cond_6
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0
.end method

.method private layoutForEffectName(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V
    .locals 3
    .param p1, "child"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .param p2, "i"    # I

    .prologue
    .line 562
    if-eqz p1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 564
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_4

    .line 565
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_1

    .line 566
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 569
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorListMinusVertList:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 571
    sget v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    sget v1, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 572
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordMoveX name index LiveEffectListLength * 5 - 1 i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getPreOrientation()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    if-eq v0, v1, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorListMinusVertList:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setRecordMoveX(F)V

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordMoveX name position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setPreOrientaion(I)V

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane content position getRecordMoveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane content position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 582
    :cond_3
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 583
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ddd layoutContentPane content position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 588
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_5

    .line 589
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 591
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 592
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorListMinusVertList:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 594
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane content position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget v0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    sget v1, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getPreOrientation()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorListMinusVertList:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setRecordMoveX(F)V

    .line 598
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   tttt getRecordMoveX name position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getRecordMoveX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setPreOrientaion(I)V

    goto/16 :goto_0

    .line 603
    :cond_6
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 609
    :cond_7
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterX(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectNameInitCenterY(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0
.end method

.method private setCenterPointForClickBitmap(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 4
    .param p1, "child"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 616
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setVisibility(I)V

    .line 617
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 618
    .local v0, "Effectchild":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEffectClickView mCurrentEffectNameId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mCurrentEffectNameId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v1

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 622
    return-void
.end method

.method private setEnableSelEffect(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEnableSelEffect:Z

    .line 909
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEffectSelEnable(Z)V

    .line 911
    return-void
.end method


# virtual methods
.method public destoryWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 769
    const-string/jumbo v2, "tyl"

    const-string v3, "destoryWindow in LiveEffectWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 772
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v2, :cond_0

    .line 773
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->destoryEffect()V

    .line 776
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    if-eqz v2, :cond_2

    .line 777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 778
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    .line 779
    .local v1, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v1, :cond_1

    .line 780
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->destoryEffect()V

    .line 777
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    if-eqz v2, :cond_3

    .line 786
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->destory()V

    .line 789
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_4

    .line 790
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 791
    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 794
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v2, :cond_5

    .line 795
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 796
    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 800
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    if-eqz v2, :cond_6

    .line 801
    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    .line 804
    :cond_6
    return-void
.end method

.method public getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v0

    return-object v0
.end method

.method public getEffectScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getIsEnableSel()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEnableSelEffect:Z

    return v0
.end method

.method public getPreOrientation()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPreOrientation:I

    return v0
.end method

.method public getRecordMoveX()F
    .locals 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xxx getRecordMoveX mRecordCurrentMoveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F

    return v0
.end method

.method public initViews(I)V
    .locals 0
    .param p1, "numOfType"    # I

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->initValues(I)V

    .line 176
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->initButtons()V

    .line 177
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->initEffectContainer()V

    .line 178
    return-void
.end method

.method public layoutContentPane()V
    .locals 5

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->initButtons()V

    .line 495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 496
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 497
    .local v0, "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v0, :cond_0

    .line 498
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    if-ge v1, v2, :cond_1

    .line 499
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->layoutForEffectContent(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    .line 495
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_1
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    if-lt v1, v2, :cond_2

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    .line 501
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    sub-int v2, v1, v2

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->layoutForEffectContent(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    goto :goto_1

    .line 502
    :cond_2
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_3

    .line 503
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->layoutForEffectName(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    goto :goto_1

    .line 504
    :cond_3
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_4

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_4

    .line 505
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v2, v1, v2

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->layoutForEffectName(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    goto :goto_1

    .line 506
    :cond_4
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x4

    if-lt v1, v2, :cond_5

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x5

    if-ge v1, v2, :cond_5

    .line 507
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v1, v2

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->layoutForEffectName(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    goto :goto_1

    .line 509
    :cond_5
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x5

    if-lt v1, v2, :cond_6

    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x6

    if-ge v1, v2, :cond_6

    .line 510
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x5

    sub-int v2, v1, v2

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->layoutForEffectName(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    goto/16 :goto_1

    .line 514
    :cond_6
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setCenterPointForClickBitmap(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 519
    .end local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_7
    return-void
.end method

.method public onFlingFinished(Z)V
    .locals 3
    .param p1, "IsFlingFinished"    # Z

    .prologue
    const/4 v2, 0x0

    .line 936
    if-eqz p1, :cond_0

    .line 937
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getEffectContentInitCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F

    .line 938
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFlingFinished mRecordCurrentMoveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v7, 0x0

    .line 466
    invoke-super/range {p0 .. p5}, Lcom/lenovo/scg/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 468
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v6

    .line 469
    .local v6, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    .line 470
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout mOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalLeftMargin:F

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalTopMargin:F

    float-to-int v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalLeftMargin:F

    iget v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHorizonalTopMargin:F

    iget v5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->layout(IIIII)V

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenHeight:F

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenWidth:F

    float-to-int v2, v2

    invoke-virtual {v0, v7, v7, v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->layout(IIII)V

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenHeight:F

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenWidth:F

    float-to-int v2, v2

    invoke-virtual {v0, v7, v7, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->layout(IIII)V

    .line 477
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->layoutContentPane()V

    .line 479
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout horizontal letf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalLeftMargin:F

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalTopMargin:F

    float-to-int v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalLeftMargin:F

    iget v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mVerticalTopMargin:F

    iget v5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mOrientation:I

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->layout(IIIII)V

    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenHeight:F

    float-to-int v2, v2

    invoke-virtual {v0, v7, v7, v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->layout(IIII)V

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenHeight:F

    float-to-int v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenWidth:F

    float-to-int v2, v2

    invoke-virtual {v0, v7, v7, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->layout(IIII)V

    .line 486
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->layoutContentPane()V

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 963
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 964
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mDownUpDetector:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 965
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouch event.getX() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event.getY() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEnableSelEffect:Z

    if-eqz v1, :cond_1

    .line 971
    :cond_0
    :goto_0
    return v0

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/EffectPointButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 971
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 10
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v8, 0x0

    .line 691
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getFboDrawTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v6, :cond_2

    .line 692
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 693
    .local v1, "rcSrc":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->getTextureDrawRect(II)Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 694
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 695
    .local v0, "rcDst":Landroid/graphics/RectF;
    iget v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    iget v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 696
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mExtTexture width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v6, :cond_0

    .line 699
    new-instance v6, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-direct {v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 702
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 703
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v6, p1, v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 704
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 706
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 707
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 710
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v6, :cond_1

    .line 711
    new-instance v6, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    iget v7, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    float-to-int v7, v7

    iget v8, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectRectBorder:F

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 712
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v6}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 714
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mEffectFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setEffectFBO(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 717
    .local v2, "t1":J
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {p0, p1, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 718
    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPointView:Lcom/lenovo/scg/camera/effect/EffectPointButton;

    invoke-virtual {p0, p1, v6}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 719
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 721
    .local v4, "t2":J
    const-string v6, "SpecialEffectWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "draw time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v4, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v0    # "rcDst":Landroid/graphics/RectF;
    .end local v1    # "rcSrc":Landroid/graphics/RectF;
    .end local v2    # "t1":J
    .end local v4    # "t2":J
    :cond_2
    return-void
.end method

.method public setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 898
    :cond_0
    return-void
.end method

.method public setEffectFBO(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 3
    .param p1, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 755
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    if-ge v1, v2, :cond_0

    .line 756
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 757
    .local v0, "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setFBO(Lcom/lenovo/scg/le3deffect/Le3DFBO;)Z

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    .end local v0    # "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_0
    return-void
.end method

.method public setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 867
    return-void
.end method

.method public setPreOrientaion(I)V
    .locals 0
    .param p1, "preOrienation"    # I

    .prologue
    .line 953
    iput p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mPreOrientation:I

    .line 954
    return-void
.end method

.method public setRecordMoveX(F)V
    .locals 0
    .param p1, "moveX"    # F

    .prologue
    .line 943
    iput p1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mRecordCurrentMoveX:F

    .line 944
    return-void
.end method

.method public setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 3
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 747
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->LiveEffectListLength:I

    if-ge v1, v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/SpecialEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 749
    .local v0, "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 747
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    .end local v0    # "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_0
    return-void
.end method

.method public startEffectHideAnimation()V
    .locals 3

    .prologue
    .line 633
    new-instance v0, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 635
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->duration:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->setDuration(I)V

    .line 636
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mHideAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->start()V

    .line 637
    return-void
.end method

.method public startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V
    .locals 7
    .param p1, "effectHandler"    # Landroid/os/Handler;
    .param p2, "jpegData"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I
    .param p6, "IsOneShot"    # Z

    .prologue
    .line 928
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V

    .line 931
    :cond_0
    return-void
.end method

.method public startEffectShowAnimation()V
    .locals 3

    .prologue
    .line 640
    new-instance v0, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    .line 641
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 642
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->duration:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->setDuration(I)V

    .line 643
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->mShowAnim:Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/anim/AlphaAnimation;->start()V

    .line 644
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/SpecialEffectWindow;->setEnableSelEffect(Z)V

    .line 645
    return-void
.end method
