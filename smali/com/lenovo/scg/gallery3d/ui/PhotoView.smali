.class public Lcom/lenovo/scg/gallery3d/ui/PhotoView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$ZInterpolator;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;,
        Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static final CARD_EFFECT:Z = true

.field private static final DEFAULT_TEXT_SIZE:F = 60.0f

.field private static final DEF_MOVE_STEP:I = 0x1

.field private static final DEF_MOVE_TIME:I = 0x4

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final ICON_RATIO:I = 0x4

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final INVALID_SIZE:I = -0x1

.field private static final MAX_DISMISS_VELOCITY:I = 0x9c4

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_ANIMATION_DONE:I = 0x5

.field private static final MSG_DELETE_DONE:I = 0x6

.field private static final MSG_RESET_TO_FULL_ANIM_END:I = 0x6f

.field private static final MSG_START_PANORAMA_ANIM:I = 0x71

.field private static final MSG_START_ZOOMIN_ANIM:I = 0x70

.field private static final MSG_STOP_PANORAMA_ANIM:I = 0x72

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final MSG_UNDO_BAR_TIMEOUT:I = 0x7

.field private static final OFFSET_EFFECT:Z = true

.field private static final PLACEHOLDER_COLOR:I = -0x111112

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field public static SUPPORT_SLIDE_TO_LEFT:I = 0x0

.field private static final SWIPE_ESCAPE_DISTANCE:I = 0x96

.field private static final SWIPE_ESCAPE_VELOCITY:I = 0x1f4

.field private static final SWIPE_THRESHOLD:F = 300.0f

.field private static final TAG:Ljava/lang/String; = "PhotoView"

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field private static final UNDO_BAR_DELETE_LAST:I = 0x10

.field private static final UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final UNDO_BAR_SHOW:I = 0x1

.field private static final UNDO_BAR_TIMEOUT:I = 0x2

.field private static final UNDO_BAR_TOUCHED:I = 0x4


# instance fields
.field public final BRUSH_PATH_KEY:Ljava/lang/String;

.field private final EditModeAnimationDuration:I

.field private EditModeMoveY:F

.field private isPanoramaModel:Z

.field private isPlayPanorama:Z

.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mBurstIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mCurIcon:I

.field private mCurrentBox:I

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;

.field private mFilmMode:Z

.field private mFirst:Z

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

.field private mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field private mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

.field private mHolding:I

