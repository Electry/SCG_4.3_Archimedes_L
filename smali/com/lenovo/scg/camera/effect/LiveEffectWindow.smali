.class public Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "LiveEffectWindow.java"

# interfaces
.implements Lcom/lenovo/scg/camera/effect/LiveEffectContainer$OnFlingFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;,
        Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private duration:I

.field private effectPaint:Landroid/graphics/Paint;

.field private mChildViewHeight:F

.field private mChildViewWidth:F

.field private mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

.field private mContext:Landroid/content/Context;

.field private mCurrentEffectNameId:I

.field private mDownInScrolling:Z

.field private mDownUpDetector:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;

.field private mDrawExtRect:Landroid/graphics/Rect;

.field private mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mEffectListTopLeftY:F

.field private mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

.field private mEffectNameId:[I

.field private mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field private mEffectViewLeftMargin:F

.field private mEffectViewTopMargin:F

.field private mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;

.field private mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

.field private mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mHorAnimMove:F

.field private mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mHorEffectListLeftMargin:F

.field private mHorizontalBackgroundH:F

.field private mHorizontalBackgroundW:F

.field private mHorizontalMoveX:F

.field private mIsDown:Z

.field private mIsHideBtnDown:Z

.field private mIsShowBtnDown:Z

.field private mLiveEffectListLength:I

.field private mOffsetLeft:I

.field private mOrientation:I

.field private mPreOrientation:I

.field private mRecordCurrentMoveX:F

.field private mRecordCurrentMoveY:F

.field private mRotateScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private mScreenHeight:F

.field private mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

.field private mScreenWidth:F

.field private mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

.field private mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

.field private mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

.field private mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mSplitLineHeight:F

.field private mSplitLineMargin:F

.field private mSplitLineWidth:F

.field private mTransform:[F

.field private mVertAnimMove:F

.field private mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

.field private mVertEffectListLeftMargin:F

.field private mVerticalBackgroundH:F

.field private mVerticalBackgroundW:F

.field private mVerticalMoveX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numOfType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 152
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 116
    iput v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOffsetLeft:I

    .line 122
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mTransform:[F

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mDrawExtRect:Landroid/graphics/Rect;

    .line 134
    const/16 v0, 0x9

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    .line 136
    iput v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F

    .line 138
    iput v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveY:F

    .line 150
    const-string v0, "LiveEffectWindow"

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    .line 1243
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z

    .line 1245
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z

    .line 1247
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsDown:Z

    .line 153
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;

    invoke-direct {v0, p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mGestureListener:Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;

    .line 154
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 156
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mGestureListener:Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 157
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;

    new-instance v1, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$MyDownUpListener;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;)V

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;-><init>(Lcom/lenovo/scg/gallery3d/ui/DownUpDetector$DownUpListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mDownUpDetector:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;

    .line 158
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    .line 159
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->initViews(I)V

    .line 160
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->setOnFlingFinishedListener(Lcom/lenovo/scg/camera/effect/LiveEffectContainer$OnFlingFinishedListener;)V

    .line 162
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 164
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsDown:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsDown:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsHideBtnDown:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mIsShowBtnDown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/LiveEffectContainer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F

    return v0
.end method

.method static synthetic access$2102(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p1, "x1"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F

    return p1
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectNameId:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->effectPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/LiveEffectWindow;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    return-object v0
.end method

.method private draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 490
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->update()V

    .line 491
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 492
    .local v0, "animTime":J
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScroller:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v2

    .line 494
    .local v2, "more":Z
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 496
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 497
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 498
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 499
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 500
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 501
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 502
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 518
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 519
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 520
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 521
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 522
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 524
    return-void

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 505
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 506
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->calculate(J)Z

    .line 507
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 508
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 509
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 510
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 511
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 514
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 515
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0
.end method

.method private getDimensOfResource(I)F
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getEffectContentInitCenterXForDiffOrientation(I)F
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1464
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 1465
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorEffectListLeftMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1469
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertEffectListLeftMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getEffectContentInitCenterYForDiffOrientation(I)F
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1485
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 1486
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    const v1, 0x7f0902c2

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1488
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectListTopLeftY:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewTopMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getEffectNameInitCenterXForDiffOrientation(I)F
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 1549
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 1550
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 1552
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorEffectListLeftMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1555
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertEffectListLeftMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getEffectNameInitCenterYForDiffOrientation(I)F
    .locals 5
    .param p1, "index"    # I

    .prologue
    const v4, 0x7f0902bd

    const/high16 v3, 0x40000000    # 2.0f

    .line 1560
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 1561
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 1563
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    const v1, 0x7f0902c2

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1567
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectListTopLeftY:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewTopMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getListLength()F
    .locals 3

    .prologue
    .line 1599
    const v0, 0x7f0902be

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    const v2, 0x7f0902c0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getSplitLineInitCenterXForDiffOrientation(I)F
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1503
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    sub-int/2addr p1, v0

    .line 1505
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 1506
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorEffectListLeftMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineMargin:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineMargin:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineWidth:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1510
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertEffectListLeftMargin:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineMargin:F

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineMargin:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineWidth:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getSplitLineInitCenterYForDiffOrientation(I)F
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1526
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    sub-int/2addr p1, v0

    .line 1527
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 1528
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    const v1, 0x7f0902c2

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1531
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectListTopLeftY:F

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewTopMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private getTextureDrawRect(II)Landroid/graphics/RectF;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 561
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 562
    .local v0, "rcDst":Landroid/graphics/RectF;
    if-le p2, p1, :cond_0

    .line 563
    sub-int v1, p2, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, p1

    add-int v3, p2, p1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 568
    :goto_0
    return-object v0

    .line 565
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

.method private initBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0902b5

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902b6

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setViewSize(FF)V

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0201f7

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0902b9

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902ba

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 263
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0902af

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902b0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setViewSize(FF)V

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0902b3

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902b4

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 271
    return-void
.end method

.method private initButtons()V
    .locals 7

    .prologue
    const v5, 0x7f0902c9

    const v4, 0x7f0902c8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 282
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setViewSize(FF)V

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    new-instance v1, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$1;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setEventListener(Lcom/lenovo/scg/camera/effect/EventListener;)V

    .line 329
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 330
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 331
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setViewSize(FF)V

    .line 333
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 334
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 336
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    new-instance v1, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$2;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setEventListener(Lcom/lenovo/scg/camera/effect/EventListener;)V

    .line 375
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0201f5

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 380
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectNameId:[I

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->effectPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0902c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V

    .line 386
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 387
    return-void
.end method

.method private initContainer()V
    .locals 10

    .prologue
    .line 397
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    if-ge v3, v5, :cond_0

    .line 398
    new-instance v2, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;-><init>(Landroid/content/Context;)V

    .line 399
    .local v2, "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setID(I)V

    .line 400
    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewHeight:F

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setViewSize(FF)V

    .line 401
    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    iget v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenHeight:F

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setScreenSize(FF)V

    .line 402
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 403
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setEffectManager(Lcom/lenovo/scg/camera/effect/LiveEffectManager;)V

    .line 404
    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v5

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 405
    new-instance v5, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow$3;-><init>(Lcom/lenovo/scg/camera/effect/LiveEffectWindow;)V

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setEventListener(Lcom/lenovo/scg/camera/effect/EventListener;)V

    .line 433
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v5, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 436
    new-instance v1, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    .line 437
    .local v1, "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 438
    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineWidth:F

    iget v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineHeight:F

    invoke-virtual {v1, v5, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setViewSize(FF)V

    .line 439
    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    iget v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenHeight:F

    invoke-virtual {v1, v5, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setScreenSize(FF)V

    .line 440
    const v5, 0x7f0201f6

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 441
    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    add-int/2addr v6, v3

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 443
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v5, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 446
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, "EffectNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 448
    const-string/jumbo v5, "tyl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mEffectNameId[i] ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectNameId:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectNameId:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->effectPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0902c4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V

    .line 453
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v5, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 397
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 457
    .end local v0    # "EffectNameView":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v1    # "gridBitmap":Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;
    .end local v2    # "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_0
    new-instance v5, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 458
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v6, 0x7f0201f8

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setBitmap(I)V

    .line 459
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    iget v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v4

    .line 460
    .local v4, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v6

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 461
    const-string/jumbo v5, "tyl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEffectClickView  effectType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setID(I)V

    .line 464
    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->addView(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    .line 465
    return-void
.end method

.method private initValues(I)V
    .locals 6
    .param p1, "numOfType"    # I

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sepia:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sketch:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Mirror:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Whirl:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Comic:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v1, v0, v5

    const/16 v1, 0xa

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sketch:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 181
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectNameId:[I

    .line 186
    const/16 v0, 0x190

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->duration:I

    .line 187
    const v0, 0x7f0902b2

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorEffectListLeftMargin:F

    .line 188
    const v0, 0x7f0902bb

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineWidth:F

    .line 189
    const v0, 0x7f0902bc

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineHeight:F

    .line 190
    const v0, 0x7f0902bd

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mSplitLineMargin:F

    .line 191
    const v0, 0x7f0902b8

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectListTopLeftY:F

    .line 192
    const v0, 0x7f0902b7

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertEffectListLeftMargin:F

    .line 193
    const v0, 0x7f0902c0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    .line 194
    const v0, 0x7f0902c1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewTopMargin:F

    .line 195
    const v0, 0x7f0902be

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewWidth:F

    .line 196
    const v0, 0x7f0902bf

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mChildViewHeight:F

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenHeight:F

    .line 201
    const v0, 0x7f0902de

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorAnimMove:F

    .line 202
    const v0, 0x7f0902df

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    .line 204
    const v0, 0x7f0902af

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    .line 205
    const v0, 0x7f0902b0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundH:F

    .line 207
    const v0, 0x7f0902b5

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    .line 208
    const v0, 0x7f0902b6

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundH:F

    .line 210
    iput v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalMoveX:F

    .line 211
    iput v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalMoveX:F

    .line 214
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->effectPaint:Landroid/graphics/Paint;

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->effectPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I

    .line 218
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

    .line 220
    iput v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    .line 221
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->setScreenSize(FF)V

    .line 223
    return-void

    .line 181
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
    .end array-data
.end method

.method private layoutContentPaneForBackground()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 713
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0902b3

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902b4

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorAnimMove:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0902b9

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902ba

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0
.end method

.method private layoutContentPaneForBtn()V
    .locals 8

    .prologue
    const v7, 0x7f0902cb

    const v6, 0x7f0902ca

    const v5, 0x7f0902d6

    const v4, 0x7f0902d4

    const/4 v3, 0x1

    .line 733
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 738
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 742
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902d5

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 746
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902e2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 751
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902d5

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 755
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 781
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0902cc

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902cd

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 761
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v1, 0x7f0902cc

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902cd

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 765
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902d7

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 769
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902e1

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 774
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    const v2, 0x7f0902d7

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 778
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setCenterPointForClickBitmap(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V
    .locals 4
    .param p1, "child"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    .prologue
    .line 950
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectClickView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setVisibility(I)V

    .line 951
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 952
    .local v0, "Effectchild":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEffectClickView mCurrentEffectNameId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mCurrentEffectNameId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v1

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 954
    return-void
.end method

.method private setCenterPointForEffectContent(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V
    .locals 3
    .param p1, "child"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 785
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 786
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 831
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorAnimMove:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 792
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5

    .line 793
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_3

    .line 794
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 797
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 798
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 800
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane content position getRecordMoveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

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

    .line 803
    :cond_4
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalMoveX:F

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 805
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ddd layoutContentPane content position mVerticalMoveX= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalMoveX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

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

    .line 811
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_6

    .line 812
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 815
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 816
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 818
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

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

    .line 821
    :cond_7
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 827
    :cond_8
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0
.end method

.method private setCenterPointForEffectName(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V
    .locals 3
    .param p1, "child"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 887
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 888
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    .line 889
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorAnimMove:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 895
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_6

    .line 896
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_4

    .line 897
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 901
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 902
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 904
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 905
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getPreOrientation()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setRecordMoveX(F)V

    .line 907
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordMoveX name position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setPreOrientaion(I)V

    goto/16 :goto_0

    .line 913
    :cond_5
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalMoveX:F

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 919
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_7

    .line 920
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 924
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 925
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 927
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_8

    .line 928
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getPreOrientation()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    if-eq v0, v1, :cond_8

    .line 929
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setRecordMoveX(F)V

    .line 931
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   tttt getRecordMoveX name position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setPreOrientaion(I)V

    .line 935
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane name position = "

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

    .line 937
    :cond_9
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 938
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   tttt getRecordMoveX name position mHorizontalMoveX= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalMoveX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ddddd layoutContentPane name position = "

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

    .line 944
    :cond_a
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectNameInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0
.end method

.method private setCenterPointForSplitLine(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V
    .locals 3
    .param p1, "child"    # Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 834
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 835
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 837
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 884
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorAnimMove:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 844
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    .line 845
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_5

    .line 846
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_3

    .line 847
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 850
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 851
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 854
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setVerticalMove(F)V

    goto :goto_0

    .line 856
    :cond_4
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalMoveX:F

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 861
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mPreOrientation:I

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    if-ne v0, v1, :cond_6

    .line 862
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 865
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 866
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 868
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setHorizontalMove(F)V

    .line 870
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layoutContentPane line position = "

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

    .line 872
    :cond_7
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 873
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ddd layoutContentPane line position = "

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

    .line 880
    :cond_8
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterXForDiffOrientation(I)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getSplitLineInitCenterYForDiffOrientation(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    goto/16 :goto_0
.end method

.method private setHorizontalMove(F)V
    .locals 0
    .param p1, "move"    # F

    .prologue
    .line 1620
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalMoveX:F

    .line 1621
    return-void
.end method

.method private setVerticalMove(F)V
    .locals 0
    .param p1, "move"    # F

    .prologue
    .line 1624
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalMoveX:F

    .line 1625
    return-void
.end method


# virtual methods
.method public destoryWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1198
    const-string/jumbo v2, "tyl"

    const-string v3, "destoryWindow in LiveEffectWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    if-eqz v2, :cond_0

    .line 1200
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->destoryEffect()V

    .line 1201
    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 1204
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    if-eqz v2, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->destoryEffect()V

    .line 1206
    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    .line 1209
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v2, :cond_2

    .line 1210
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->destoryEffect()V

    .line 1213
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    if-eqz v2, :cond_4

    .line 1214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1215
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    .line 1216
    .local v1, "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v1, :cond_3

    .line 1217
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->destoryEffect()V

    .line 1214
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    .end local v0    # "i":I
    .end local v1    # "view":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v2, :cond_5

    .line 1223
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->destoryEffect()V

    .line 1226
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_6

    .line 1227
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 1228
    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 1231
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRotateScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_7

    .line 1232
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRotateScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 1233
    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRotateScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 1237
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    if-eqz v2, :cond_8

    .line 1238
    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectManager:Lcom/lenovo/scg/camera/effect/LiveEffectManager;

    .line 1241
    :cond_8
    return-void
.end method

.method public getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v0

    return-object v0
.end method

.method public getEffectScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getEffectShowOrHideState()Z
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->getEffectShowOrHideState()Z

    move-result v0

    .line 1676
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreOrientation()I
    .locals 1

    .prologue
    .line 1634
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mPreOrientation:I

    return v0
.end method

.method public getRecordMoveX()F
    .locals 3

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xxx getRecordMoveX mRecordCurrentMoveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F

    return v0
.end method

.method public getRecordMoveY()F
    .locals 5

    .prologue
    .line 1605
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    .line 1606
    .local v0, "factorH":F
    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    .line 1607
    .local v1, "factorV":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getRecordMoveX()F

    move-result v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveY:F

    .line 1608
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordMoveY mRecordCurrentMoveY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "factorH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "factorV = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordMoveY mRecordCurrentMoveY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveY:F

    return v2
.end method

.method public initViews(I)V
    .locals 0
    .param p1, "numOfType"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->initValues(I)V

    .line 238
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->initBackground()V

    .line 239
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->initButtons()V

    .line 240
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->initContainer()V

    .line 241
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->layoutContentPane()V

    .line 242
    return-void
.end method

.method public layoutContentPane()V
    .locals 3

    .prologue
    .line 959
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->layoutContentPaneForBackground()V

    .line 960
    invoke-direct {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->layoutContentPaneForBtn()V

    .line 962
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 963
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 964
    .local v0, "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v0, :cond_0

    .line 965
    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    if-ge v1, v2, :cond_1

    .line 966
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setCenterPointForEffectContent(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    .line 962
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 967
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    if-lt v1, v2, :cond_2

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    .line 968
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setCenterPointForSplitLine(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    goto :goto_1

    .line 969
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    mul-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_3

    .line 970
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setCenterPointForEffectName(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;I)V

    goto :goto_1

    .line 972
    :cond_3
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setCenterPointForClickBitmap(Lcom/lenovo/scg/camera/effect/BasicTextureGLView;)V

    goto :goto_1

    .line 1169
    .end local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_4
    return-void
.end method

.method public onFlingFinished(Z)V
    .locals 3
    .param p1, "IsFlingFinished"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1640
    if-eqz p1, :cond_0

    .line 1641
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getEffectContentInitCenterXForDiffOrientation(I)F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F

    .line 1642
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFlingFinished mRecordCurrentMoveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 7
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-super/range {p0 .. p5}, Lcom/lenovo/scg/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 688
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v6

    .line 689
    .local v6, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    .line 691
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorEffectListLeftMargin:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x20

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorEffectListLeftMargin:F

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorizontalBackgroundW:F

    add-float/2addr v3, v4

    const/high16 v4, 0x42000000    # 32.0f

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->layout(IIIII)V

    .line 696
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenHeight:F

    float-to-int v1, v1

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->layout(IIII)V

    .line 697
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->layoutContentPane()V

    .line 699
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

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    const v1, 0x7f0902e3

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertEffectListLeftMargin:F

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVerticalBackgroundW:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mEffectViewLeftMargin:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    const v5, 0x7f0902ba

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->layout(IIIII)V

    .line 705
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    float-to-int v1, v1

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenHeight:F

    float-to-int v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->layout(IIII)V

    .line 706
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->layoutContentPane()V

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1173
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1174
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mDownUpDetector:Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1175
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTouch (int)event.getX()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "event.getY()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mHorBackgroundView.getRect() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1186
    :cond_1
    :goto_0
    return v0

    .line 1180
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1182
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1186
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 9
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x437a0000    # 250.0f

    const/4 v6, 0x0

    .line 528
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getFboDrawTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v3, :cond_2

    .line 530
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 532
    .local v2, "rcSrc":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getTextureDrawRect(II)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 533
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 535
    .local v0, "rcDst":Landroid/graphics/RectF;
    invoke-virtual {v0, v6, v6, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 536
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mExtTexture width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 538
    .local v1, "rcRoateDst":Landroid/graphics/RectF;
    invoke-virtual {v1, v6, v6, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 540
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v3, :cond_0

    .line 541
    new-instance v3, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 543
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRotateScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v3, :cond_1

    .line 544
    new-instance v3, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRotateScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 547
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 548
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3, p1, v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 549
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 551
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScaledExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 552
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 553
    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {p0, p1, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 554
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 557
    .end local v0    # "rcDst":Landroid/graphics/RectF;
    .end local v1    # "rcRoateDst":Landroid/graphics/RectF;
    .end local v2    # "rcSrc":Landroid/graphics/RectF;
    :cond_2
    return-void
.end method

.method public setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 1703
    :cond_0
    return-void
.end method

.method public setEffectHideOrShowState(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->setEffectHideOrShowState(Z)V

    .line 1690
    :cond_0
    return-void
.end method

.method public setEffectListShowOrHide(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 1574
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "setEffectListShowOrHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    if-eqz v0, :cond_1

    .line 1581
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowEffectNameView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 1584
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    if-eqz v0, :cond_2

    .line 1585
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    rsub-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setVisibility(I)V

    .line 1588
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->layoutContentPane()V

    .line 1589
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->invalidate()V

    .line 1590
    return-void
.end method

.method public setEffectScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 581
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "Orientation"    # I

    .prologue
    .line 596
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    .line 597
    return-void
.end method

.method public setPreOrientaion(I)V
    .locals 0
    .param p1, "preOrienation"    # I

    .prologue
    .line 1629
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mPreOrientation:I

    .line 1630
    return-void
.end method

.method public setRecordMoveX(F)V
    .locals 0
    .param p1, "moveX"    # F

    .prologue
    .line 1615
    iput p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mRecordCurrentMoveX:F

    .line 1616
    return-void
.end method

.method public setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 3
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 476
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mLiveEffectListLength:I

    if-ge v1, v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewFromId(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 478
    .local v0, "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "gridView":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_0
    return-void
.end method

.method public startEffectHideAnimation()V
    .locals 9

    .prologue
    const v8, 0x7f0902ba

    const v7, 0x7f0902b4

    const/high16 v6, 0x40000000    # 2.0f

    .line 608
    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_2

    .line 609
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v3, 0x7f0902b9

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v3

    invoke-direct {p0, v8}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 612
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 613
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 614
    .local v0, "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 612
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    .end local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_1
    new-instance v2, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenHeight:F

    invoke-direct {p0, v8}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getViewHeight()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->duration:I

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 638
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    .line 639
    return-void

    .line 624
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v3, 0x7f0902b3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v3

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorAnimMove:F

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 626
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 627
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 628
    .restart local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v0, :cond_3

    .line 629
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorAnimMove:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 626
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 635
    .end local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_4
    new-instance v2, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getViewHeight()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->duration:I

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    goto :goto_1
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
    .line 1660
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mFrameView:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V

    .line 1663
    :cond_0
    return-void
.end method

.method public startEffectShowAnimation()V
    .locals 8

    .prologue
    const v7, 0x7f0902ba

    const v6, 0x7f0902b4

    const/high16 v5, 0x40000000    # 2.0f

    .line 649
    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_2

    .line 650
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v3, 0x7f0902b9

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v3

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 652
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 654
    .local v0, "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertAnimMove:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 652
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_1
    new-instance v2, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenHeight:F

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getViewHeight()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->duration:I

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;-><init>(FI)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    .line 676
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->start()V

    .line 677
    return-void

    .line 663
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    const v3, 0x7f0902b3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v3

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->setCenterPointInScreen(FF)V

    .line 665
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 666
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mContainer:Lcom/lenovo/scg/camera/effect/LiveEffectContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectContainer;->getViewByIndex(I)Lcom/lenovo/scg/camera/effect/BasicTextureGLView;

    move-result-object v0

    .line 667
    .restart local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    if-eqz v0, :cond_3

    .line 668
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterX()F

    move-result v2

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->getCenterY()F

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorAnimMove:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/camera/effect/BasicTextureGLView;->setCenterPointInScreen(FF)V

    .line 665
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 673
    .end local v0    # "child":Lcom/lenovo/scg/camera/effect/BasicTextureGLView;
    :cond_4
    new-instance v2, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mScreenWidth:F

    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->getDimensOfResource(I)F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/BitmapTextureGLView;->getViewHeight()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->duration:I

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;-><init>(FI)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectWindow;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    goto :goto_1
.end method
