.class public Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "LandscapeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$IntegerAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$RisingAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SimpleListener;,
        Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;
    }
.end annotation


# static fields
.field private static final INDEX_NONE:I = -0x1

.field public static final OFFSET_VALUE:I = 0xa

.field public static final OVERSCROLL_3D:I = 0x0

.field public static final OVERSCROLL_NONE:I = 0x2

.field public static final OVERSCROLL_SYSTEM:I = 0x1

.field public static final RENDER_MORE_FRAME:I = 0x2

.field public static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LandscapeView"

.field private static mIsShowPanoView:Z


# instance fields
.field private FIRST_CHECK_WIDE:Z

.field private MAYBE_WIDE:Z

.field private WIDE:Z

.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

.field private mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBackBar_Top_Offset:I

.field private mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBarTopOffset:I

.field private mBtnNormalBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBtnNormalTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mContext:Landroid/content/Context;

.field private mDividedLineH:I

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDown:Z

.field private mIsNotNeedRender:Z

.field private final mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

.field private mMoreAnimation:Z

.field private mNormalBarTop:I

.field private mNormalCount:I

.field private mNormalSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

.field private mOverscrollEffect:I

.field private mPadding:I

.field private mPanoBarBottom:I

.field private mPanoBarGap:I

.field private mPanoBarPadding:I

.field private mPanoBarTop:I

.field private mPanoBgHeight:I

.field private mPanoBgTopGap:I

.field private mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

.field private mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

.field private mPanoViewBarHeight:I

.field private mPanoViewBarLeft:I

.field private mPanoramaCount:I

.field private final mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

.field private mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