.field private mIconIds:[I

.field private mInEditMode:Z

.field private mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

.field private mIsInResetToFullAnim:Z

.field private mIsSpeechPic:Z

.field private mIsWatchBack:Z

.field private mLastIndex:I

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

.field private mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

.field private mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

.field private mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field private final mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/RangeArray",
            "<",
            "Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

.field private mPrevBound:I

.field private mPrevBox:I

.field private mScaleInterpolator:Lcom/lenovo/scg/gallery3d/ui/PhotoView$ZInterpolator;

.field private mSeenScaling:Z

.field private mSizes:[Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

.field public mSpeechIconHeight:I

.field public mSpeechIconStartX:I

.field public mSpeechIconStartY:I

.field public mSpeechIconWidth:I

.field private mSpeechPicPadding:I

.field private mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field private mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

.field private mTempNextBound:I

.field private mTempPrevBound:I

.field private mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

.field private mToast:Landroid/widget/Toast;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

.field private mWantPictureCenterCallbacks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    .line 299
    const v0, 0x3f3d70a4    # 0.74f

    sput v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 8
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    const v7, 0x7fffffff

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 462
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 245
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .line 288
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z

    .line 310
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ZInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/lenovo/scg/gallery3d/ui/PhotoView$ZInterpolator;

    .line 313
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 327
    new-instance v1, Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v6}, Lcom/lenovo/scg/gallery3d/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    .line 329
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSizes:[Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    .line 359
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 361
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconWidth:I

    .line 363
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconHeight:I

    .line 365
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartX:I

    .line 367
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechIconStartY:I

    .line 369
    const/16 v1, 0x28

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I

    .line 374
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurrentBox:I

    .line 375
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBox:I

    .line 386
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 388
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsWatchBack:Z

    .line 390
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 392
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 394
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    .line 398
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 400
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 402
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFirst:Z

    .line 426
    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 435
    iput v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 440
    const-string v1, "BrushPath"

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->BRUSH_PATH_KEY:Ljava/lang/String;

    .line 448
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 450
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIconIds:[I

    .line 452
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mLastIndex:I

    .line 454
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurIcon:I

    .line 456
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsSpeechPic:Z

    .line 458
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSeenScaling:Z

    .line 1535
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPanoramaModel:Z

    .line 3039
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditMode:Z

    .line 3041
    const/high16 v1, -0x3db80000    # -50.0f

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->EditModeMoveY:F

    .line 3043
    const/16 v1, 0x64

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->EditModeAnimationDuration:I

    .line 3045
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 3047
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    .line 463
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 464
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    .line 465
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 466
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 467
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    .line 468
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    .line 469
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 470
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    .line 471
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 477
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIconIds:[I

    .line 479
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->setVisibility(I)V

    .line 480
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V

    .line 488
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0650

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x42700000    # 60.0f

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 490
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyHandler;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    .line 492
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/ui/PhotoView$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGestureListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;

    .line 493
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGestureListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    .line 495
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/PositionController;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/PositionController$Listener;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .line 546
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f02063e

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 549
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f02063d

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 551
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f02047a

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 554
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f0206a8

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 555
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090478

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I

    .line 559
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f0206e2

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mBurstIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 561
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    if-gt v0, v6, :cond_1

    .line 562
    if-nez v0, :cond_0

    .line 563
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 561
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 568
    :cond_1
    return-void

    .line 477
    :array_0
    .array-data 4
        0x7f0206a8
        0x7f0206a9
    .end array-data
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsInResetToFullAnim:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsInResetToFullAnim:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->startZoomInAnimation()V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/TileImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsSpeechPic:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsSpeechPic:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurrentBox:I

    return p1
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(III)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/util/RangeArray;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$3100(III)F
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$3400(FFF)F
    .locals 1
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawGifPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$372(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$376(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$3800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPanoramaModel:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawPanoramaPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/glrenderer/Texture;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPicPadding:I

    return v0
.end method

.method static synthetic access$4200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawSpeechPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)V

    return-void
.end method

.method static synthetic access$4400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawBurstIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->updateActionBar()V

    return-void
.end method

.method static synthetic access$4700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$4900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$4902(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->showToast(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxDeletable:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSeenScaling:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSeenScaling:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/lenovo/scg/gallery3d/ui/PhotoView;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5302(Lcom/lenovo/scg/gallery3d/ui/PhotoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    return p1
.end method

.method static synthetic access$5400(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->EditModeMoveY:F

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/EdgeView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/PhotoView;)Lcom/lenovo/scg/gallery3d/ui/PositionController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    return-object v0
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .param p0, "left"    # I
    .param p1, "right"    # I
    .param p2, "viewWidth"    # I

    .prologue
    .line 2808
    sub-int v0, p1, p0

    .line 2815
    .local v0, "w":I
    if-ge v0, p2, :cond_1

    .line 2816
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 2817
    .local v1, "zx":I
    if-le p0, v1, :cond_0

    .line 2818
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2838
    .end local v1    # "zx":I
    :goto_0
    return v2

    .line 2820
    .restart local v1    # "zx":I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 2830
    .end local v1    # "zx":I
    :cond_1
    if-lez p0, :cond_2

    .line 2831
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 2834
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2835
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 2838
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 2783
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    .line 2784
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 2786
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2787
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 2789
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->snapback()V

    .line 2790
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 2499
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 2504
    :cond_0
    :goto_0
    return-void

    .line 2500
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2501
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .param p1, "addition"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2356
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 2357
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 2365
    :cond_0
    :goto_0
    return-void

    .line 2358
    :cond_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v4

    .line 2359
    .local v2, "timeout":Z
    :goto_1
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v3, v4

    .line 2360
    .local v3, "touched":Z
    :goto_2
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v1, v4

    .line 2361
    .local v1, "fullCamera":Z
    :goto_3
    iget v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v0, v4

    .line 2362
    .local v0, "deleteLast":Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    .line 2363
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0    # "deleteLast":Z
    .end local v1    # "fullCamera":Z
    .end local v2    # "timeout":Z
    .end local v3    # "touched":Z
    :cond_4
    move v2, v5

    .line 2358
    goto :goto_1

    .restart local v2    # "timeout":Z
    :cond_5
    move v3, v5

    .line 2359
    goto :goto_2

    .restart local v3    # "touched":Z
    :cond_6
    move v1, v5

    .line 2360
    goto :goto_3

    .restart local v1    # "fullCamera":Z
    :cond_7
    move v0, v5

    .line 2361
    goto :goto_4
.end method

.method private drawBurstIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "side"    # I

    .prologue
    .line 1627
    div-int/lit8 v4, p2, 0x4

    .line 1629
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mBurstIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 1630
    return-void
.end method

.method private drawGifPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "side"    # I

    .prologue
    .line 1527
    div-int/lit8 v4, p2, 0x4

    .line 1529
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGifPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 1530
    return-void
.end method

.method private drawLoadingFailMessage(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    .line 1637
    .local v0, "m":Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V

    .line 1638
    return-void
.end method

.method private drawPanoramaPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    .locals 7
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "side"    # I

    .prologue
    .line 1539
    div-int/lit8 v4, p2, 0x4

    .line 1540
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v6

    .line 1541
    .local v6, "w":I
    if-gt v4, v6, :cond_0

    move v4, v6

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPanoramaPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 1543
    return-void
.end method

.method private drawPlaceHolder(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1515
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 1516
    return-void
.end method

.method private drawSpeechPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;III)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "side"    # I
    .param p3, "startX"    # I
    .param p4, "startY"    # I

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v5

    move-object v1, p1

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 1621
    :cond_0
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "side"    # I

    .prologue
    .line 1520
    div-int/lit8 v4, p2, 0x4

    .line 1522
    .local v4, "s":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/Texture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 1523
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .param p0, "imageWidth"    # I
    .param p1, "viewWidth"    # I

    .prologue
    .line 2688
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 885
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .param p1, "offset"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2882
    const/high16 v1, 0x3f000000    # 0.5f

    div-float/2addr p1, v1

    .line 2883
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 2884
    .local v0, "alpha":F
    :goto_0
    const v1, 0x3cf5c28f    # 0.03f

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 2883
    .end local v0    # "alpha":F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 896
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 897
    .local v2, "orientation":I
    if-ne v2, v3, :cond_1

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v3

    .line 898
    .local v1, "invertPortrait":Z
    :goto_0
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_2

    move v0, v3

    .line 899
    .local v0, "invert":Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 900
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    .line 902
    :goto_2
    return v3

    .end local v0    # "invert":Z
    .end local v1    # "invertPortrait":Z
    :cond_1
    move v1, v4

    .line 897
    goto :goto_0

    .restart local v1    # "invertPortrait":Z
    :cond_2
    move v0, v4

    .line 898
    goto :goto_1

    .line 902
    .restart local v0    # "invert":Z
    :cond_3
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    goto :goto_2
.end method

.method private getPhotoScale(FF)F
    .locals 9
    .param p1, "oriWidth"    # F
    .param p2, "oriHeight"    # F

    .prologue
    const/4 v3, 0x0

    .line 2984
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    if-eqz v6, :cond_3

    .line 2985
    cmpl-float v6, p2, v3

    if-nez v6, :cond_0

    .line 2986
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v6

    int-to-float p2, v6

    .line 2988
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageScale()F

    move-result v6

    mul-float v0, p2, v6

    .line 2989
    .local v0, "currentHeight":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090194

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 2991
    .local v2, "height":F
    cmpl-float v6, p1, v3

    if-nez v6, :cond_1

    .line 2992
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v6

    int-to-float p1, v6

    .line 2994
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageScale()F

    move-result v6

    mul-float v1, p1, v6

    .line 2995
    .local v1, "currentWidth":F
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v6

    .line 2996
    .local v4, "width":F
    const-string v6, "jiaxiaowei"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPhotoScale   oriHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",currentHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    const-string v6, "jiaxiaowei"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPhotoScale    oriWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",currentWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    cmpl-float v6, v0, v2

    if-gtz v6, :cond_2

    cmpl-float v6, v1, v4

    if-lez v6, :cond_5

    .line 2999
    :cond_2
    div-float v3, v2, p2

    .line 3000
    .local v3, "scale":F
    div-float v5, v4, p1

    .line 3001
    .local v5, "widthScale":F
    const-string v6, "jiaxiaowei"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPhotoScale  scale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",widthScale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    cmpg-float v6, v3, v5

    if-gez v6, :cond_4

    .line 3010
    .end local v0    # "currentHeight":F
    .end local v1    # "currentWidth":F
    .end local v2    # "height":F
    .end local v3    # "scale":F
    .end local v4    # "width":F
    .end local v5    # "widthScale":F
    :cond_3
    :goto_0
    return v3

    .restart local v0    # "currentHeight":F
    .restart local v1    # "currentWidth":F
    .restart local v2    # "height":F
    .restart local v3    # "scale":F
    .restart local v4    # "width":F
    .restart local v5    # "widthScale":F
    :cond_4
    move v3, v5

    .line 3005
    goto :goto_0

    .line 3007
    .end local v3    # "scale":F
    .end local v5    # "widthScale":F
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageScale()F

    move-result v3

    goto :goto_0
.end method

.method private static getRotated(III)I
    .locals 1
    .param p0, "degree"    # I
    .param p1, "original"    # I
    .param p2, "theother"    # I

    .prologue
    .line 1641
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1    # "original":I
    :goto_0
    return p1

    .restart local p1    # "original":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .param p1, "scrollProgress"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2844
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .param p1, "scrollProgress"    # F

    .prologue
    .line 2850
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mScaleInterpolator:Lcom/lenovo/scg/gallery3d/ui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2851
    .local v0, "interpolatedProgress":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    sget v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 2852
    .local v1, "scale":F
    return v1
.end method

.method private hideUndoBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2339
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 2340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 2341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 2342
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 2343
    const v0, 0x7fffffff

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    .line 2344
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 2345
    return-void
.end method

.method private initEditModeMoveY()F
    .locals 4

    .prologue
    .line 2978
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090199

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2979
    .local v1, "topViewsHeight":F
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2980
    .local v0, "bottomViewsHeight":F
    sub-float v2, v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    return v2
.end method

.method private static interpolate(FFF)F
    .locals 1
    .param p0, "ratio"    # F
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 2876
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private setPictureSize(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 798
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    .line 799
    .local v0, "p":Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setImageSize(ILcom/lenovo/scg/gallery3d/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 800
    return-void

    .line 799
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 3152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 3156
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3157
    return-void

    .line 3154
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 6
    .param p1, "deleteLast"    # Z

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    .line 2330
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 2331
    iput v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 2332
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->animateVisibility(I)V

    .line 2334
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v5, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2335
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 2336
    :cond_1
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2657
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    if-ne v1, v0, :cond_0

    .line 2661
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    .line 2667
    :goto_0
    return v0

    .line 2662
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 2666
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startHorizontalSlide()V

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2674
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    if-ne v1, v0, :cond_0

    .line 2678
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v1, :cond_1

    const/4 v0, 0x0

    .line 2684
    :goto_0
    return v0

    .line 2679
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToPrevImage()V

    .line 2683
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startHorizontalSlide()V

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2637
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 2638
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v3

    .line 2640
    .local v3, "viewW":I
    div-int/lit8 v0, v3, 0x5

    .line 2641
    .local v0, "moveThreshold":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v5

    add-int v2, v0, v5

    .line 2644
    .local v2, "threshold":I
    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    if-le v5, v2, :cond_1

    .line 2645
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v4

    .line 2650
    :cond_0
    :goto_0
    return v4

    .line 2646
    :cond_1
    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v5, v2, :cond_0

    .line 2647
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 2626
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 2630
    :cond_0
    :goto_0
    return-void

    .line 2627
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2628
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private startZoomInAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 2969
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCurrentPhotoWidth()I

    move-result v3

    int-to-float v1, v3

    .line 2970
    .local v1, "imageWidth":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCurrentPhotoHeight()I

    move-result v3

    int-to-float v0, v3

    .line 2971
    .local v0, "imageHeight":F
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getPhotoScale(FF)F

    move-result v2

    .line 2972
    .local v2, "scale":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 2973
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->zoomInAnimation(FFF)V

    .line 2975
    :cond_0
    return-void
.end method

.method private swipeImages(FF)Z
    .locals 6
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 2603
    const-string v4, "PhotoView"

    const-string/jumbo v5, "swipeImages"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 2622
    :cond_0
    :goto_0
    return v3

    .line 2608
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    .line 2609
    .local v0, "controller":Lcom/lenovo/scg/gallery3d/ui/PositionController;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 2610
    .local v2, "isMinimal":Z
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 2611
    .local v1, "edges":I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 2616
    :cond_2
    const/high16 v4, -0x3c6a0000    # -300.0f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 2617
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 2618
    :cond_4
    const/high16 v4, 0x43960000    # 300.0f

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 2619
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 1

    .prologue
    .line 2508
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 2517
    :goto_0
    return-void

    .line 2509
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2511
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 2514
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 2509
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 2522
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v10, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 2523
    .local v1, "curr":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 2526
    .local v0, "center":I
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v10

    if-eqz v10, :cond_0

    sget v10, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    if-ne v10, v8, :cond_0

    .line 2543
    :cond_0
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_1

    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_1

    .line 2544
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v8, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 2545
    .local v5, "prev":Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 2546
    .local v2, "currDist":I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 2547
    .local v6, "prevDist":I
    if-ge v6, v2, :cond_2

    .line 2561
    .end local v2    # "currDist":I
    .end local v5    # "prev":Landroid/graphics/Rect;
    .end local v6    # "prevDist":I
    :goto_0
    return v7

    .line 2550
    :cond_1
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_2

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v7, :cond_2

    .line 2551
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 2552
    .local v3, "next":Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 2553
    .restart local v2    # "currDist":I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 2554
    .local v4, "nextDist":I
    if-ge v4, v2, :cond_2

    move v7, v8

    .line 2555
    goto :goto_0

    .end local v2    # "currDist":I
    .end local v3    # "next":Landroid/graphics/Rect;
    .end local v4    # "nextDist":I
    :cond_2
    move v7, v9

    .line 2561
    goto :goto_0
.end method

.method private switchToFirstImage()V
    .locals 2

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2709
    return-void
.end method

.method private switchToHitPicture(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 2567
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_2

    .line 2568
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2570
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    if-ne v1, v3, :cond_0

    .line 2574
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_2

    .line 2575
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->slideToPrevPicture()Z

    .line 2592
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-void

    .line 2580
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v1, :cond_1

    .line 2581
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2583
    .restart local v0    # "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    if-ne v1, v3, :cond_3

    .line 2587
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, p1, :cond_1

    .line 2588
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2701
    return-void
.end method

.method private switchToPrevImage()V
    .locals 2

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2705
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2751
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 2779
    :goto_0
    return v1

    .line 2752
    :cond_0
    if-ne p1, v1, :cond_3

    .line 2753
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 2755
    :cond_1
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2756
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 2757
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 2776
    :goto_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    .line 2777
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2778
    .local v0, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2758
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    if-ne p1, v4, :cond_7

    .line 2759
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 2760
    :cond_4
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 2765
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 2766
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 2767
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 2771
    :cond_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchToFirstImage()V

    .line 2772
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 2774
    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2191
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    .line 2193
    .local v0, "isCamera":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->getLoadingState()I

    move-result v1

    .line 2195
    .local v1, "loadingState":I
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v2, :cond_1

    .line 2197
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2208
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2201
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    goto :goto_0

    .line 2205
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2206
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onActionBarWanted()V

    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v6

    .line 842
    .local v6, "w":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    .line 843
    .local v1, "h":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 844
    move v5, v6

    .line 845
    .local v5, "tmp":I
    move v6, v1

    .line 846
    move v1, v5

    .line 848
    .end local v5    # "tmp":I
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 849
    .local v2, "l":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 850
    .local v4, "t":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 851
    .local v3, "r":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 854
    .local v0, "b":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 869
    :goto_0
    const-string v7, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "compensation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CameraRelativeFrame = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mCameraRect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 856
    :sswitch_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 859
    :sswitch_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 862
    :sswitch_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 865
    :sswitch_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 854
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public buildFallbackEffect(Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    .locals 17
    .param p1, "root"    # Lcom/lenovo/scg/gallery3d/ui/GLView;
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 2900
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2901
    .local v12, "location":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lcom/lenovo/scg/gallery3d/ui/GLView;->getBoundsOf(Lcom/lenovo/scg/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    move-result v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    .line 2903
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2904
    .local v9, "fullRect":Landroid/graphics/Rect;
    new-instance v8, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;

    invoke-direct {v8}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;-><init>()V

    .line 2905
    .local v8, "effect":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    const/4 v10, -0x3

    .local v10, "i":I
    :goto_0
    const/4 v3, 0x3

    if-gt v10, v3, :cond_2

    .line 2906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v11

    .line 2907
    .local v11, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v11, :cond_1

    .line 2905
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2909
    :cond_1
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isPanorama(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2949
    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_2
    return-object v8

    .line 2913
    .restart local v11    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v2

    .line 2914
    .local v2, "sc":Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
    instance-of v3, v2, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/TiledScreenNail;->isShowingPlaceholder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2917
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2918
    .local v13, "rect":Landroid/graphics/Rect;
    invoke-static {v9, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2919
    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2921
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    .line 2922
    .local v6, "width":I
    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v7

    .line 2924
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v14

    .line 2926
    .local v14, "rotation":I
    rem-int/lit16 v3, v14, 0xb4

    if-nez v3, :cond_4

    .line 2927
    new-instance v15, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v15, v6, v7, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .line 2928
    .local v15, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 2929
    int-to-float v3, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v7

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 2936
    :goto_2
    int-to-float v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 2937
    neg-int v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-int v4, v7

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 2938
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 2939
    invoke-interface/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 2945
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v8, v3, v13, v15}, Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;->addEntry(Lcom/lenovo/scg/gallery3d/data/Path;Landroid/graphics/Rect;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    goto/16 :goto_1

    .line 2931
    .end local v15    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    :cond_4
    new-instance v15, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v15, v7, v6, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    .line 2932
    .restart local v15    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 2933
    int-to-float v3, v7

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_2
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 2368
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearBuffers()V
    .locals 3

    .prologue
    .line 2275
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->clearBuffers()V

    .line 2276
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 2277
    if-eqz v0, :cond_0

    .line 2278
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 2276
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2281
    :cond_1
    return-void
.end method

.method public enterEditMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3050
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditMode:Z

    if-ne v0, v3, :cond_1

    .line 3069
    :cond_0
    :goto_0
    return-void

    .line 3053
    :cond_1
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditMode:Z

    .line 3055
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->saveOrientationState()V

    .line 3056
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->forceUnlockOrientation()V

    .line 3058
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    if-nez v0, :cond_2

    .line 3061
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020951

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 3064
    :cond_2
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-direct {v0, p0, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    .line 3065
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->setDuration(I)V

    .line 3066
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getOrientationCompensation()I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 3067
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->start()V

    goto :goto_0
.end method

.method public exitEditMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3072
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditMode:Z

    if-nez v0, :cond_0

    .line 3088
    :goto_0
    return-void

    .line 3075
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditMode:Z

    .line 3076
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    if-nez v0, :cond_1

    .line 3079
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020951

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    .line 3082
    :cond_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-direct {v0, p0, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;-><init>(Lcom/lenovo/scg/gallery3d/ui/PhotoView;Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    .line 3083
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->setDuration(I)V

    .line 3084
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->start()V

    .line 3086
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->restoreOrientationState()V

    goto :goto_0
.end method

.method public getBrustPath(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 4
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 3141
    check-cast p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .end local p1    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 3142
    .local v1, "filePath":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3143
    .local v0, "dir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCurrentPhotoHeight()I
    .locals 1

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getCurrentPhotoWidth()I
    .locals 1

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 2266
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public getInEditMode()Z
    .locals 1

    .prologue
    .line 3091
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditMode:Z

    return v0
.end method

.method public getPanoramaModel()Z
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPanoramaModel:Z

    return v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isCamera()Z
    .locals 2

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    return v0
.end method

.method public isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z
    .locals 5
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3129
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 3130
    if-eqz p1, :cond_1

    instance-of v4, p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    if-eqz v4, :cond_1

    .line 3131
    check-cast p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .end local p1    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 3132
    .local v1, "filePath":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3134
    .local v0, "dir":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3137
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    :goto_0
    return v2

    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 3134
    goto :goto_0

    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    .restart local p1    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_1
    move v2, v3

    .line 3137
    goto :goto_0
.end method

.method public isDeleting()Z
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoveSpeechIconHor()Z
    .locals 5

    .prologue
    .line 3180
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    if-eqz v3, :cond_0

    .line 3181
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 3182
    .local v2, "width":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3183
    .local v1, "screenWidth":I
    sub-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 3184
    .local v0, "leftMargin":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorActionBarHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3185
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getOrientationCompensation()I

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorActionBarHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3186
    const/4 v3, 0x1

    .line 3191
    .end local v0    # "leftMargin":I
    .end local v1    # "screenWidth":I
    .end local v2    # "width":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMoveSpeechIconVertical()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 3163
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    if-eqz v4, :cond_2

    .line 3164
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 3165
    .local v1, "height":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3166
    .local v2, "screenHeight":I
    sub-int v4, v2, v1

    div-int/lit8 v0, v4, 0x2

    .line 3167
    .local v0, "bottomMargin":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorActionBarHeight()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3168
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getEditorActionBarHeight()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3176
    .end local v0    # "bottomMargin":I
    .end local v1    # "height":I
    .end local v2    # "screenHeight":I
    :cond_0
    :goto_0
    return v3

    .line 3170
    .restart local v0    # "bottomMargin":I
    .restart local v1    # "height":I
    .restart local v2    # "screenHeight":I
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->getOrientationCompensation()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_0

    .line 3176
    .end local v0    # "bottomMargin":I
    .end local v1    # "height":I
    .end local v2    # "screenHeight":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPlayPanorama()Z
    .locals 1

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z

    return v0
.end method

.method public needHackForBlackgroudColor()Z
    .locals 4

    .prologue
    .line 3207
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCurrentPhotoWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCurrentPhotoHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3208
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCurrentPhotoWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCurrentPhotoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 3209
    const/4 v0, 0x1

    .line 3212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataChange([III)V
    .locals 15
    .param p1, "fromIndex"    # [I
    .param p2, "prevBound"    # I
    .param p3, "nextBound"    # I

    .prologue
    .line 730
    move/from16 v0, p2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    move/from16 v0, p2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTempPrevBound:I

    .line 731
    move/from16 v0, p3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    move/from16 v0, p3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTempNextBound:I

    .line 734
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    .line 735
    iget v11, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 736
    .local v11, "k":I
    const v2, 0x7fffffff

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 737
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v9, v2, :cond_0

    .line 738
    aget v2, p1, v9

    if-ne v2, v11, :cond_2

    .line 739
    add-int/lit8 v2, v9, -0x3

    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTouchBoxIndex:I

    .line 746
    .end local v9    # "i":I
    .end local v11    # "k":I
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 747
    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoIndexHint:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 748
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 753
    :cond_1
    const/4 v9, -0x3

    .restart local v9    # "i":I
    :goto_1
    const/4 v2, 0x3

    if-gt v9, v2, :cond_3

    .line 754
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v9}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    .line 755
    .local v13, "p":Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v13}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 756
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSizes:[Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    add-int/lit8 v3, v9, 0x3

    invoke-interface {v13}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->getSize()Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    move-result-object v4

    aput-object v4, v2, v3

    .line 753
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 737
    .end local v13    # "p":Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;
    .restart local v11    # "k":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 759
    .end local v11    # "k":I
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v14

    .line 763
    .local v14, "wasDeleting":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v3, :cond_5

    const/4 v4, 0x1

    :goto_2
    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v3, :cond_6

    const/4 v5, 0x1

    :goto_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSizes:[Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    :cond_4
    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->moveBox([IZZZ[Lcom/lenovo/scg/gallery3d/ui/PhotoView$Size;Z)V

    .line 767
    const/4 v9, -0x3

    :goto_4
    const/4 v2, 0x3

    if-gt v9, v2, :cond_7

    .line 768
    invoke-direct {p0, v9}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 767
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 763
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 771
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->hasDeletingBox()Z

    move-result v10

    .line 775
    .local v10, "isDeleting":Z
    if-eqz v14, :cond_8

    if-nez v10, :cond_8

    .line 776
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 777
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 778
    .local v12, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v12, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 781
    .end local v12    # "m":Landroid/os/Message;
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 782
    return-void
.end method

.method public notifyImageChange(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 789
    if-nez p1, :cond_0

    .line 790
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 793
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setPictureSize(I)V

    .line 794
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 795
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v9, 0x0

    .line 804
    sub-int v6, p4, p2

    .line 805
    .local v6, "w":I
    sub-int v2, p5, p3

    .line 806
    .local v2, "h":I
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->layout(IIII)V

    .line 807
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/lenovo/scg/gallery3d/ui/EdgeView;->layout(IIII)V

    .line 808
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    invoke-virtual {v7, v9, v9}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->measure(II)V

    .line 809
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v7, v9, v8, v6, v2}, Lcom/lenovo/scg/gallery3d/ui/UndoBarView;->layout(IIII)V

    .line 811
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v5

    .line 812
    .local v5, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 813
    .local v1, "displayRotation":I
    invoke-interface {v5}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    .line 814
    .local v0, "compensation":I
    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mDisplayRotation:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    if-eq v7, v0, :cond_2

    .line 815
    :cond_0
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mDisplayRotation:I

    .line 816
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCompensation:I

    .line 821
    const/4 v3, -0x3

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x3

    if-gt v3, v7, :cond_2

    .line 822
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v7, v3}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    .line 823
    .local v4, "p":Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 824
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->forceSize()V

    .line 821
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 829
    .end local v3    # "i":I
    .end local v4    # "p":Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 830
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 831
    if-eqz p1, :cond_3

    .line 832
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setViewSize(II)V

    .line 834
    :cond_3
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideDateMark()V

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    .line 1667
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onTouch(Landroid/view/MotionEvent;)Z

    .line 1671
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGestureRecognizer:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1672
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 2286
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z

    if-eqz v1, :cond_0

    .line 2287
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->stopPanoramaAnimation()Z

    .line 2290
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->skipAnimation()V

    .line 2291
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->freeTextures()V

    .line 2292
    const/4 v0, -0x3

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 2293
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 2292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2295
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->hideUndoBar()V

    .line 2296
    return-void
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 14
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 2377
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFirst:Z

    if-eqz v0, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->reload()V

    .line 2383
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    .line 2384
    .local v6, "full":Z
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFirst:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v6, v0, :cond_2

    .line 2385
    :cond_1
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    .line 2386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFirst:Z

    .line 2387
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v0, v6}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    .line 2388
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 2394
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFullScreenCamera:Z

    if-eqz v0, :cond_4

    .line 2395
    const/4 v12, 0x0

    .line 2408
    .local v12, "neighbors":I
    :goto_1
    const/4 v11, 0x0

    .line 2409
    .local v11, "more":Z
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 2410
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 2411
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    if-eqz v0, :cond_c

    .line 2412
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v11, v0

    .line 2414
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 2415
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->getAlpha()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 2416
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    .line 2417
    .local v4, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    sget v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_HEIGHT:I

    div-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    if-ge v7, v0, :cond_9

    .line 2418
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    sget v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    div-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    if-ge v10, v0, :cond_8

    .line 2419
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    mul-int v1, v10, v4

    sub-int v2, v1, v10

    mul-int v1, v7, v4

    sub-int v3, v1, v7

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 2418
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2383
    .end local v4    # "size":I
    .end local v6    # "full":Z
    .end local v7    # "i":I
    .end local v10    # "j":I
    .end local v11    # "more":Z
    .end local v12    # "neighbors":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 2399
    .restart local v6    # "full":Z
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    const/4 v9, 0x1

    .line 2400
    .local v9, "inPageMode":Z
    :goto_4
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    .line 2401
    .local v8, "inCaptureAnimation":Z
    :goto_5
    if-eqz v9, :cond_7

    if-nez v8, :cond_7

    .line 2402
    const/4 v12, 0x1

    .restart local v12    # "neighbors":I
    goto :goto_1

    .line 2399
    .end local v8    # "inCaptureAnimation":Z
    .end local v9    # "inPageMode":Z
    .end local v12    # "neighbors":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 2400
    .restart local v9    # "inPageMode":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    .line 2404
    .restart local v8    # "inCaptureAnimation":Z
    :cond_7
    const/4 v12, 0x3

    .restart local v12    # "neighbors":I
    goto :goto_1

    .line 2417
    .end local v8    # "inCaptureAnimation":Z
    .end local v9    # "inPageMode":Z
    .restart local v4    # "size":I
    .restart local v7    # "i":I
    .restart local v10    # "j":I
    .restart local v11    # "more":Z
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2422
    .end local v10    # "j":I
    :cond_9
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 2423
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->getMoveY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 2424
    if-nez v11, :cond_a

    .line 2425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    .line 2465
    .end local v4    # "size":I
    .end local v7    # "i":I
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 2472
    :cond_b
    move v7, v12

    .restart local v7    # "i":I
    :goto_7
    neg-int v0, v12

    if-lt v7, v0, :cond_10

    .line 2473
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v13

    .line 2474
    .local v13, "r":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0, p1, v13}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    .line 2472
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 2430
    .end local v7    # "i":I
    .end local v13    # "r":Landroid/graphics/Rect;
    :cond_c
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    if-eqz v0, :cond_e

    .line 2432
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    .line 2433
    .restart local v4    # "size":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    sget v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_HEIGHT:I

    div-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    if-ge v7, v0, :cond_e

    .line 2434
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_9
    sget v0, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    div-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    if-ge v10, v0, :cond_d

    .line 2435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mInEditModeBackground:Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    mul-int v1, v10, v4

    sub-int v2, v1, v10

    mul-int v1, v7, v4

    sub-int v3, v1, v7

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 2434
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2433
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 2439
    .end local v4    # "size":I
    .end local v7    # "i":I
    .end local v10    # "j":I
    :cond_e
    const/4 v0, 0x0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->EditModeMoveY:F

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_6

    .line 2442
    :cond_f
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    if-eqz v0, :cond_a

    .line 2443
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v11, v0

    .line 2445
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 2446
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->getAlpha()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 2455
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 2456
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;->getMoveY()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 2457
    if-nez v11, :cond_a

    .line 2458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSwtichEditModeAnimation:Lcom/lenovo/scg/gallery3d/ui/PhotoView$SwtichEditModeAnimation;

    goto/16 :goto_6

    .line 2479
    .restart local v7    # "i":I
    :cond_10
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mEdgeView:Lcom/lenovo/scg/gallery3d/ui/EdgeView;

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 2480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mUndoBar:Lcom/lenovo/scg/gallery3d/ui/UndoBarView;

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 2482
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 2484
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->advanceAnimation()V

    .line 2485
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->checkFocusSwitching()V

    .line 2487
    const/4 v0, 0x1

    if-ne v11, v0, :cond_11

    .line 2488
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 2491
    :cond_11
    return-void
.end method

.method public resetToFirstPicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2308
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 2309
    return-void
.end method

.method public resetToFullViewAnimation()V
    .locals 4

    .prologue
    const/16 v1, 0x6f

    .line 3020
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v0, :cond_0

    .line 3034
    :goto_0
    return-void

    .line 3023
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsInResetToFullAnim:Z

    .line 3025
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->exitEditMode()V

    .line 3027
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setPanoramaModel(Z)V

    .line 3028
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->resetToFullView()V

    .line 3029
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 3030
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3032
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 2301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->skipToFinalPosition()V

    .line 2303
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 873
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 874
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->updateCameraRect()V

    .line 879
    return-void
.end method

.method public setFilmMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2211
    const-string v2, "PhotoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFilmMode_start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideDateMark()V

    .line 2215
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-ne v2, p1, :cond_2

    .line 2263
    :cond_1
    :goto_0
    return-void

    .line 2216
    :cond_2
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPanoramaModel:Z

    if-nez v2, :cond_1

    .line 2217
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsWatchBack:Z

    if-eqz v2, :cond_6

    .line 2218
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    .line 2219
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsWatchBack:Z

    .line 2224
    :goto_1
    const-string v2, "PhotoView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFilmMode_end "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    iget-boolean v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setFilmMode(Z)V

    .line 2226
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    if-nez p1, :cond_7

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 2227
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_3
    invoke-interface {v5, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 2228
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->updateActionBar()V

    .line 2229
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->onFilmModeChanged(Z)V

    .line 2231
    move v0, p1

    .line 2232
    .local v0, "cameraEnabled":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    if-eqz v2, :cond_4

    .line 2234
    if-nez v0, :cond_3

    .line 2235
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isCamera()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2236
    const/4 v0, 0x1

    .line 2239
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;->onFilmModeChange(Z)V

    .line 2243
    :cond_4
    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2244
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    .line 2250
    :cond_5
    const-string/jumbo v2, "mode changed enable=%s"

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    if-nez p1, :cond_a

    .line 2252
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 2253
    .local v1, "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 2254
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setDateMark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2221
    .end local v0    # "cameraEnabled":Z
    .end local v1    # "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_6
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mFilmMode:Z

    goto/16 :goto_1

    :cond_7
    move v2, v4

    .line 2226
    goto/16 :goto_2

    :cond_8
    move v2, v4

    .line 2227
    goto/16 :goto_3

    .line 2256
    .restart local v0    # "cameraEnabled":Z
    .restart local v1    # "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_9
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->destoryDateMark()V

    goto/16 :goto_0

    .line 2259
    .end local v1    # "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_a
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->destoryDateMark()V

    goto/16 :goto_0
.end method

.method public setInitSpeechIcon()V
    .locals 3

    .prologue
    .line 597
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0206a8

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 598
    return-void
.end method

.method public setListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    .prologue
    .line 2892
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    .line 2893
    return-void
.end method

.method public setModel(Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;)V
    .locals 2
    .param p1, "model"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    .prologue
    .line 607
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTileView:Lcom/lenovo/scg/gallery3d/ui/TileImageView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/TileImageView;->setModel(Lcom/lenovo/scg/gallery3d/ui/TileImageView$TileSource;)V

    .line 609
    return-void
.end method

.method public setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mOnFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .line 254
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 2717
    return-void
.end method

.method public setPanoramaModel(Z)V
    .locals 6
    .param p1, "mode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1600
    if-eqz p1, :cond_0

    .line 1601
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 1602
    iput v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    .line 1609
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_1

    move v1, v2

    :goto_1
    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    if-lez v5, :cond_2

    :goto_2
    invoke-virtual {v4, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->resetBound(ZZ)V

    .line 1610
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPanoramaModel:Z

    .line 1611
    return-void

    .line 1604
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTempPrevBound:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBound:I

    .line 1605
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mTempNextBound:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mNextBound:I

    .line 1606
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1607
    .local v0, "abs":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showPanorama(Z)V

    goto :goto_0

    .end local v0    # "abs":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    :cond_1
    move v1, v3

    .line 1609
    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public setPressSpeechIcon()V
    .locals 3

    .prologue
    .line 593
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v2, 0x7f0206a9

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 594
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mGestureListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 2188
    return-void
.end method

.method public setWantPictureCenterCallbacks(Z)V
    .locals 0
    .param p1, "wanted"    # Z

    .prologue
    .line 722
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 723
    return-void
.end method

.method public setmIsSpeechPic(Z)V
    .locals 0
    .param p1, "isSpeechPic"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsSpeechPic:Z

    .line 573
    return-void
.end method

.method public startPanoramaAnimation()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1546
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPictures:Lcom/lenovo/scg/gallery3d/util/RangeArray;

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1582
    :cond_0
    :goto_0
    return v12

    .line 1547
    :cond_1
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;

    invoke-interface {v10}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;->isCanScroller()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1548
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v10

    int-to-float v4, v10

    .line 1549
    .local v4, "imageW":F
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v10

    int-to-float v2, v10

    .line 1550
    .local v2, "imageH":F
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->getImageScale()F

    move-result v3

    .line 1551
    .local v3, "imageS":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v10

    int-to-float v9, v10

    .line 1552
    .local v9, "w":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v10

    int-to-float v1, v10

    .line 1553
    .local v1, "h":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1557
    .local v8, "scale":F
    cmpl-float v10, v4, v2

    if-lez v10, :cond_6

    .line 1558
    div-float v8, v1, v2

    .line 1559
    const/4 v7, 0x4

    .line 1560
    .local v7, "playMode":I
    mul-float v10, v2, v3

    cmpl-float v10, v10, v1

    if-nez v10, :cond_5

    move v6, v11

    .line 1568
    .local v6, "needScale":Z
    :goto_1
    const/4 v10, 0x4

    if-eq v7, v10, :cond_2

    const/4 v10, 0x5

    if-ne v7, v10, :cond_0

    .line 1569
    :cond_2
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurrentBox:I

    iget v13, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBox:I

    if-ne v10, v13, :cond_3

    if-nez v6, :cond_4

    .line 1570
    :cond_3
    iget v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurrentBox:I

    iput v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPrevBox:I

    .line 1571
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v10, v8}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->resetPoint(F)V

    .line 1573
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1574
    .local v0, "abs":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    invoke-virtual {v0, v12}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showPanorama(Z)V

    .line 1575
    iput-boolean v11, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z

    .line 1576
    invoke-virtual {p0, v11}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setPanoramaModel(Z)V

    .line 1577
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const/16 v12, 0x71

    invoke-virtual {v10, v12}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1578
    .local v5, "m":Landroid/os/Message;
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 1579
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v12, 0x4

    invoke-virtual {v10, v5, v12, v13}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v12, v11

    .line 1580
    goto :goto_0

    .end local v0    # "abs":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "needScale":Z
    :cond_5
    move v6, v12

    .line 1560
    goto :goto_1

    .line 1561
    .end local v7    # "playMode":I
    :cond_6
    cmpg-float v10, v4, v2

    if-gez v10, :cond_0

    .line 1562
    div-float v8, v9, v4

    .line 1563
    const/4 v7, 0x5

    .line 1564
    .restart local v7    # "playMode":I
    mul-float v10, v4, v3

    cmpl-float v10, v10, v9

    if-nez v10, :cond_7

    move v6, v11

    .restart local v6    # "needScale":Z
    :goto_2
    goto :goto_1

    .end local v6    # "needScale":Z
    :cond_7
    move v6, v12

    goto :goto_2
.end method

.method public startZoomInAnimation(Z)V
    .locals 4
    .param p1, "isDelay"    # Z

    .prologue
    const/16 v1, 0x70

    .line 2954
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->initEditModeMoveY()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->EditModeMoveY:F

    .line 2956
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->enterEditMode()V

    .line 2958
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 2960
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 2961
    if-eqz p1, :cond_0

    .line 2962
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2966
    :goto_0
    return-void

    .line 2964
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public stopPanoramaAnimation()Z
    .locals 3

    .prologue
    .line 1586
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mHandler:Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 1587
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 1588
    .local v0, "abs":Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->showPanorama(Z)V

    .line 1589
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama:Z

    return v1
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mPositionController:Lcom/lenovo/scg/gallery3d/ui/PositionController;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PositionController;->stopScrolling()V

    .line 604
    return-void
.end method

.method public switchSpeechPicIcon(Z)V
    .locals 4
    .param p1, "isSwitch"    # Z

    .prologue
    .line 576
    if-eqz p1, :cond_2

    .line 577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIconIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIconIds:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIconIds:[I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mLastIndex:I

    aget v2, v2, v3

    if-eq v1, v2, :cond_1

    .line 579
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIconIds:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurIcon:I

    .line 580
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mLastIndex:I

    .line 585
    :cond_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mCurIcon:I

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    .line 589
    .end local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 590
    return-void

    .line 577
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    .end local v0    # "i":I
    :cond_2
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;

    const v3, 0x7f0206a8

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mSpeechPlayIcon:Lcom/lenovo/scg/gallery3d/glrenderer/Texture;

    goto :goto_1
.end method

.method public switchToImage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->moveTo(I)V

    .line 2697
    return-void
.end method

.method public switchWithCaptureAnimation(IZ)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "isWatchBack"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2724
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 2725
    .local v0, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 2745
    :goto_0
    return v1

    .line 2727
    :cond_0
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mIsWatchBack:Z

    .line 2729
    if-ne p1, v1, :cond_2

    .line 2732
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->mModel:Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;->isHaveCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->SUPPORT_SLIDE_TO_LEFT:I

    if-ne v2, v1, :cond_1

    .line 2735
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->slideToNextPicture()Z

    goto :goto_0

    .line 2741
    :cond_2
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2743
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2745
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method