.field private mRequestRenderSlots:[I

.field private mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

.field private final mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

.field private final mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

.field private final mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mSlotGap:I

.field private mStartIndex:I

.field private mSysHeight:I

.field private mSysWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextSize_Big:I

.field private mTextSize_Small:I

.field private mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V
    .locals 5
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "panoramaSpec"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;
    .param p3, "normalSpec"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;
    .param p4, "selectionManager"    # Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 326
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    .line 33
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z

    .line 35
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->FIRST_CHECK_WIDE:Z

    .line 203
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    .line 209
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mMoreAnimation:Z

    .line 211
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    .line 213
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;-><init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mStartIndex:I

    .line 220
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mOverscrollEffect:I

    .line 226
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRequestRenderSlots:[I

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTempRect:Landroid/graphics/Rect;

    .line 239
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 241
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 243
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 246
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 248
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 250
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 252
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 254
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 256
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 258
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 260
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 264
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 266
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 268
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    .line 270
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysHeight:I

    .line 274
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    .line 276
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    .line 278
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsDown:Z

    .line 280
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 282
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsNotNeedRender:Z

    .line 284
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSlotGap:I

    .line 286
    const/16 v0, 0x32

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I

    .line 288
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    .line 290
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    .line 292
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .line 294
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    .line 296
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    .line 298
    const/16 v0, 0x2f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarPadding:I

    .line 300
    const/16 v0, 0x50

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarTop:I

    .line 302
    const/16 v0, 0x18

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarBottom:I

    .line 304
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarGap:I

    .line 306
    const/16 v0, 0x11

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBarTopOffset:I

    .line 308
    const/16 v0, 0x13

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgTopGap:I

    .line 310
    const/16 v0, 0x3d

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalBarTop:I

    .line 312
    const/16 v0, 0x36

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarLeft:I

    .line 314
    const/16 v0, 0xa0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    .line 316
    const/16 v0, 0xc8

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgHeight:I

    .line 318
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Small:I

    .line 320
    const/16 v0, 0x48

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Big:I

    .line 322
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBar_Top_Offset:I

    .line 328
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$MyGestureListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Lcom/lenovo/scg/gallery3d/ui/LandscapeView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 330
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 331
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    .line 332
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mHandler:Landroid/os/Handler;

    .line 334
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    .line 336
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;)V

    .line 338
    iget v0, p2, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->slotGap:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSlotGap:I

    .line 339
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    .line 340
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    .line 342
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 343
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    .line 344
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 345
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getViewDimensValues()V

    .line 346
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->createTipBarTexture()V

    .line 347
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->createNormalPicTipBar()V

    .line 348
    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I

    return v0
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I

    return p1
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysHeight:I

    return v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setPanoBarPos()V

    return-void
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setNormalCountText(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setPanoCountText(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setBackBarPos()V

    return-void
.end method

.method static synthetic access$2700()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    return v0
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    return v0
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgTopGap:I

    return v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgHeight:I

    return v0
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsDown:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    return v0
.end method

.method static synthetic access$4500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    return v0
.end method

.method static synthetic access$4600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->FIRST_CHECK_WIDE:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->FIRST_CHECK_WIDE:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$4800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Lcom/lenovo/scg/gallery3d/ui/Paper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDownInScrolling:Z

    return v0
.end method

.method private createNormalPicTipBar()V
    .locals 5

    .prologue
    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, "stringTex":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 445
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Big:I

    int-to-float v3, v3

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    .line 446
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 448
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 449
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0863

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Small:I

    int-to-float v3, v3

    const v4, -0x7b7b7c

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 452
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 453
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0207e3

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 454
    .local v0, "normalTexure":Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 455
    return-void
.end method

.method private createTipBarTexture()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const v12, -0x7b7b7c

    .line 378
    const/4 v9, 0x0

    .line 379
    .local v9, "stringTex":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 380
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Big:I

    int-to-float v11, v11

    invoke-static {v10, v11, v13}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v9

    .line 381
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v9}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 383
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 384
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0862

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Small:I

    int-to-float v11, v11

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v9

    .line 385
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v9}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 387
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 388
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0861

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Small:I

    int-to-float v11, v11

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v9

    .line 389
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v9}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 391
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 392
    new-instance v4, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f0207d5

    invoke-direct {v4, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 393
    .local v4, "moreTexure":Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
    new-instance v3, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f0207d6

    invoke-direct {v3, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 394
    .local v3, "morePressTexure":Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 395
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImagePressTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 397
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 398
    new-instance v6, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    const v10, -0xd2d2d3

    invoke-direct {v6, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    .line 399
    .local v6, "panoBgTex":Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 400
    new-instance v5, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    const v10, -0xbfbfc0

    invoke-direct {v5, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    .line 401
    .local v5, "normalClr":Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;
    new-instance v7, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    const v10, -0xff6c30

    invoke-direct {v7, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    .line 402
    .local v7, "pressedClr":Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 403
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 404
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImagePressTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 407
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 408
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImagePressTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 410
    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;

    const v10, -0xcfcfd0

    invoke-direct {v2, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;-><init>(I)V

    .line 411
    .local v2, "bgClr":Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 412
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 414
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f020480

    invoke-direct {v0, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 415
    .local v0, "backBtnTexure":Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v11, 0x7f020481

    invoke-direct {v1, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 417
    .local v1, "backPressedTexure":Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 418
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 419
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImagePressTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 421
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f085f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Big:I

    int-to-float v11, v11

    invoke-static {v10, v11, v13}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v8

    .line 422
    .local v8, "st":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    new-instance v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-direct {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    .line 423
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v10, v8}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 424
    return-void
.end method

.method private drawNormalItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ZZ)Z
    .locals 12
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "paperActive"    # Z
    .param p3, "more"    # Z

    .prologue
    .line 943
    sget-boolean v9, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-nez v9, :cond_5

    .line 944
    const/4 v6, 0x0

    .line 945
    .local v6, "requestCount2":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRequestRenderSlots:[I

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->expandIntArray([II)[I

    move-result-object v8

    .line 947
    .local v8, "requestedSlot2":[I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart2:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v1

    .local v1, "index":I
    :goto_0
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd2:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-gt v1, v9, :cond_2

    .line 948
    const/4 v9, 0x0

    invoke-direct {p0, p1, v1, v9, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v5

    .line 949
    .local v5, "r":I
    and-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_0

    const/4 p3, 0x1

    .line 950
    :cond_0
    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "requestCount2":I
    .local v7, "requestCount2":I
    aput v1, v8, v6

    move v6, v7

    .line 947
    .end local v7    # "requestCount2":I
    .restart local v6    # "requestCount2":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    .end local v5    # "r":I
    :cond_2
    const/4 v4, 0x1

    .local v4, "pass":I
    :goto_1
    if-eqz v6, :cond_5

    .line 954
    const/4 v2, 0x0

    .line 955
    .local v2, "newCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "newCount":I
    .local v3, "newCount":I
    :goto_2
    if-ge v0, v6, :cond_4

    .line 956
    aget v9, v8, v0

    invoke-direct {p0, p1, v9, v4, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v5

    .line 957
    .restart local v5    # "r":I
    and-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_3

    const/4 p3, 0x1

    .line 958
    :cond_3
    and-int/lit8 v9, v5, 0x1

    if-eqz v9, :cond_6

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "newCount":I
    .restart local v2    # "newCount":I
    aput v0, v8, v3

    .line 955
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "newCount":I
    .restart local v3    # "newCount":I
    goto :goto_2

    .line 960
    .end local v5    # "r":I
    :cond_4
    move v6, v3

    .line 953
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 964
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v3    # "newCount":I
    .end local v4    # "pass":I
    .end local v6    # "requestCount2":I
    .end local v8    # "requestedSlot2":[I
    :cond_5
    const/4 v9, 0x0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v10, v10

    invoke-interface {p1, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 965
    return p3

    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v3    # "newCount":I
    .restart local v4    # "pass":I
    .restart local v5    # "r":I
    .restart local v6    # "requestCount2":I
    .restart local v8    # "requestedSlot2":[I
    :cond_6
    move v2, v3

    .end local v3    # "newCount":I
    .restart local v2    # "newCount":I
    goto :goto_3
.end method

.method private drawPanorama(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ZZ)Z
    .locals 13
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "paperActive"    # Z
    .param p3, "more"    # Z

    .prologue
    .line 969
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v10

    if-lez v10, :cond_9

    .line 970
    sget-boolean v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-nez v10, :cond_0

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    if-nez v10, :cond_3

    .line 971
    :cond_0
    const/4 v10, 0x0

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-interface {p1, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 976
    :goto_0
    const/4 v7, 0x0

    .line 977
    .local v7, "requestCount":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRequestRenderSlots:[I

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart:I
    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->expandIntArray([II)[I

    move-result-object v9

    .line 979
    .local v9, "requestedSlot":[I
    const/4 v0, 0x0

    .line 980
    .local v0, "endIndex":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleStart:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v2

    .local v2, "index":I
    :goto_1
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-gt v2, v10, :cond_4

    .line 981
    move v0, v2

    .line 982
    const/4 v10, 0x0

    invoke-direct {p0, p1, v2, v10, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v6

    .line 984
    .local v6, "r":I
    and-int/lit8 v10, v6, 0x2

    if-eqz v10, :cond_1

    const/16 p3, 0x1

    .line 985
    :cond_1
    and-int/lit8 v10, v6, 0x1

    if-eqz v10, :cond_2

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "requestCount":I
    .local v8, "requestCount":I
    aput v2, v9, v7

    move v7, v8

    .line 980
    .end local v8    # "requestCount":I
    .restart local v7    # "requestCount":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 973
    .end local v0    # "endIndex":I
    .end local v2    # "index":I
    .end local v6    # "r":I
    .end local v7    # "requestCount":I
    .end local v9    # "requestedSlot":[I
    :cond_3
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    neg-int v10, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-interface {p1, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 987
    .restart local v0    # "endIndex":I
    .restart local v2    # "index":I
    .restart local v7    # "requestCount":I
    .restart local v9    # "requestedSlot":[I
    :cond_4
    sget-boolean v10, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-nez v10, :cond_5

    .line 988
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mVisibleEnd:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_5

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v10

    if-eqz v10, :cond_5

    .line 990
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v10, :cond_5

    .line 991
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 992
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->drawSplitBarByNormal(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 993
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    neg-int v10, v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-interface {p1, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 999
    :cond_5
    const/4 v5, 0x1

    .local v5, "pass":I
    :goto_2
    if-eqz v7, :cond_8

    .line 1000
    const/4 v3, 0x0

    .line 1001
    .local v3, "newCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "newCount":I
    .local v4, "newCount":I
    :goto_3
    if-ge v1, v7, :cond_7

    .line 1002
    aget v10, v9, v1

    invoke-direct {p0, p1, v10, v5, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I

    move-result v6

    .line 1003
    .restart local v6    # "r":I
    and-int/lit8 v10, v6, 0x2

    if-eqz v10, :cond_6

    const/16 p3, 0x1

    .line 1004
    :cond_6
    and-int/lit8 v10, v6, 0x1

    if-eqz v10, :cond_a

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "newCount":I
    .restart local v3    # "newCount":I
    aput v1, v9, v4

    .line 1001
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "newCount":I
    .restart local v4    # "newCount":I
    goto :goto_3

    .line 1006
    .end local v6    # "r":I
    :cond_7
    move v7, v4

    .line 999
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1008
    .end local v1    # "i":I
    .end local v4    # "newCount":I
    :cond_8
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v11, v11

    invoke-interface {p1, v10, v11}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 1010
    .end local v0    # "endIndex":I
    .end local v2    # "index":I
    .end local v5    # "pass":I
    .end local v7    # "requestCount":I
    .end local v9    # "requestedSlot":[I
    :cond_9
    return p3

    .restart local v0    # "endIndex":I
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v4    # "newCount":I
    .restart local v5    # "pass":I
    .restart local v6    # "r":I
    .restart local v7    # "requestCount":I
    .restart local v9    # "requestedSlot":[I
    :cond_a
    move v3, v4

    .end local v4    # "newCount":I
    .restart local v3    # "newCount":I
    goto :goto_4
.end method

.method private drawSplitBarByNormal(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 5
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 1014
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1015
    .local v0, "r":Landroid/graphics/Rect;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1017
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalBarTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1018
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1019
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1020
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-static {p1, v2, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;Landroid/graphics/Rect;)V

    .line 1022
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1023
    .local v1, "rect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarGap:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1024
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalBarTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBarTopOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1025
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1026
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1027
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-static {p1, v2, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;Landroid/graphics/Rect;)V

    .line 1028
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalBarTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarBottom:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setDividedLineH(I)V

    .line 1029
    return-void
.end method

.method private static expandIntArray([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "capacity"    # I

    .prologue
    .line 831
    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 832
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    .line 834
    :cond_0
    return-object p0
.end method

.method private getViewDimensValues()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090456

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09045e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarPadding:I

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09045f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarTop:I

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090460

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarBottom:I

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090461

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarGap:I

    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBarTopOffset:I

    .line 357
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090463

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$102(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    .line 359
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090464

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaWidth:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$202(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    .line 360
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$302(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    .line 367
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090465

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgTopGap:I

    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090466

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalBarTop:I

    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090467

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarLeft:I

    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090468

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09046e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Big:I

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09046d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Small:I

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09046f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBar_Top_Offset:I

    .line 374
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$302(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    goto :goto_0
.end method

.method public static isPanoramaView()Z
    .locals 1

    .prologue
    .line 1088
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    return v0
.end method

.method private renderItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIZ)I
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "index"    # I
    .param p3, "pass"    # I
    .param p4, "paperActive"    # Z

    .prologue
    .line 1070
    const/4 v7, 0x0

    .line 1071
    .local v7, "result":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 1073
    .local v6, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 1074
    if-eqz p4, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Lcom/lenovo/scg/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 1079
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    invoke-virtual {v0, p1, p2, v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    sub-int v5, v1, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;->renderSlot(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)I

    move-result v7

    .line 1083
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 1084
    return v7

    .line 1077
    :cond_1
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private renderTipBtn(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v2, 0x0

    .line 1042
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-eqz v0, :cond_1

    .line 1044
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    .line 1045
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 1046
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1047
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1048
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1049
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1050
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v0, v0

    invoke-interface {p1, v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    .line 1054
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 1055
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1056
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1058
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1059
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1060
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1062
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 1063
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v0, v0

    invoke-interface {p1, v2, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private resetLayoutInfo(Z)V
    .locals 3
    .param p1, "isShowPano"    # Z

    .prologue
    .line 796
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v0, :cond_0

    .line 797
    if-eqz p1, :cond_1

    .line 799
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->colsPort:I

    .line 800
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->rowsPort:I

    .line 801
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$402(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    .line 809
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->colsPort:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->rowsPort:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setPanoInfo(II)V

    .line 810
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    sget-boolean v1, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateContentLength(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;Z)V

    .line 813
    :cond_0
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->onSwitchSize(Z)V

    .line 814
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->colsPort:I

    .line 805
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoSpec:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;->rowsPort:I

    .line 806
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarBottom:I

    add-int/2addr v1, v2

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$402(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    goto :goto_0
.end method

.method private setBackBarPos()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 632
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setSize(II)V

    .line 634
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarLeft:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 635
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    invoke-virtual {v1, v7, v7, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 636
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    invoke-virtual {v1, v7, v7, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 638
    const/4 v0, 0x0

    .line 639
    .local v0, "left":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 641
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBar_Top_Offset:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBar_Top_Offset:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 643
    return-void
.end method

.method private setNormalCountText(I)V
    .locals 4
    .param p1, "curCount"    # I

    .prologue
    .line 435
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    if-eqz v1, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "stringTex":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Big:I

    int-to-float v2, v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnNormalCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 440
    .end local v0    # "stringTex":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    :cond_0
    return-void
.end method

.method private setPanoBarPos()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 458
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    .line 459
    .local v0, "curLeft":I
    const/4 v1, 0x0

    .line 460
    .local v1, "curTop":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setSize(II)V

    .line 462
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarTop:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarTop:I

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 464
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarGap:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 465
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarTop:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBarTopOffset:I

    add-int v1, v3, v4

    .line 466
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 468
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    sub-int v0, v3, v4

    .line 469
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 471
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarGap:I

    sub-int v0, v3, v4

    .line 473
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->GetImageTexHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 475
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBarBottom:I

    add-int v2, v3, v4

    .line 476
    .local v2, "panoBgTop":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgTopGap:I

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgHeight:I

    .line 477
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoBgHeight:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v9, v2, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 480
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    invoke-virtual {v3, v9, v9, v4, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPos(IIII)V

    .line 482
    sget-boolean v3, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-eqz v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$402(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I
    invoke-static {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$402(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    goto :goto_0
.end method

.method private setPanoCountText(I)V
    .locals 4
    .param p1, "curCount"    # I

    .prologue
    .line 427
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    if-eqz v1, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "stringTex":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTextSize_Big:I

    int-to-float v2, v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetImageTex(Lcom/lenovo/scg/gallery3d/glrenderer/Texture;)V

    .line 432
    .end local v0    # "stringTex":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    :cond_0
    return-void
.end method

.method private updateLayoutLength()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1032
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateContentLength(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;Z)V

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateContentLength(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;Z)V

    goto :goto_0

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateContentLength(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1200(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;Z)V

    goto :goto_0
.end method

.method private updateScrollPositionX(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "force"    # Z

    .prologue
    .line 664
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    if-ne p1, v0, :cond_2

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    if-eq p1, v0, :cond_0

    .line 665
    :cond_2
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    .line 666
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setScrollPositionX(I)V

    goto :goto_0
.end method

.method private updateScrollPositionY(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "force"    # Z

    .prologue
    .line 658
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    if-ne p1, v0, :cond_2

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    if-eq p1, v0, :cond_0

    .line 659
    :cond_2
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    .line 660
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setScrollPositionY(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 607
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNormalCount()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    return v0
.end method

.method public getPanoramaCount()I
    .locals 1

    .prologue
    .line 1096
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 2053
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 2057
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "slotIndex"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleEnd2()I
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getVisibleEnd2()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public getVisibleStart2()I
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getVisibleStart2()I

    move-result v0

    return v0
.end method

.method public getmIsShowPanoView()Z
    .locals 1

    .prologue
    .line 494
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    return v0
.end method

.method public hideActionBar()V
    .locals 2

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1101
    .local v0, "absActivity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showTabMenu(Z)V

    .line 1102
    return-void
.end method

.method public makeSlotVisible(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 529
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v7

    if-nez v7, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v7

    if-lt p1, v7, :cond_5

    .line 534
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 535
    .local v1, "rect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    .line 536
    .local v4, "visibleBegin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getHeight()I

    move-result v6

    .line 537
    .local v6, "visibleLength":I
    add-int v5, v4, v6

    .line 538
    .local v5, "visibleEnd":I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 539
    .local v2, "slotBegin":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 541
    .local v3, "slotEnd":I
    move v0, v4

    .line 542
    .local v0, "position":I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_3

    .line 543
    move v0, v4

    .line 550
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setScrollPositionY(I)V

    goto :goto_0

    .line 544
    :cond_3
    if-ge v2, v4, :cond_4

    .line 545
    move v0, v2

    goto :goto_1

    .line 546
    :cond_4
    if-le v3, v5, :cond_2

    .line 547
    sub-int v0, v3, v6

    goto :goto_1

    .line 552
    .end local v0    # "position":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "slotBegin":I
    .end local v3    # "slotEnd":I
    .end local v4    # "visibleBegin":I
    .end local v5    # "visibleEnd":I
    .end local v6    # "visibleLength":I
    :cond_5
    sget-boolean v7, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-eqz v7, :cond_9

    .line 553
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 554
    .restart local v1    # "rect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    .line 555
    .restart local v4    # "visibleBegin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getHeight()I

    move-result v6

    .line 556
    .restart local v6    # "visibleLength":I
    add-int v5, v4, v6

    .line 557
    .restart local v5    # "visibleEnd":I
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 558
    .restart local v2    # "slotBegin":I
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 560
    .restart local v3    # "slotEnd":I
    move v0, v4

    .line 561
    .restart local v0    # "position":I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_7

    .line 562
    move v0, v4

    .line 569
    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setScrollPositionY(I)V

    goto :goto_0

    .line 563
    :cond_7
    if-ge v2, v4, :cond_8

    .line 564
    move v0, v2

    goto :goto_2

    .line 565
    :cond_8
    if-le v3, v5, :cond_6

    .line 566
    sub-int v0, v3, v6

    goto :goto_2

    .line 571
    .end local v0    # "position":I
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "slotBegin":I
    .end local v3    # "slotEnd":I
    .end local v4    # "visibleBegin":I
    .end local v5    # "visibleEnd":I
    .end local v6    # "visibleLength":I
    :cond_9
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1, v8}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 572
    .restart local v1    # "rect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    .line 573
    .restart local v4    # "visibleBegin":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getWidth()I

    move-result v6

    .line 574
    .restart local v6    # "visibleLength":I
    add-int v5, v4, v6

    .line 575
    .restart local v5    # "visibleEnd":I
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 576
    .restart local v2    # "slotBegin":I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 578
    .restart local v3    # "slotEnd":I
    move v0, v4

    .line 579
    .restart local v0    # "position":I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_b

    .line 580
    move v0, v4

    .line 587
    :cond_a
    :goto_3
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setScrollPositionX(I)V

    goto :goto_0

    .line 581
    :cond_b
    if-ge v2, v4, :cond_c

    .line 582
    move v0, v2

    goto :goto_3

    .line 583
    :cond_c
    if-le v3, v5, :cond_a

    .line 584
    sub-int v0, v3, v6

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changeSize"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 612
    if-nez p1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    sub-int v0, p4, p2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    .line 618
    sub-int v0, p5, p3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysHeight:I

    .line 620
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setPanoBarPos()V

    .line 621
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setBackBarPos()V

    .line 622
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mOverscrollEffect:I

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSysHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .param p1, "newPosition"    # I

    .prologue
    .line 670
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v0

    .line 671
    .local v0, "limit":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;->onScrollPositionChanged(II)V

    .line 672
    return-void
.end method

.method public onSwitchSize(Z)V
    .locals 1
    .param p1, "isSwitch"    # Z

    .prologue
    .line 628
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;->onSwitchSize(Z)V

    .line 629
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 680
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 682
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->onTouch(Landroid/view/MotionEvent;)Z

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 685
    .local v0, "touchX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 687
    .local v1, "touchY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 792
    :cond_1
    :goto_0
    return v4

    .line 689
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 690
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->forceFinished()V

    .line 691
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDownInScrolling:Z

    .line 692
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsDown:Z

    .line 694
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->getIsPressed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 698
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v0, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->isHit(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 699
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 700
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 701
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    if-eqz v2, :cond_4

    .line 702
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setWindowHeight(II)V

    .line 704
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setYOffset(I)V

    .line 707
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 691
    goto :goto_1

    .line 709
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v0, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->isHit(FF)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 710
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 711
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 712
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsDown:Z

    .line 713
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    if-eqz v2, :cond_7

    .line 714
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v3

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setWindowHeight(II)V

    .line 717
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setYOffset(I)V

    .line 720
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    goto/16 :goto_0

    .line 725
    :cond_8
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDownInScrolling:Z

    if-nez v2, :cond_b

    .line 726
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    if-nez v2, :cond_9

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    if-eqz v2, :cond_d

    .line 727
    :cond_9
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-nez v2, :cond_c

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_c

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mFirstRowHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$400(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaHeight:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mDividedLineH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gez v2, :cond_c

    .line 729
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v2, :cond_a

    .line 730
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    :cond_a
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z

    .line 744
    :cond_b
    :goto_2
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->FIRST_CHECK_WIDE:Z

    goto/16 :goto_0

    .line 737
    :cond_c
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z

    goto :goto_2

    .line 740
    :cond_d
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z

    goto :goto_2

    .line 750
    :pswitch_1
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsDown:Z

    .line 751
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPaper:Lcom/lenovo/scg/gallery3d/ui/Paper;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/Paper;->onRelease()V

    .line 753
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->isPress()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 754
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v0, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->isHit(FF)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 755
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 756
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 757
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->MAYBE_WIDE:Z

    .line 758
    sput-boolean v4, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    .line 759
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->hideActionBar()V

    .line 760
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->resetLayoutInfo(Z)V

    .line 761
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 762
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 787
    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setTextureButtonsVisible()V

    .line 788
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    goto/16 :goto_0

    .line 765
    :cond_f
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 766
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    goto :goto_3

    .line 768
    :cond_10
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->isPress()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 769
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v2, v0, v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->isHit(FF)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 770
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 771
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 773
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 774
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 775
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setTextureButtonsVisible()V

    move v4, v3

    .line 776
    goto/16 :goto_0

    .line 778
    :cond_11
    sput-boolean v3, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    .line 779
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->showActionBar()V

    .line 780
    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->resetLayoutInfo(Z)V

    goto :goto_3

    .line 782
    :cond_12
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    .line 783
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetPress(Z)V

    goto :goto_3

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 9
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 839
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 841
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsNotNeedRender:Z

    if-eqz v6, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 849
    :cond_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->renderTipBtn(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 851
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    if-eqz v6, :cond_0

    .line 852
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;->prepareDrawing()V

    .line 854
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 855
    .local v0, "animTime":J
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v6, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v3

    .line 856
    .local v3, "more":Z
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v6, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->advanceAnimation(J)Z

    move-result v6

    or-int/2addr v3, v6

    .line 857
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    .line 858
    .local v4, "oldX":I
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    if-eqz v6, :cond_b

    .line 859
    sget-boolean v6, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-nez v6, :cond_3

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    if-eqz v6, :cond_3

    .line 860
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v6

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->updateScrollPositionX(IZ)V

    .line 866
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->updateLayoutLength()V

    .line 868
    const/4 v5, 0x0

    .line 885
    .local v5, "paperActive":Z
    or-int/2addr v3, v5

    .line 887
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    if-eqz v6, :cond_4

    .line 888
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    invoke-virtual {v6, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;->calculate(J)Z

    move-result v6

    or-int/2addr v3, v6

    .line 891
    :cond_4
    sget-boolean v6, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-eqz v6, :cond_c

    .line 893
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    if-lez v6, :cond_5

    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    if-ltz v6, :cond_6

    .line 894
    :cond_5
    invoke-interface {p1, v8, v8}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 896
    :cond_6
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    .line 897
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateVisibleSlotRange()V
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)V

    .line 906
    :cond_7
    :goto_3
    invoke-direct {p0, p1, v5, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->drawPanorama(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ZZ)Z

    move-result v3

    .line 908
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-interface {p1, v8, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 911
    invoke-direct {p0, p1, v5, v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->drawNormalItem(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;ZZ)Z

    move-result v3

    .line 913
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    .line 915
    :cond_8
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .line 916
    .local v2, "listener":Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mMoreAnimation:Z

    if-eqz v6, :cond_9

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 917
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$1;

    invoke-direct {v7, p0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/LandscapeView;Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 926
    :cond_9
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mMoreAnimation:Z

    .line 928
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    if-nez v6, :cond_0

    .line 929
    sget-boolean v6, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-eqz v6, :cond_d

    .line 930
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-interface {p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 931
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v6, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 932
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v7, v7

    invoke-interface {p1, v6, v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto/16 :goto_0

    .line 855
    .end local v2    # "listener":Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    .end local v3    # "more":Z
    .end local v4    # "oldX":I
    .end local v5    # "paperActive":Z
    :cond_a
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v6, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v3

    goto/16 :goto_1

    .line 863
    .restart local v3    # "more":Z
    .restart local v4    # "oldX":I
    :cond_b
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v6

    invoke-direct {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->updateScrollPositionY(IZ)V

    goto/16 :goto_2

    .line 900
    .restart local v5    # "paperActive":Z
    :cond_c
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v6

    if-eqz v6, :cond_7

    .line 901
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # invokes: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->updateVisibleSlotRange()V
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1300(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)V

    goto :goto_3

    .line 934
    .restart local v2    # "listener":Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;
    :cond_d
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-interface {p1, v8, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 935
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v6, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->paint(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 936
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    int-to-float v6, v6

    invoke-interface {p1, v8, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto/16 :goto_0
.end method

.method public resetCoordinate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2028
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    .line 2029
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 2030
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v0, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mScrollPositionY:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$5002(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setYOffset(I)V

    .line 2034
    return-void
.end method

.method public setCenterIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 519
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v2

    .line 520
    .local v2, "slotCount":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, v4}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getSlotRect(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 524
    .local v1, "rect":Landroid/graphics/Rect;
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    if-eqz v3, :cond_2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 525
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setScrollPositionY(I)V

    goto :goto_0

    .line 524
    .end local v0    # "position":I
    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    goto :goto_1
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mListener:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Listener;

    .line 818
    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 4
    .param p1, "kind"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 825
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mOverscrollEffect:I

    .line 826
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    .line 827
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    .line 828
    return-void

    :cond_0
    move v0, v2

    .line 826
    goto :goto_0

    :cond_1
    move v1, v2

    .line 827
    goto :goto_1
.end method

.method public setPanoLayout(II)V
    .locals 1
    .param p1, "col"    # I
    .param p2, "row"    # I

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setPanoInfo(II)V

    .line 1113
    :cond_0
    return-void
.end method

.method public setRendererCount(II)V
    .locals 1
    .param p1, "panoCount"    # I
    .param p2, "normalCount"    # I

    .prologue
    .line 502
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    .line 503
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    .line 504
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setPanoCountText(I)V

    .line 505
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setNormalCountText(I)V

    .line 506
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setPanoBarPos()V

    .line 507
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setBackBarPos()V

    .line 508
    return-void
.end method

.method public setScrollPositionX(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 600
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitX()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 601
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerX:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 602
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->updateScrollPositionX(IZ)V

    .line 603
    return-void
.end method

.method public setScrollPositionY(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 594
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->getScrollLimitY()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    .line 595
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollerY:Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 596
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->updateScrollPositionY(IZ)V

    .line 597
    return-void
.end method

.method public setSlotCount(II)Z
    .locals 7
    .param p1, "panoSlotCount"    # I
    .param p2, "normalSlotCount"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1944
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    .line 1945
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mNormalCount:I

    .line 1946
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setSlotCount(II)Z

    move-result v0

    .line 1947
    .local v0, "changed":Z
    if-nez p1, :cond_4

    .line 1948
    sput-boolean v5, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    .line 1950
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    if-eqz v1, :cond_0

    .line 1951
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setWindowHeight(II)V

    .line 1952
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setYOffset(I)V

    .line 1966
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1967
    :cond_1
    iput v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    .line 1969
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->WIDE:Z

    .line 1973
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mStartIndex:I

    if-eq v1, v6, :cond_3

    .line 1974
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setCenterIndex(I)V

    .line 1975
    iput v6, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mStartIndex:I

    .line 1978
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollX:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setScrollPositionX(I)V

    .line 1979
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollY:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setScrollPositionY(I)V

    .line 1981
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setTextureButtonsVisible()V

    .line 1982
    return v0

    .line 1954
    :cond_4
    if-nez p2, :cond_0

    .line 1955
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    if-eqz v1, :cond_5

    .line 1956
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    # setter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCol:I
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$302(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;I)I

    .line 1959
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    if-eqz v1, :cond_0

    .line 1960
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1000(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$1100(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getBottomMenuBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setWindowHeight(II)V

    .line 1962
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mScrollBar:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoViewBarHeight:I

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/ScrollBar;->setYOffset(I)V

    goto :goto_0
.end method

.method public setSlotRenderer(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;)V
    .locals 6
    .param p1, "slotDrawer"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$500(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotHeight:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$600(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;->onSlotSizeChanged(II)V

    .line 514
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mRenderer:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getVisibleEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getVisibleStart2()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->getVisibleEnd2()I

    move-result v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoramaCount:I

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotRenderer;->onVisibleRangeChanged(IIIII)V

    .line 516
    :cond_0
    return-void
.end method

.method public setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;)V
    .locals 1
    .param p1, "spec"    # Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->setSlotSpec(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Spec;)V

    .line 491
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1939
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mStartIndex:I

    .line 1940
    return-void
.end method

.method public setTextureButtonsVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1986
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1988
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1989
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1990
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1992
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1993
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1994
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1995
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1996
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 1997
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2025
    :goto_0
    return-void

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mPanoramaCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$800(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mNormalCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$900(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2000
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2001
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2002
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2003
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2005
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2006
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2007
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2008
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2009
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2010
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    goto :goto_0

    .line 2012
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBarTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2013
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBgPressTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2014
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackBtn:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2015
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mPanoTitle:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2017
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBackgroundTex:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2018
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoCount:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2019
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2020
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllTip:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2021
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnShowAllICon:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    .line 2022
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mBtnPanoBg:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$TextureButton;->SetVisible(Z)V

    goto :goto_0
.end method

.method public setUserInteractionListener(Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mUIListener:Lcom/lenovo/scg/gallery3d/ui/UserInteractionListener;

    .line 822
    return-void
.end method

.method public setmIsShowPanoView(Z)V
    .locals 0
    .param p1, "isChangeView"    # Z

    .prologue
    .line 498
    sput-boolean p1, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mIsShowPanoView:Z

    .line 499
    return-void
.end method

.method public showActionBar()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1106
    .local v0, "absActivity":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showTabMenu(Z)V

    .line 1107
    return-void
.end method

.method public startRisingAnimation()V
    .locals 1

    .prologue
    .line 652
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$RisingAnimation;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$RisingAnimation;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    .line 653
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;->start()V

    .line 654
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    .line 655
    :cond_0
    return-void
.end method

.method public startScatteringAnimation(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V
    .locals 1
    .param p1, "position"    # Lcom/lenovo/scg/gallery3d/ui/RelativePosition;

    .prologue
    .line 646
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$ScatteringAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/RelativePosition;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    .line 647
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mAnimation:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$SlotAnimation;->start()V

    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->mLayout:Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->mSlotCount:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;->access$700(Lcom/lenovo/scg/gallery3d/ui/LandscapeView$Layout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->invalidate()V

    .line 649
    :cond_0
    return-void
.end method

.method public updateBtnState()V
    .locals 1

    .prologue
    .line 2103
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->setTextureButtonsVisible()V

    .line 2104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/LandscapeView;->onSwitchSize(Z)V

    .line 2105
    return-void
.end method
