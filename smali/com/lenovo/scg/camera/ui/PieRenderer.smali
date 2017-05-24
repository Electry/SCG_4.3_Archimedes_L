.class public Lcom/lenovo/scg/camera/ui/PieRenderer;
.super Lcom/lenovo/scg/camera/ui/OverlayRenderer;
.source "PieRenderer.java"

# interfaces
.implements Lcom/lenovo/scg/camera/focus/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;,
        Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;,
        Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;,
        Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;,
        Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;,
        Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;,
        Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
    }
.end annotation


# static fields
.field private static final ADGE_EXPAND:I = 0x64

.field private static final AE_AF_LOCK_ANIM_TIME:J = 0x320L

.field private static final ANIMATION_DURATION:I = 0xfa

.field protected static CENTER:F = 0.0f

.field private static final DIAL_HORIZONTAL:I = 0x9d

.field private static final DISAPPEAR_TIMEOUT:I = 0xc8

.field private static final FOCUS_CORE_ALPHA_FAILED:I = 0xff

.field private static final FOCUS_CORE_ALPHA_SUCCESS:I = 0xe1

.field private static final FOCUS_CORE_ANIMATION_ALPHA_END:I = 0x33

.field private static final FOCUS_CORE_ANIMATION_DURATION:I = 0x64

.field private static final FOCUS_CORE_DEGREE_EACH_LEVEL:I = 0x320

.field private static final FOCUS_CORE_DEGREE_MAX_LEVEL:I = 0x2710

.field private static final FOCUS_DISAPPEAR_DURATION:I = 0x78

.field private static final FOCUS_INFINITY_SHOW_TIME:I = 0x5dc

.field private static final FOCUS_METERING_SHOW_TIME:I = 0x15e

.field private static final INFINITY_SHOW_TIME:I = 0x50

.field private static final MATH_PI_2:F = 1.5707964f

.field private static final MSG_CLOSE:I = 0x1

.field private static final MSG_OPEN:I = 0x0

.field private static final MSG_OPENSUBMENU:I = 0x2

.field private static final PIE_FADE_IN_DURATION:J = 0xc8L

.field private static final PIE_FADE_OUT_DURATION:I = 0x258

.field private static final PIE_OPEN_SUB_DELAY:J = 0x190L

.field private static final PIE_SELECT_FADE_DURATION:J = 0x12cL

.field private static final PIE_SLICE_DURATION:J = 0x50L

.field private static final PIE_XFADE_DURATION:J = 0xc8L

.field protected static RAD24:F = 0.0f

.field private static final SCALE_DOWN_ANIMATION_INTERPOLATOR:F = 0.6f

.field private static final SCALING_DOWN_TIME:I = 0x64

.field private static final SCALING_UP_TIME:I = 0x258

.field private static final STATE_AE_AF_DIFFER_LOCK:I = 0x9

.field private static final STATE_AE_AF_LOCK:I = 0x7

.field private static final STATE_FAIL:I = 0x3

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_INFINITY:I = 0x5

.field private static final STATE_METERING:I = 0x4

.field private static final STATE_PIE:I = 0x8

.field private static final STATE_SUCCESS:I = 0x2

.field private static final STATE_TOUCH_CAPTURE:I = 0x6

.field protected static final SWEEP_ARC:F = 0.23f

.field protected static final SWEEP_SLICE:F = 0.14f

.field private static final TAG:Ljava/lang/String; = "CAM_Pie"

.field private static final TOUCH_CAPTURE_WAY_ANIM_TIME:J = 0xfaL


# instance fields
.field private final FOCUS_ANIM_VALUE_END:F

.field private final FOCUS_ANIM_VALUE_START:F

.field private isTouchFocus:Z

.field private mAEPaint:Landroid/graphics/Paint;

.field private mAeAfDifferLockAeInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfDifferLockAeMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfDifferLockAfInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfDifferLockAfMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfDifferLockAfOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfLockCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfLockInnerDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfLockMiddleDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfLockOuterDrawable:Landroid/graphics/drawable/Drawable;

.field private mAeAfLockText:Ljava/lang/String;

.field private mAeAfLockTextLength:I

.field private mAeAfLockTextPath:Landroid/graphics/Path;

.field private mAeAfLockTextRectF:Landroid/graphics/RectF;

.field private mAngleZone:I

.field private mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

.field private mArcCenterY:I

.field private mArcOffset:I

.field private mArcRadius:I

.field private mBlockFocus:Z

.field private mCenterAngle:F

.field private mCenterX:I

.field private mCenterY:I

.field private mCircle:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

.field private mDeadZone:I

.field private mDial:Landroid/graphics/RectF;

.field private mDialAngle:I

.field private mDisappear:Ljava/lang/Runnable;

.field private mDown:Landroid/graphics/Point;

.field private mEndAction:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

.field private mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

.field private mFailColor:I

.field private volatile mFocusCancelled:Z

.field private mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

.field private mFocusInfinityDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusInnerCircleRotateDegree:I

.field private mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusPaint:Landroid/graphics/Paint;

.field private mFocusProBlueCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusProInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusProInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusProOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusProWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusSmartGreenCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusSmartInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusSmartOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusSmartRedCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusSmartWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusValueAnimation:Landroid/animation/ValueAnimator;

.field private mFocusX:I

.field private mFocusX2:I

.field private mFocusY:I

.field private mFocusY2:I

.field private mFocused:Z

.field private mHandler:Landroid/os/Handler;

.field private mInnerOffset:I

.field private mInnerStroke:I

.field private mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

.field private mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

.field private mLockTextBgPaint:Landroid/graphics/Paint;

.field private mLockTextPaint:Landroid/graphics/Paint;

.field private mMenuArcPaint:Landroid/graphics/Paint;

.field private mOpen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/camera/ui/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOpening:Z

.field private mOrientation:I

.field private mOuterStroke:I

.field private mPieCenterX:I

.field private mPieCenterY:I

.field private mPoint1:Landroid/graphics/Point;

.field private mPoint2:Landroid/graphics/Point;

.field private mPolar:Landroid/graphics/PointF;

.field private mRadius:I

.field private mRadiusInc:I

.field private mRes:Landroid/content/res/Resources;

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

.field private mSliceCenterY:I

.field private mSliceRadius:I

.field private mStartAnimationAngle:I

.field private volatile mState:I

.field private mSubPaint:Landroid/graphics/Paint;

.field private mSuccessColor:I

.field private mTapMode:Z

.field private mTouchCaptureWayDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchOffset:I

.field private mTouchSlopSquared:I

.field private mValueAnimRate:F

.field private mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const v0, 0x3fc90fdb

    sput v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->CENTER:F

    .line 137
    const v0, 0x3ed67750

    sput v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->RAD24:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 446
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/OverlayRenderer;-><init>()V

    .line 68
    new-instance v0, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    .line 103
    new-instance v0, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$Disappear;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    .line 105
    new-instance v0, Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$EndAction;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    .line 241
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    .line 252
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->isTouchFocus:Z

    .line 255
    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOrientation:I

    .line 258
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAEPaint:Landroid/graphics/Paint;

    .line 261
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 262
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 263
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartRedCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartGreenCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 276
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 277
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProBlueCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 280
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInfinityDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchCaptureWayDrawable:Landroid/graphics/drawable/Drawable;

    .line 286
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 287
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 288
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockInnerDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 292
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 293
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 294
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 295
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 297
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 300
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    .line 302
    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextLength:I

    .line 304
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    .line 306
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    .line 308
    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    .line 310
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    .line 313
    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleRotateDegree:I

    .line 374
    iput v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    .line 377
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->FOCUS_ANIM_VALUE_START:F

    .line 380
    iput v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->FOCUS_ANIM_VALUE_END:F

    .line 386
    invoke-static {}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusGroupManager:Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    .line 409
    new-instance v0, Lcom/lenovo/scg/camera/ui/PieRenderer$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/PieRenderer$1;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    .line 447
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->init(Landroid/content/Context;)V

    .line 448
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/ui/PieRenderer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->show(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;)Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;)Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/camera/ui/PieRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpening:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/ui/PieRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCancelled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/ui/PieRenderer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startFadeOut()V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->reset()V

    return-void
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/camera/ui/PieRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDialAngle:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/PieRenderer;)Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/ui/PieRenderer;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/ui/PieRenderer;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    return v0
.end method

.method static synthetic access$2102(Lcom/lenovo/scg/camera/ui/PieRenderer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p1, "x1"    # F

    .prologue
    .line 59
    iput p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/ui/PieRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterY:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->onEnterOpen()V

    return-void
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;)Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    return-object p1
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;)Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/ui/PieRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/PieRenderer;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->deselect()V

    return-void
.end method

.method private cancelFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2178
    const-string v0, "CAM_Pie"

    const-string v1, " cancelFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCancelled:Z

    .line 2180
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2181
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2182
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->cancel()V

    .line 2184
    :cond_0
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCancelled:Z

    .line 2185
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocused:Z

    .line 2186
    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2187
    return-void
.end method

.method private closeOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 3

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v0

    .line 893
    .local v0, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 894
    return-object v0
.end method

.method private deselect()V
    .locals 3

    .prologue
    .line 1167
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/PieItem;->setSelected(Z)V

    .line 1170
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->closeOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v0

    .line 1172
    .local v0, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->onEnter(Lcom/lenovo/scg/camera/ui/PieItem;)V

    .line 1176
    .end local v0    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :goto_0
    return-void

    .line 1174
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    goto :goto_0
.end method

.method private drawAeAfDifferLockAnim(Landroid/graphics/Canvas;)V
    .locals 46
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1607
    const/high16 v5, 0x40b00000    # 5.5f

    .line 1609
    .local v5, "corner":F
    const/high16 v32, 0x3f800000    # 1.0f

    .line 1610
    .local v32, "outerSizeRate":F
    const/high16 v19, 0x3f800000    # 1.0f

    .line 1611
    .local v19, "middleSizeRate":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1612
    .local v6, "innerSizeRate":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v43, v0

    cmpl-float v43, v43, v5

    if-lez v43, :cond_0

    .line 1613
    const/high16 v34, 0x3f800000    # 1.0f

    .line 1614
    .local v34, "outerSizeRateStart":F
    const v33, 0x3f99999a    # 1.2f

    .line 1615
    .local v33, "outerSizeRateEnd":F
    const/high16 v43, 0x3f800000    # 1.0f

    const/high16 v44, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v45, v0

    sub-float v44, v44, v45

    const v45, -0x41b33330    # -0.20000005f

    mul-float v44, v44, v45

    const/high16 v45, 0x41200000    # 10.0f

    sub-float v45, v45, v5

    div-float v44, v44, v45

    sub-float v32, v43, v44

    .line 1616
    const v20, 0x3f99999a    # 1.2f

    .line 1617
    .local v20, "middleSizeRateStart":F
    const v18, 0x3f4ccccd    # 0.8f

    .line 1618
    .local v18, "meddleSizeRateEnd":F
    const v43, 0x3f99999a    # 1.2f

    const/high16 v44, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v45, v0

    sub-float v44, v44, v45

    const v45, 0x3eccccce    # 0.40000004f

    mul-float v44, v44, v45

    const/high16 v45, 0x41200000    # 10.0f

    sub-float v45, v45, v5

    div-float v44, v44, v45

    sub-float v19, v43, v44

    .line 1620
    const/high16 v43, 0x3f800000    # 1.0f

    move/from16 v0, v32

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v32

    .line 1621
    const v43, 0x3f99999a    # 1.2f

    move/from16 v0, v32

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v32

    .line 1622
    const v43, 0x3f4ccccd    # 0.8f

    move/from16 v0, v19

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 1623
    const v43, 0x3f99999a    # 1.2f

    move/from16 v0, v19

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 1640
    :goto_0
    const/high16 v8, 0x3f000000    # 0.5f

    .line 1641
    .local v8, "innerSizeRateStart":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1642
    .local v7, "innerSizeRateEnd":F
    const/high16 v43, 0x3f000000    # 0.5f

    const/high16 v44, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v45, v0

    sub-float v44, v44, v45

    const/high16 v45, -0x41000000    # -0.5f

    mul-float v44, v44, v45

    const/high16 v45, 0x41100000    # 9.0f

    div-float v44, v44, v45

    sub-float v6, v43, v44

    .line 1643
    const/high16 v43, 0x3f000000    # 0.5f

    move/from16 v0, v43

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1644
    const/high16 v43, 0x3f800000    # 1.0f

    move/from16 v0, v43

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1646
    const/16 v29, 0xff

    .line 1647
    .local v29, "outerAlpha":I
    const/16 v31, 0x0

    .line 1648
    .local v31, "outerAlphaRateStart":I
    const/16 v30, 0xff

    .line 1649
    .local v30, "outerAlphaRateEnd":I
    const/16 v43, 0x0

    const/high16 v44, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v45, v0

    sub-float v44, v44, v45

    const/high16 v45, -0x3c810000    # -255.0f

    mul-float v44, v44, v45

    const/high16 v45, 0x41100000    # 9.0f

    div-float v44, v44, v45

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1650
    const/16 v43, 0x0

    move/from16 v0, v29

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 1651
    const/16 v43, 0xff

    move/from16 v0, v29

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1653
    const/16 v17, 0x0

    .line 1654
    .local v17, "level":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOrientation:I

    move/from16 v43, v0

    sparse-switch v43, :sswitch_data_0

    .line 1669
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v32

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v37, v0

    .line 1670
    .local v37, "outerleft1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v32

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v41, v0

    .line 1671
    .local v41, "outertop1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v32

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v39, v0

    .line 1672
    .local v39, "outerright1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v32

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v35, v0

    .line 1673
    .local v35, "outerbottom1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v37

    move/from16 v2, v41

    move/from16 v3, v39

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1678
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v19

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1679
    .local v23, "middleleft1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v19

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1680
    .local v27, "middletop1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v19

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1681
    .local v25, "middleright1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v19

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1682
    .local v21, "middlebottom1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v23

    move/from16 v2, v27

    move/from16 v3, v25

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1686
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v6

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v11, v0

    .line 1687
    .local v11, "innerleft1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v6

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v15, v0

    .line 1688
    .local v15, "innertop1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v6

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v13, v0

    .line 1689
    .local v13, "innerright1":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v6

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v9, v0

    .line 1692
    .local v9, "innerbottom1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v15, v13, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v32

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v38, v0

    .line 1698
    .local v38, "outerleft2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v32

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v42, v0

    .line 1699
    .local v42, "outertop2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v32

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v40, v0

    .line 1700
    .local v40, "outerright2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v32

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v36, v0

    .line 1701
    .local v36, "outerbottom2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfOuterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    move/from16 v2, v42

    move/from16 v3, v40

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfOuterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfOuterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1705
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v19

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1706
    .local v24, "middleleft2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v19

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1707
    .local v28, "middletop2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v19

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1708
    .local v26, "middleright2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v19

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1709
    .local v22, "middlebottom2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v26

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1713
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v6

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v12, v0

    .line 1714
    .local v12, "innerleft2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v6

    sub-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1715
    .local v16, "innertop2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v6

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v14, v0

    .line 1716
    .local v14, "innerright2":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY2:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v44, v44, v6

    add-float v43, v43, v44

    move/from16 v0, v43

    float-to-int v10, v0

    .line 1717
    .local v10, "innerbottom2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v12, v1, v14, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1722
    return-void

    .line 1625
    .end local v7    # "innerSizeRateEnd":F
    .end local v8    # "innerSizeRateStart":F
    .end local v9    # "innerbottom1":I
    .end local v10    # "innerbottom2":I
    .end local v11    # "innerleft1":I
    .end local v12    # "innerleft2":I
    .end local v13    # "innerright1":I
    .end local v14    # "innerright2":I
    .end local v15    # "innertop1":I
    .end local v16    # "innertop2":I
    .end local v17    # "level":I
    .end local v18    # "meddleSizeRateEnd":F
    .end local v20    # "middleSizeRateStart":F
    .end local v21    # "middlebottom1":I
    .end local v22    # "middlebottom2":I
    .end local v23    # "middleleft1":I
    .end local v24    # "middleleft2":I
    .end local v25    # "middleright1":I
    .end local v26    # "middleright2":I
    .end local v27    # "middletop1":I
    .end local v28    # "middletop2":I
    .end local v29    # "outerAlpha":I
    .end local v30    # "outerAlphaRateEnd":I
    .end local v31    # "outerAlphaRateStart":I
    .end local v33    # "outerSizeRateEnd":F
    .end local v34    # "outerSizeRateStart":F
    .end local v35    # "outerbottom1":I
    .end local v36    # "outerbottom2":I
    .end local v37    # "outerleft1":I
    .end local v38    # "outerleft2":I
    .end local v39    # "outerright1":I
    .end local v40    # "outerright2":I
    .end local v41    # "outertop1":I
    .end local v42    # "outertop2":I
    :cond_0
    const v34, 0x3f99999a    # 1.2f

    .line 1626
    .restart local v34    # "outerSizeRateStart":F
    const/high16 v33, 0x3f800000    # 1.0f

    .line 1627
    .restart local v33    # "outerSizeRateEnd":F
    const v43, 0x3f99999a    # 1.2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v44, v0

    sub-float v44, v5, v44

    const v45, 0x3e4cccd0    # 0.20000005f

    mul-float v44, v44, v45

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v45, v5, v45

    div-float v44, v44, v45

    sub-float v32, v43, v44

    .line 1628
    const v20, 0x3f4ccccd    # 0.8f

    .line 1629
    .restart local v20    # "middleSizeRateStart":F
    const/high16 v18, 0x3f800000    # 1.0f

    .line 1630
    .restart local v18    # "meddleSizeRateEnd":F
    const v43, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v44, v0

    sub-float v44, v5, v44

    const v45, -0x41b33334    # -0.19999999f

    mul-float v44, v44, v45

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v45, v5, v45

    div-float v44, v44, v45

    sub-float v19, v43, v44

    .line 1632
    const/high16 v43, 0x3f800000    # 1.0f

    move/from16 v0, v32

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v32

    .line 1633
    const v43, 0x3f99999a    # 1.2f

    move/from16 v0, v32

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v32

    .line 1634
    const v43, 0x3f4ccccd    # 0.8f

    move/from16 v0, v19

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 1635
    const/high16 v43, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v19

    goto/16 :goto_0

    .line 1656
    .restart local v7    # "innerSizeRateEnd":F
    .restart local v8    # "innerSizeRateStart":F
    .restart local v17    # "level":I
    .restart local v29    # "outerAlpha":I
    .restart local v30    # "outerAlphaRateEnd":I
    .restart local v31    # "outerAlphaRateStart":I
    :sswitch_0
    const/16 v17, 0x0

    .line 1657
    goto/16 :goto_1

    .line 1659
    :sswitch_1
    const/16 v17, 0x2710

    .line 1660
    goto/16 :goto_1

    .line 1662
    :sswitch_2
    const/16 v17, 0x1a0a

    .line 1663
    goto/16 :goto_1

    .line 1665
    :sswitch_3
    const/16 v17, 0xd05

    goto/16 :goto_1

    .line 1654
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private drawAeAfLockAnim(Landroid/graphics/Canvas;)V
    .locals 51
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1732
    const-string v48, "CAM_Pie"

    const-string v49, "drawAeAfLockAnim()"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const v15, 0x41033333    # 8.2f

    .line 1735
    .local v15, "corner1":F
    const v16, 0x40cccccc    # 6.3999996f

    .line 1736
    .local v16, "corner2":F
    const v17, 0x40933333    # 4.6f

    .line 1738
    .local v17, "corner3":F
    const/high16 v41, 0x3f800000    # 1.0f

    .line 1739
    .local v41, "outerSizeRate":F
    const/high16 v31, 0x3f800000    # 1.0f

    .line 1740
    .local v31, "middleSizeRate":F
    const/high16 v21, 0x3f800000    # 1.0f

    .line 1741
    .local v21, "innerSizeRate":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1743
    .local v8, "centerSizeRate":F
    const/16 v38, 0xff

    .line 1744
    .local v38, "outerAlpha":I
    const/16 v28, 0xff

    .line 1745
    .local v28, "middleAlpha":I
    const/16 v18, 0xff

    .line 1746
    .local v18, "innerAlpha":I
    const/16 v5, 0xff

    .line 1748
    .local v5, "centerAlpha":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v48, v0

    cmpl-float v48, v48, v15

    if-lez v48, :cond_0

    .line 1752
    const/high16 v43, 0x3f800000    # 1.0f

    .line 1753
    .local v43, "outerSizeRateStart":F
    const v42, 0x3faccccd    # 1.35f

    .line 1754
    .local v42, "outerSizeRateEnd":F
    const/high16 v48, 0x3f800000    # 1.0f

    const/high16 v49, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    sub-float v49, v49, v50

    const v50, -0x414ccccc    # -0.35000002f

    mul-float v49, v49, v50

    const/high16 v50, 0x41200000    # 10.0f

    sub-float v50, v50, v15

    div-float v49, v49, v50

    sub-float v41, v48, v49

    .line 1755
    const/16 v40, 0x0

    .line 1756
    .local v40, "outerAlphaStart":I
    const/16 v39, 0x80

    .line 1757
    .local v39, "outerAlphaEnd":I
    const/16 v48, 0x0

    const/high16 v49, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    sub-float v49, v49, v50

    const/high16 v50, -0x3d000000    # -128.0f

    mul-float v49, v49, v50

    const/high16 v50, 0x41200000    # 10.0f

    sub-float v50, v50, v15

    div-float v49, v49, v50

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v38, v0

    .line 1759
    const v48, 0x3faccccd    # 1.35f

    move/from16 v0, v41

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v41

    .line 1760
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v41

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v41

    .line 1761
    const/16 v48, 0x80

    move/from16 v0, v38

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 1762
    const/16 v48, 0x0

    move/from16 v0, v38

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1765
    const/high16 v33, 0x3f800000    # 1.0f

    .line 1766
    .local v33, "middleSizeRateStart":F
    const v32, 0x3f4ccccd    # 0.8f

    .line 1767
    .local v32, "middleSizeRateEnd":F
    const/high16 v48, 0x3f800000    # 1.0f

    const/high16 v49, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    sub-float v49, v49, v50

    const v50, 0x3e4ccccc    # 0.19999999f

    mul-float v49, v49, v50

    const/high16 v50, 0x41200000    # 10.0f

    sub-float v50, v50, v15

    div-float v49, v49, v50

    sub-float v31, v48, v49

    .line 1768
    const/16 v30, 0x0

    .line 1769
    .local v30, "middleAlphaStart":I
    const/16 v29, 0x80

    .line 1770
    .local v29, "middleAlphaEnd":I
    const/16 v48, 0x0

    const/high16 v49, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    sub-float v49, v49, v50

    const/high16 v50, -0x3d000000    # -128.0f

    mul-float v49, v49, v50

    const/high16 v50, 0x41200000    # 10.0f

    sub-float v50, v50, v15

    div-float v49, v49, v50

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1772
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v31

    .line 1773
    const v48, 0x3f4ccccd    # 0.8f

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 1774
    const/16 v48, 0x80

    move/from16 v0, v28

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1775
    const/16 v48, 0x0

    move/from16 v0, v28

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1778
    const/high16 v23, 0x3f800000    # 1.0f

    .line 1779
    .local v23, "innerSizeRateStart":F
    const v22, 0x3f99999a    # 1.2f

    .line 1780
    .local v22, "innerSizeRateEnd":F
    const/high16 v48, 0x3f800000    # 1.0f

    const/high16 v49, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    sub-float v49, v49, v50

    const v50, -0x41b33330    # -0.20000005f

    mul-float v49, v49, v50

    const/high16 v50, 0x41200000    # 10.0f

    sub-float v50, v50, v15

    div-float v49, v49, v50

    sub-float v21, v48, v49

    .line 1781
    const/16 v20, 0x0

    .line 1782
    .local v20, "innerAlphaStart":I
    const/16 v19, 0x80

    .line 1783
    .local v19, "innerAlphaEnd":I
    const/16 v48, 0x0

    const/high16 v49, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    sub-float v49, v49, v50

    const/high16 v50, -0x3d000000    # -128.0f

    mul-float v49, v49, v50

    const/high16 v50, 0x41200000    # 10.0f

    sub-float v50, v50, v15

    div-float v49, v49, v50

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1785
    const v48, 0x3f99999a    # 1.2f

    move/from16 v0, v21

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 1786
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 1787
    const/16 v48, 0x80

    move/from16 v0, v18

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1788
    const/16 v48, 0x0

    move/from16 v0, v18

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1791
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1792
    .local v10, "centerSizeRateStart":F
    const v9, 0x3f99999a    # 1.2f

    .line 1793
    .local v9, "centerSizeRateEnd":F
    const/high16 v48, 0x3f800000    # 1.0f

    const/high16 v49, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    sub-float v49, v49, v50

    const v50, -0x41b33330    # -0.20000005f

    mul-float v49, v49, v50

    const/high16 v50, 0x41200000    # 10.0f

    sub-float v50, v50, v15

    div-float v49, v49, v50

    sub-float v8, v48, v49

    .line 1794
    const/4 v7, 0x0

    .line 1795
    .local v7, "centerAlphaStart":I
    const/16 v6, 0x80

    .line 1796
    .local v6, "centerAlphaEnd":I
    const/16 v48, 0x0

    const/high16 v49, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    sub-float v49, v49, v50

    const/high16 v50, -0x3d000000    # -128.0f

    mul-float v49, v49, v50

    const/high16 v50, 0x41200000    # 10.0f

    sub-float v50, v50, v15

    div-float v49, v49, v50

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v5, v0

    .line 1798
    const v48, 0x3f99999a    # 1.2f

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1799
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1800
    const/16 v48, 0x80

    move/from16 v0, v48

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1801
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1897
    .end local v6    # "centerAlphaEnd":I
    .end local v7    # "centerAlphaStart":I
    .end local v9    # "centerSizeRateEnd":F
    .end local v10    # "centerSizeRateStart":F
    .end local v19    # "innerAlphaEnd":I
    .end local v20    # "innerAlphaStart":I
    .end local v22    # "innerSizeRateEnd":F
    .end local v23    # "innerSizeRateStart":F
    .end local v29    # "middleAlphaEnd":I
    .end local v30    # "middleAlphaStart":I
    .end local v39    # "outerAlphaEnd":I
    .end local v40    # "outerAlphaStart":I
    :goto_0
    const-string v48, "CAM_Pie"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "drawAeAfLockAnim(): --------mValueAnimRate = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const-string v48, "CAM_Pie"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "drawAeAfLockAnim(): outerSizeRate = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string v48, "CAM_Pie"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "drawAeAfLockAnim(): outerAlpha = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v41

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v45, v0

    .line 1908
    .local v45, "outerleft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v41

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v47, v0

    .line 1909
    .local v47, "outertop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v41

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v46, v0

    .line 1910
    .local v46, "outerright":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v41

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v44, v0

    .line 1911
    .local v44, "outerbottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v45

    move/from16 v2, v47

    move/from16 v3, v46

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v31

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v35, v0

    .line 1916
    .local v35, "middleleft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v31

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v37, v0

    .line 1917
    .local v37, "middletop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v31

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v36, v0

    .line 1918
    .local v36, "middleright":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v31

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v34, v0

    .line 1919
    .local v34, "middlebottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v35

    move/from16 v2, v37

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockMiddleDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1923
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v21

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1924
    .local v25, "innerleft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v21

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1925
    .local v27, "innertop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v21

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1926
    .local v26, "innerright":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v21

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1927
    .local v24, "innerbottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockInnerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockInnerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockInnerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v8

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v12, v0

    .line 1932
    .local v12, "centerleft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v8

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v14, v0

    .line 1933
    .local v14, "centertop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v8

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v13, v0

    .line 1934
    .local v13, "centerright":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    move/from16 v48, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    mul-float v49, v49, v8

    add-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v11, v0

    .line 1935
    .local v11, "centerbottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1939
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawAeAfLockText(Landroid/graphics/Canvas;)V

    .line 1941
    return-void

    .line 1803
    .end local v11    # "centerbottom":I
    .end local v12    # "centerleft":I
    .end local v13    # "centerright":I
    .end local v14    # "centertop":I
    .end local v24    # "innerbottom":I
    .end local v25    # "innerleft":I
    .end local v26    # "innerright":I
    .end local v27    # "innertop":I
    .end local v32    # "middleSizeRateEnd":F
    .end local v33    # "middleSizeRateStart":F
    .end local v34    # "middlebottom":I
    .end local v35    # "middleleft":I
    .end local v36    # "middleright":I
    .end local v37    # "middletop":I
    .end local v42    # "outerSizeRateEnd":F
    .end local v43    # "outerSizeRateStart":F
    .end local v44    # "outerbottom":I
    .end local v45    # "outerleft":I
    .end local v46    # "outerright":I
    .end local v47    # "outertop":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v48, v0

    cmpl-float v48, v48, v16

    if-lez v48, :cond_1

    .line 1807
    const v43, 0x3faccccd    # 1.35f

    .line 1808
    .restart local v43    # "outerSizeRateStart":F
    const/high16 v42, 0x3f800000    # 1.0f

    .line 1809
    .restart local v42    # "outerSizeRateEnd":F
    const v48, 0x3faccccd    # 1.35f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v15, v49

    const v50, 0x3eb33334    # 0.35000002f

    mul-float v49, v49, v50

    sub-float v50, v15, v16

    div-float v49, v49, v50

    sub-float v41, v48, v49

    .line 1810
    const/16 v40, 0x80

    .line 1811
    .restart local v40    # "outerAlphaStart":I
    const/16 v39, 0xff

    .line 1812
    .restart local v39    # "outerAlphaEnd":I
    const/high16 v48, 0x43000000    # 128.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v15, v49

    const/high16 v50, -0x3d020000    # -127.0f

    mul-float v49, v49, v50

    sub-float v50, v15, v16

    div-float v49, v49, v50

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v38, v0

    .line 1814
    const v48, 0x3faccccd    # 1.35f

    move/from16 v0, v41

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v41

    .line 1815
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v41

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v41

    .line 1816
    const/16 v48, 0xff

    move/from16 v0, v38

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 1817
    const/16 v48, 0x80

    move/from16 v0, v38

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1820
    const v33, 0x3f4ccccd    # 0.8f

    .line 1821
    .restart local v33    # "middleSizeRateStart":F
    const/high16 v32, 0x3f800000    # 1.0f

    .line 1822
    .restart local v32    # "middleSizeRateEnd":F
    const v48, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v15, v49

    const v50, -0x41b33334    # -0.19999999f

    mul-float v49, v49, v50

    sub-float v50, v15, v16

    div-float v49, v49, v50

    sub-float v31, v48, v49

    .line 1823
    const/16 v30, 0x80

    .line 1824
    .restart local v30    # "middleAlphaStart":I
    const/16 v29, 0xff

    .line 1825
    .restart local v29    # "middleAlphaEnd":I
    const/high16 v48, 0x43000000    # 128.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v15, v49

    const/high16 v50, -0x3d020000    # -127.0f

    mul-float v49, v49, v50

    sub-float v50, v15, v16

    div-float v49, v49, v50

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1827
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v31

    .line 1828
    const v48, 0x3f4ccccd    # 0.8f

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 1829
    const/16 v48, 0xff

    move/from16 v0, v28

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1830
    const/16 v48, 0x80

    move/from16 v0, v28

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1833
    const v23, 0x3f99999a    # 1.2f

    .line 1834
    .restart local v23    # "innerSizeRateStart":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 1835
    .restart local v22    # "innerSizeRateEnd":F
    const v48, 0x3f99999a    # 1.2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v15, v49

    const v50, 0x3e4cccd0    # 0.20000005f

    mul-float v49, v49, v50

    sub-float v50, v15, v16

    div-float v49, v49, v50

    sub-float v21, v48, v49

    .line 1836
    const/16 v20, 0x80

    .line 1837
    .restart local v20    # "innerAlphaStart":I
    const/16 v19, 0xff

    .line 1838
    .restart local v19    # "innerAlphaEnd":I
    const/high16 v48, 0x43000000    # 128.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v15, v49

    const/high16 v50, -0x3d020000    # -127.0f

    mul-float v49, v49, v50

    sub-float v50, v15, v16

    div-float v49, v49, v50

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v18, v0

    .line 1840
    const v48, 0x3f99999a    # 1.2f

    move/from16 v0, v21

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 1841
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 1842
    const/16 v48, 0xff

    move/from16 v0, v18

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1843
    const/16 v48, 0x80

    move/from16 v0, v18

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1846
    const v10, 0x3f333333    # 0.7f

    .line 1847
    .restart local v10    # "centerSizeRateStart":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1848
    .restart local v9    # "centerSizeRateEnd":F
    const v48, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v15, v49

    const v50, -0x41666666    # -0.3f

    mul-float v49, v49, v50

    sub-float v50, v15, v16

    div-float v49, v49, v50

    sub-float v8, v48, v49

    .line 1849
    const/16 v7, 0x80

    .line 1850
    .restart local v7    # "centerAlphaStart":I
    const/16 v6, 0xff

    .line 1851
    .restart local v6    # "centerAlphaEnd":I
    const/high16 v48, 0x43000000    # 128.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v15, v49

    const/high16 v50, -0x3d020000    # -127.0f

    mul-float v49, v49, v50

    sub-float v50, v15, v16

    div-float v49, v49, v50

    sub-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v5, v0

    .line 1853
    const v48, 0x3f333333    # 0.7f

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1854
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1855
    const/16 v48, 0xff

    move/from16 v0, v48

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1856
    const/16 v48, 0x80

    move/from16 v0, v48

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1858
    goto/16 :goto_0

    .end local v6    # "centerAlphaEnd":I
    .end local v7    # "centerAlphaStart":I
    .end local v9    # "centerSizeRateEnd":F
    .end local v10    # "centerSizeRateStart":F
    .end local v19    # "innerAlphaEnd":I
    .end local v20    # "innerAlphaStart":I
    .end local v22    # "innerSizeRateEnd":F
    .end local v23    # "innerSizeRateStart":F
    .end local v29    # "middleAlphaEnd":I
    .end local v30    # "middleAlphaStart":I
    .end local v32    # "middleSizeRateEnd":F
    .end local v33    # "middleSizeRateStart":F
    .end local v39    # "outerAlphaEnd":I
    .end local v40    # "outerAlphaStart":I
    .end local v42    # "outerSizeRateEnd":F
    .end local v43    # "outerSizeRateStart":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v48, v0

    cmpl-float v48, v48, v17

    if-lez v48, :cond_2

    .line 1862
    const/high16 v43, 0x3f800000    # 1.0f

    .line 1863
    .restart local v43    # "outerSizeRateStart":F
    const v42, 0x3fb33333    # 1.4f

    .line 1864
    .restart local v42    # "outerSizeRateEnd":F
    const/high16 v48, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v16, v49

    const v50, -0x41333334    # -0.39999998f

    mul-float v49, v49, v50

    sub-float v50, v16, v17

    div-float v49, v49, v50

    sub-float v41, v48, v49

    .line 1866
    const v48, 0x3fb33333    # 1.4f

    move/from16 v0, v41

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v41

    .line 1867
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v41

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v41

    .line 1870
    const/high16 v33, 0x3f800000    # 1.0f

    .line 1871
    .restart local v33    # "middleSizeRateStart":F
    const v32, 0x3f333333    # 0.7f

    .line 1872
    .restart local v32    # "middleSizeRateEnd":F
    const/high16 v48, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v16, v49

    const v50, 0x3e99999a    # 0.3f

    mul-float v49, v49, v50

    sub-float v50, v16, v17

    div-float v49, v49, v50

    sub-float v31, v48, v49

    .line 1874
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v31

    .line 1875
    const v48, 0x3f333333    # 0.7f

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 1877
    goto/16 :goto_0

    .line 1881
    .end local v32    # "middleSizeRateEnd":F
    .end local v33    # "middleSizeRateStart":F
    .end local v42    # "outerSizeRateEnd":F
    .end local v43    # "outerSizeRateStart":F
    :cond_2
    const v43, 0x3fb33333    # 1.4f

    .line 1882
    .restart local v43    # "outerSizeRateStart":F
    const/high16 v42, 0x3f800000    # 1.0f

    .line 1883
    .restart local v42    # "outerSizeRateEnd":F
    const v48, 0x3fb33333    # 1.4f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v17, v49

    const v50, 0x3ecccccc    # 0.39999998f

    mul-float v49, v49, v50

    const/high16 v50, 0x3f800000    # 1.0f

    sub-float v50, v17, v50

    div-float v49, v49, v50

    sub-float v41, v48, v49

    .line 1885
    const v48, 0x3fb33333    # 1.4f

    move/from16 v0, v41

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v41

    .line 1886
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v41

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v41

    .line 1889
    const v33, 0x3f333333    # 0.7f

    .line 1890
    .restart local v33    # "middleSizeRateStart":F
    const/high16 v32, 0x3f800000    # 1.0f

    .line 1891
    .restart local v32    # "middleSizeRateEnd":F
    const v48, 0x3f333333    # 0.7f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    move/from16 v49, v0

    sub-float v49, v17, v49

    const v50, -0x41666666    # -0.3f

    mul-float v49, v49, v50

    const/high16 v50, 0x3f800000    # 1.0f

    sub-float v50, v17, v50

    div-float v49, v49, v50

    sub-float v31, v48, v49

    .line 1893
    const/high16 v48, 0x3f800000    # 1.0f

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v31

    .line 1894
    const v48, 0x3f333333    # 0.7f

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v31

    goto/16 :goto_0
.end method

.method private drawAeAfLockText(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0xff

    .line 1945
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1946
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    .line 1947
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    const/16 v1, 0x25

    const/16 v2, 0xc6

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1948
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1952
    const-string v0, "CAM_Pie"

    const-string v1, "drawAeAfLockText() mAeAfLockText == null && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :goto_0
    return-void

    .line 1956
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1957
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    .line 1958
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1959
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1960
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x1e

    div-int/lit16 v1, v1, 0x438

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1961
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextLength:I

    .line 1962
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawAeAfLockText(): mAeAfLockText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawAeAfLockText(): mAeAfLockTextLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1969
    const/4 v7, 0x6

    .line 1970
    .local v7, "rectCorner":I
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0xa

    div-int/lit16 v9, v0, 0x438

    .line 1971
    .local v9, "xOffset":I
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0xa

    div-int/lit16 v10, v0, 0x438

    .line 1973
    .local v10, "yOffset":I
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextLength:I

    add-int/2addr v0, v9

    add-int v8, v0, v10

    .line 1974
    .local v8, "width":I
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x40

    div-int/lit16 v6, v0, 0x438

    .line 1978
    .local v6, "height":I
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 1980
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v8, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1981
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x52

    div-int/lit16 v1, v1, 0x438

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1982
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v8

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1983
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1984
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    int-to-float v1, v7

    int-to-float v2, v7

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1985
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1986
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1987
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1990
    :sswitch_1
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextLength:I

    add-int/2addr v0, v9

    add-int v6, v0, v10

    .line 1991
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x40

    div-int/lit16 v8, v0, 0x438

    .line 1992
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x4d

    div-int/lit16 v1, v1, 0x438

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1993
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit16 v1, v1, 0x35c

    div-int/lit16 v1, v1, 0x438

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1994
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v8

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1995
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1996
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    int-to-float v1, v7

    int-to-float v2, v7

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1997
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1998
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1999
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 2002
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v8, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2003
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x52

    div-int/lit16 v1, v1, 0x438

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2004
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v8

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2005
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2006
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    int-to-float v1, v7

    int-to-float v2, v7

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2007
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2008
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2009
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 2012
    :sswitch_3
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextLength:I

    add-int/2addr v0, v9

    add-int v6, v0, v10

    .line 2013
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v0, v0, 0x40

    div-int/lit16 v8, v0, 0x438

    .line 2014
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x4d

    div-int/lit16 v1, v1, 0x438

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2015
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit16 v1, v1, 0x35c

    div-int/lit16 v1, v1, 0x438

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2016
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v8

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2017
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 2018
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    int-to-float v1, v7

    int-to-float v2, v7

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2019
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2020
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2021
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockTextPath:Landroid/graphics/Path;

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLockTextPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1978
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private drawArc(Landroid/graphics/Canvas;ILcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "level"    # I
    .param p3, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const v2, 0x3e6b851f    # 0.23f

    .line 966
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 967
    invoke-virtual {p3}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 968
    .local v6, "count":I
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterAngle:F

    int-to-float v1, v6

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float v9, v0, v1

    .line 969
    .local v9, "start":F
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterAngle:F

    int-to-float v1, v6

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float v8, v0, v1

    .line 970
    .local v8, "end":F
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcCenterY:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v1, p2

    sub-int v7, v0, v1

    .line 971
    .local v7, "cy":I
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    sub-int v2, v7, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    float-to-double v2, v8

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    float-to-double v4, v9

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v0

    float-to-double v4, v8

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v3

    sub-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 974
    .end local v6    # "count":I
    .end local v7    # "cy":I
    .end local v8    # "end":F
    .end local v9    # "start":F
    :cond_0
    return-void
.end method

.method private drawFocusCenter(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1347
    iget-object v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1352
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1353
    .local v6, "sizeRate":F
    const v8, 0x3dcccccd    # 0.1f

    .line 1354
    .local v8, "sizeRateStart":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1355
    .local v7, "sizeRateEnd":F
    const v10, 0x3dcccccd    # 0.1f

    const/high16 v11, 0x41200000    # 10.0f

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float/2addr v11, v12

    const v12, -0x4099999a    # -0.9f

    mul-float/2addr v11, v12

    const/high16 v12, 0x41100000    # 9.0f

    div-float/2addr v11, v12

    sub-float v6, v10, v11

    .line 1356
    const v10, 0x3dcccccd    # 0.1f

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1357
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1359
    iget v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    sub-float/2addr v10, v11

    float-to-int v4, v10

    .line 1360
    .local v4, "left":I
    iget v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v10, v10

    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    sub-float/2addr v10, v11

    float-to-int v9, v10

    .line 1361
    .local v9, "top":I
    iget v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    float-to-int v5, v10

    .line 1362
    .local v5, "right":I
    iget v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v10, v10

    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    float-to-int v3, v10

    .line 1364
    .local v3, "bottom":I
    iget-object v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v4, v9, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1366
    const/16 v0, 0xff

    .line 1367
    .local v0, "alpha":I
    const/4 v2, 0x0

    .line 1368
    .local v2, "alphaStart":I
    const/16 v1, 0xff

    .line 1369
    .local v1, "alphaEnd":I
    const/high16 v10, 0x41200000    # 10.0f

    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    const/high16 v11, 0x41100000    # 9.0f

    div-float/2addr v10, v11

    float-to-int v0, v10

    .line 1370
    const/4 v10, 0x0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1371
    const/16 v10, 0xff

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1373
    iget-object v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1378
    iget-object v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawItem(IIILandroid/graphics/Canvas;Lcom/lenovo/scg/camera/ui/PieItem;F)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pos"    # I
    .param p3, "count"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;
    .param p6, "alpha"    # F

    .prologue
    .line 977
    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 978
    invoke-virtual {p5}, Lcom/lenovo/scg/camera/ui/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 979
    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcCenterY:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v5, p1

    sub-int v3, v4, v5

    .line 980
    .local v3, "y":I
    invoke-virtual {p5}, Lcom/lenovo/scg/camera/ui/PieItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 981
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 982
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 983
    .local v2, "state":I
    const/4 v0, 0x0

    .line 984
    .local v0, "angle":F
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v4, :cond_5

    .line 985
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->getValue()F

    move-result v0

    .line 989
    :goto_0
    float-to-double v4, v0

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v0

    .line 990
    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p4, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 991
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    if-eqz v4, :cond_0

    .line 992
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, p6

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 994
    :cond_0
    invoke-virtual {p5}, Lcom/lenovo/scg/camera/ui/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {p4, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 995
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    if-eqz v4, :cond_1

    .line 996
    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 998
    :cond_1
    invoke-virtual {p4, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1000
    .end local v0    # "angle":F
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "state":I
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    if-nez v4, :cond_3

    .line 1001
    invoke-virtual {p5}, Lcom/lenovo/scg/camera/ui/PieItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr p6, v4

    .line 1003
    invoke-virtual {p5, p6}, Lcom/lenovo/scg/camera/ui/PieItem;->setAlpha(F)V

    .line 1005
    :cond_3
    invoke-virtual {p5, p4}, Lcom/lenovo/scg/camera/ui/PieItem;->draw(Landroid/graphics/Canvas;)V

    .line 1008
    .end local v3    # "y":I
    :cond_4
    return-void

    .line 987
    .restart local v0    # "angle":F
    .restart local v1    # "p":Landroid/graphics/Paint;
    .restart local v2    # "state":I
    .restart local v3    # "y":I
    :cond_5
    invoke-direct {p0, p5, p2, p3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getArcCenter(Lcom/lenovo/scg/camera/ui/PieItem;II)F

    move-result v4

    const v5, 0x3deb851f    # 0.115f

    sub-float v0, v4, v5

    goto :goto_0

    .line 1001
    .end local v0    # "angle":F
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "state":I
    :cond_6
    const v4, 0x3e99999a    # 0.3f

    goto :goto_1
.end method

.method private drawMeteringAnim(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchCaptureWayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_0

    .line 1553
    const-string v12, "CAM_Pie"

    const-string v13, "drawTouchCaptureWayAnim: mMeteringIndicator == null && return"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :goto_0
    return-void

    .line 1557
    :cond_0
    const v3, 0x406ccccd    # 3.7f

    .line 1559
    .local v3, "corner":F
    const/4 v1, 0x0

    .line 1560
    .local v1, "alpha":I
    const/16 v5, 0xfa

    .line 1561
    .local v5, "maxAlpha":I
    const/4 v7, 0x0

    .line 1563
    .local v7, "minAlpha":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1564
    .local v10, "sizeRate":F
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 1565
    .local v6, "maxRate":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1567
    .local v8, "minRate":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    cmpl-float v12, v12, v3

    if-lez v12, :cond_1

    .line 1569
    const/4 v12, 0x0

    const/high16 v13, 0x437a0000    # 250.0f

    const/high16 v14, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    const/high16 v14, 0x41200000    # 10.0f

    sub-float/2addr v14, v3

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v1, v12

    .line 1570
    const-string v12, "CAM_Pie"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawTouchCaptureWayAnim(): alpha = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :goto_1
    const/16 v12, 0xfa

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1582
    const/4 v12, 0x0

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1584
    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1585
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 1587
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v13, v13

    mul-float/2addr v13, v10

    sub-float/2addr v12, v13

    float-to-int v4, v12

    .line 1588
    .local v4, "left":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v13, v13

    mul-float/2addr v13, v10

    sub-float/2addr v12, v13

    float-to-int v11, v12

    .line 1589
    .local v11, "top":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v13, v13

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    float-to-int v9, v12

    .line 1590
    .local v9, "right":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v13, v13

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    float-to-int v2, v12

    .line 1592
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchCaptureWayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v4, v11, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchCaptureWayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchCaptureWayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1573
    .end local v2    # "bottom":I
    .end local v4    # "left":I
    .end local v9    # "right":I
    .end local v11    # "top":I
    :cond_1
    const/high16 v12, 0x437a0000    # 250.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float v13, v3, v13

    const/high16 v14, 0x437a0000    # 250.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v3, v14

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v1, v12

    .line 1576
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float v13, v3, v13

    const/high16 v14, -0x41000000    # -0.5f

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v3, v14

    div-float/2addr v13, v14

    sub-float v10, v12, v13

    .line 1577
    const-string v12, "CAM_Pie"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawTouchCaptureWayAnim(): alpha = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-string v12, "CAM_Pie"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawTouchCaptureWayAnim(): sizeRate = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private drawOuterCircle(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1453
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_0

    .line 1490
    :goto_0
    return-void

    .line 1458
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1461
    .local v6, "sizeRate":F
    const v10, 0x40933333    # 4.6f

    .line 1462
    .local v10, "valueEnd":F
    const/high16 v8, 0x3fc00000    # 1.5f

    .line 1463
    .local v8, "sizeRateStart":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1464
    .local v7, "sizeRateEnd":F
    const/high16 v11, 0x3fc00000    # 1.5f

    const/high16 v12, 0x41200000    # 10.0f

    iget v13, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    sub-float/2addr v13, v10

    div-float/2addr v12, v13

    sub-float v6, v11, v12

    .line 1465
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1466
    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1469
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    sub-float/2addr v11, v12

    float-to-int v4, v11

    .line 1470
    .local v4, "left":I
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    sub-float/2addr v11, v12

    float-to-int v9, v11

    .line 1471
    .local v9, "top":I
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    float-to-int v5, v11

    .line 1472
    .local v5, "right":I
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v12, v12

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    float-to-int v3, v11

    .line 1474
    .local v3, "bottom":I
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v4, v9, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1476
    const/16 v0, 0xff

    .line 1477
    .local v0, "alpha":I
    const/4 v2, 0x0

    .line 1478
    .local v2, "alphaStart":I
    const/16 v1, 0xff

    .line 1479
    .local v1, "alphaEnd":I
    const/high16 v11, 0x41200000    # 10.0f

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x41200000    # 10.0f

    sub-float/2addr v12, v10

    div-float/2addr v11, v12

    float-to-int v0, v11

    .line 1480
    const/4 v11, 0x0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1481
    const/16 v11, 0xff

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1484
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1489
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawTouchCaptureWayAnim(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x41200000    # 10.0f

    const/high16 v12, 0x41100000    # 9.0f

    .line 1503
    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAEPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_0

    .line 1504
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAEPaint:Landroid/graphics/Paint;

    .line 1505
    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAEPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1506
    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAEPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1509
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1510
    .local v6, "sizeRate":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1511
    .local v8, "sizeRateStart":F
    const v7, 0x3f8ccccd    # 1.1f

    .line 1512
    .local v7, "sizeRateEnd":F
    iget v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float v9, v13, v9

    const v10, -0x42333330    # -0.100000024f

    mul-float/2addr v9, v10

    div-float/2addr v9, v12

    sub-float v6, v11, v9

    .line 1513
    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1514
    const v9, 0x3f8ccccd    # 1.1f

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1516
    const/16 v0, 0x80

    .line 1517
    .local v0, "alpha":I
    const/16 v2, 0x80

    .line 1518
    .local v2, "alphaStart":I
    const/16 v1, 0x33

    .line 1519
    .local v1, "alphaEnd":I
    const/high16 v9, 0x43000000    # 128.0f

    iget v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float v10, v13, v10

    const/high16 v11, 0x429a0000    # 77.0f

    mul-float/2addr v10, v11

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    float-to-int v0, v9

    .line 1520
    const/16 v9, 0x33

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1521
    const/16 v9, 0x80

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1524
    const/4 v3, 0x0

    .line 1525
    .local v3, "ringRadius":F
    iget v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v5, v9

    .line 1526
    .local v5, "ringRadiusStart":F
    const/4 v4, 0x0

    .line 1527
    .local v4, "ringRadiusEnd":F
    iget v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float v9, v13, v9

    sub-float v10, v5, v4

    mul-float/2addr v9, v10

    div-float/2addr v9, v12

    sub-float v3, v5, v9

    .line 1528
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1529
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1536
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_1

    .line 1537
    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAEPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1538
    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAEPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1539
    iget v9, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v10, v10

    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    iget-object v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAEPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1542
    :cond_1
    return-void
.end method

.method private fadeIn()V
    .locals 4

    .prologue
    .line 720
    new-instance v0, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .line 721
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 722
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/ui/PieRenderer$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/ui/PieRenderer$2;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 737
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->startNow()V

    .line 738
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 739
    return-void
.end method

.method private findItem(Landroid/graphics/PointF;)Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 6
    .param p1, "polar"    # Landroid/graphics/PointF;

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v3

    .line 1255
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/camera/ui/PieItem;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1256
    .local v0, "count":I
    const/4 v4, 0x0

    .line 1257
    .local v4, "pos":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/PieItem;

    .line 1258
    .local v2, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    invoke-direct {p0, p1, v2, v4, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->inside(Landroid/graphics/PointF;Lcom/lenovo/scg/camera/ui/PieItem;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1263
    .end local v2    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :goto_1
    return-object v2

    .line 1261
    .restart local v2    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 1262
    goto :goto_0

    .line 1263
    .end local v2    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getArcCenter(Lcom/lenovo/scg/camera/ui/PieItem;II)F
    .locals 1
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;
    .param p2, "pos"    # I
    .param p3, "count"    # I

    .prologue
    .line 820
    const v0, 0x3e6b851f    # 0.23f

    invoke-direct {p0, p2, p3, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getCenter(IIF)F

    move-result v0

    return v0
.end method

.method private getCenter(IIF)F
    .locals 3
    .param p1, "pos"    # I
    .param p2, "count"    # I
    .param p3, "sweep"    # F

    .prologue
    .line 829
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterAngle:F

    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    return v0
.end method

.method private getCenterAngle()F
    .locals 5

    .prologue
    .line 833
    sget v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->CENTER:F

    .line 834
    .local v0, "center":F
    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDeadZone:I

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAngleZone:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 835
    sget v1, Lcom/lenovo/scg/camera/ui/PieRenderer;->CENTER:F

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAngleZone:I

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDeadZone:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/lenovo/scg/camera/ui/PieRenderer;->RAD24:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAngleZone:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 836
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAngleZone:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 837
    sget v1, Lcom/lenovo/scg/camera/ui/PieRenderer;->CENTER:F

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAngleZone:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/lenovo/scg/camera/ui/PieRenderer;->RAD24:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAngleZone:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0
.end method

.method private getCurrentCount()I
    .locals 1

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getDegrees(D)F
    .locals 7
    .param p1, "angle"    # D

    .prologue
    .line 850
    const-wide v0, 0x4076800000000000L    # 360.0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getFocusGroupIndicator()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 540
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    .line 541
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x69

    div-int/lit16 v2, v2, 0x438

    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    .line 542
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInfinityDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 543
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 544
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 612
    :goto_0
    return-void

    .line 548
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v5, 0x6

    if-ne v2, v5, :cond_1

    .line 549
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x37

    div-int/lit16 v2, v2, 0x438

    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    .line 550
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 551
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 552
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 556
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 557
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x32

    div-int/lit16 v2, v2, 0x438

    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    .line 558
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 559
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 560
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 564
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_3

    .line 565
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x78

    div-int/lit16 v2, v2, 0x438

    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    .line 566
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockOuterDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 567
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 568
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 572
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_4

    .line 573
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x78

    div-int/lit16 v2, v2, 0x438

    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    .line 574
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 575
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 576
    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 580
    :cond_4
    invoke-static {}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->isProFocusGroup()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->isTouchPhotoFocusGroup()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    if-ne v2, v4, :cond_7

    :cond_5
    move v1, v4

    .line 584
    .local v1, "isPro":Z
    :goto_1
    if-eqz v1, :cond_8

    const/16 v0, 0x78

    .line 585
    .local v0, "baseSize":I
    :goto_2
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0x438

    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    .line 587
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 589
    if-nez v1, :cond_b

    .line 590
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 591
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOrientation:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOrientation:I

    const/16 v5, 0xb4

    if-ne v2, v5, :cond_a

    .line 592
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 602
    :goto_4
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-ne v2, v4, :cond_e

    .line 603
    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

    :goto_5
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .end local v0    # "baseSize":I
    .end local v1    # "isPro":Z
    :cond_7
    move v1, v3

    .line 580
    goto :goto_1

    .line 584
    .restart local v1    # "isPro":Z
    :cond_8
    const/16 v0, 0x91

    goto :goto_2

    .line 587
    .restart local v0    # "baseSize":I
    :cond_9
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 594
    :cond_a
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_4

    .line 596
    :cond_b
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->isTouchFocus:Z

    if-eqz v2, :cond_c

    .line 597
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 599
    :cond_c
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 603
    :cond_d
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 604
    :cond_e
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 605
    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProBlueCenterDrawable:Landroid/graphics/drawable/Drawable;

    :goto_6
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartGreenCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 606
    :cond_10
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    .line 607
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartRedCenterDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 609
    :cond_11
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusCenterDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method private getItemPos(Lcom/lenovo/scg/camera/ui/PieItem;)I
    .locals 2
    .param p1, "target"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v0

    .line 1180
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/camera/ui/PieItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method private getLevel()I
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/PieItem;

    return-object v0
.end method

.method private getParent()Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 3

    .prologue
    .line 903
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/PieItem;

    return-object v0
.end method

.method private getPolar(FFZLandroid/graphics/PointF;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffset"    # Z
    .param p4, "res"    # Landroid/graphics/PointF;

    .prologue
    const/4 v6, 0x0

    .line 1105
    const v2, 0x3fc90fdb

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 1106
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 1107
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSliceCenterY:I

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v0, v2, p2

    .line 1108
    .local v0, "y1":F
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcCenterY:I

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v1, v2, p2

    .line 1109
    .local v1, "y2":F
    mul-float v2, p1, p1

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->y:F

    .line 1110
    cmpl-float v2, p1, v6

    if-eqz v2, :cond_0

    .line 1111
    float-to-double v2, v0

    float-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 1112
    iget v2, p4, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    .line 1113
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget v4, p4, Landroid/graphics/PointF;->x:F

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p4, Landroid/graphics/PointF;->x:F

    .line 1116
    :cond_0
    iget v3, p4, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchOffset:I

    :goto_0
    int-to-float v2, v2

    add-float/2addr v2, v3

    iput v2, p4, Landroid/graphics/PointF;->y:F

    .line 1117
    return-void

    .line 1116
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRandomRange()I
    .locals 6

    .prologue
    .line 1308
    const-wide/high16 v0, -0x3fb2000000000000L    # -60.0

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getRoot()Lcom/lenovo/scg/camera/ui/PieItem;
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/PieItem;

    return-object v0
.end method

.method private getSliceCenter(Lcom/lenovo/scg/camera/ui/PieItem;II)F
    .locals 4
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;
    .param p2, "pos"    # I
    .param p3, "count"    # I

    .prologue
    const v3, 0x3e0f5c29    # 0.14f

    .line 824
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getCenterAngle()F

    move-result v1

    sget v2, Lcom/lenovo/scg/camera/ui/PieRenderer;->CENTER:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sget v2, Lcom/lenovo/scg/camera/ui/PieRenderer;->CENTER:F

    add-float v0, v1, v2

    .line 825
    .local v0, "center":F
    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    int-to-float v2, p2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method

.method private hasMoved(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1120
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchSlopSquared:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOpenItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 887
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 451
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    new-instance v1, Lcom/lenovo/scg/camera/ui/PieItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v6}, Lcom/lenovo/scg/camera/ui/PieItem;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadius:I

    .line 456
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    .line 460
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit16 v0, v0, 0x91

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    .line 461
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCircleSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchOffset:I

    .line 463
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    .line 464
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    const/16 v1, 0x33

    const/16 v2, 0xb5

    const/16 v3, 0xe5

    invoke-static {v7, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 466
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 468
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSubPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    const/16 v2, 0xfa

    const/16 v3, 0xe6

    const/16 v4, 0x80

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 473
    const v0, -0xff0100

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSuccessColor:I

    .line 474
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFailColor:I

    .line 475
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircle:Landroid/graphics/RectF;

    .line 476
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    .line 477
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPoint1:Landroid/graphics/Point;

    .line 478
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPoint2:Landroid/graphics/Point;

    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mInnerOffset:I

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOuterStroke:I

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mInnerStroke:I

    .line 482
    iput v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 483
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mBlockFocus:Z

    .line 484
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchSlopSquared:I

    .line 485
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchSlopSquared:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchSlopSquared:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchSlopSquared:I

    .line 486
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    .line 487
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    .line 488
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    const/16 v1, 0x8c

    invoke-static {v1, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 491
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mMenuArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSliceRadius:I

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcOffset:I

    .line 495
    new-instance v0, Lcom/lenovo/scg/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->setDropShadow(Z)V

    .line 497
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDeadZone:I

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAngleZone:I

    .line 501
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->initFocusIndicatorDrawable()V

    .line 502
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->initAnimation()V

    .line 504
    return-void
.end method

.method private initAnimation()V
    .locals 4

    .prologue
    .line 616
    new-instance v0, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$ValueAnimatorUpdateListener;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;F)V

    .line 618
    .local v0, "mListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    .line 619
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 620
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 621
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 623
    return-void

    .line 618
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initFocusIndicatorDrawable()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProInnerCircleRotatableDrawable:Landroid/graphics/drawable/Drawable;

    .line 513
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 515
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProWhiteCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 517
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartRedCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusSmartGreenCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 519
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusProBlueCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTouchCaptureWayDrawable:Landroid/graphics/drawable/Drawable;

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInfinityDrawable:Landroid/graphics/drawable/Drawable;

    .line 524
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 526
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockInnerDrawable:Landroid/graphics/drawable/Drawable;

    .line 527
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 529
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 531
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfInnerRotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 533
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfMiddleDrawable:Landroid/graphics/drawable/Drawable;

    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfOuterDrawable:Landroid/graphics/drawable/Drawable;

    .line 536
    return-void
.end method

.method private inside(Landroid/graphics/PointF;Lcom/lenovo/scg/camera/ui/PieItem;II)Z
    .locals 4
    .param p1, "polar"    # Landroid/graphics/PointF;
    .param p2, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;
    .param p3, "pos"    # I
    .param p4, "count"    # I

    .prologue
    .line 1098
    invoke-direct {p0, p2, p3, p4}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getSliceCenter(Lcom/lenovo/scg/camera/ui/PieItem;II)F

    move-result v2

    const v3, 0x3d8f5c29    # 0.07f

    sub-float v1, v2, v3

    .line 1099
    .local v1, "start":F
    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const v2, 0x3e0f5c29    # 0.14f

    add-float/2addr v2, v1

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1100
    .local v0, "res":Z
    :goto_0
    return v0

    .line 1099
    .end local v0    # "res":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutItems(ILjava/util/List;)V
    .locals 21
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/camera/ui/PieItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/camera/ui/PieItem;>;"
    const/4 v11, 0x1

    .line 785
    .local v11, "extend":I
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    int-to-float v3, v11

    add-float/2addr v3, v2

    const-wide v4, 0x3fcd70a3e0000000L    # 0.23000000417232513

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getDegrees(D)F

    move-result v2

    int-to-float v4, v11

    sub-float v4, v2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcCenterY:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int v8, v8, p1

    sub-int v8, v2, v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/scg/camera/ui/PieRenderer;->makeSlice(FFIIII)Landroid/graphics/Path;

    move-result-object v15

    .line 787
    .local v15, "path":Landroid/graphics/Path;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    .line 788
    .local v10, "count":I
    const/16 v16, 0x0

    .line 789
    .local v16, "pos":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/scg/camera/ui/PieItem;

    .line 791
    .local v14, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    invoke-virtual {v14, v15}, Lcom/lenovo/scg/camera/ui/PieItem;->setPath(Landroid/graphics/Path;)V

    .line 792
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v1, v10}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getArcCenter(Lcom/lenovo/scg/camera/ui/PieItem;II)F

    move-result v9

    .line 793
    .local v9, "angle":F
    invoke-virtual {v14}, Lcom/lenovo/scg/camera/ui/PieItem;->getIntrinsicWidth()I

    move-result v18

    .line 794
    .local v18, "w":I
    invoke-virtual {v14}, Lcom/lenovo/scg/camera/ui/PieItem;->getIntrinsicHeight()I

    move-result v12

    .line 796
    .local v12, "h":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int v17, v2, v3

    .line 797
    .local v17, "r":I
    move/from16 v0, v17

    int-to-double v2, v0

    float-to-double v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v19, v0

    .line 798
    .local v19, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcCenterY:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int v3, v3, p1

    sub-int/2addr v2, v3

    move/from16 v0, v17

    int-to-double v4, v0

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v3, v12, 0x2

    sub-int v20, v2, v3

    .line 799
    .local v20, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    add-int v2, v2, v19

    div-int/lit8 v3, v18, 0x2

    sub-int v19, v2, v3

    .line 800
    add-int v2, v19, v18

    add-int v3, v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Lcom/lenovo/scg/camera/ui/PieItem;->setBounds(IIII)V

    .line 801
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/lenovo/scg/camera/ui/PieItem;->setLevel(I)V

    .line 802
    invoke-virtual {v14}, Lcom/lenovo/scg/camera/ui/PieItem;->hasItems()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 803
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v14}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->layoutItems(ILjava/util/List;)V

    .line 805
    :cond_0
    add-int/lit8 v16, v16, 0x1

    .line 806
    goto :goto_0

    .line 807
    .end local v9    # "angle":F
    .end local v12    # "h":I
    .end local v14    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    .end local v17    # "r":I
    .end local v18    # "w":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_1
    return-void
.end method

.method private layoutLabel(I)V
    .locals 9
    .param p1, "level"    # I

    .prologue
    .line 776
    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterAngle:F

    sget v6, Lcom/lenovo/scg/camera/ui/PieRenderer;->CENTER:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    add-int/lit8 v7, p1, 0x2

    iget v8, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v2, v4, v5

    .line 777
    .local v2, "x":I
    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcCenterY:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, p1, 0x2

    iget v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    mul-int/2addr v5, v6

    sub-int v3, v4, v5

    .line 778
    .local v3, "y":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 779
    .local v1, "w":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 780
    .local v0, "h":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    div-int/lit8 v5, v1, 0x2

    sub-int v5, v2, v5

    div-int/lit8 v6, v0, 0x2

    sub-int v6, v3, v6

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v2

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->setBounds(IIII)V

    .line 781
    return-void
.end method

.method private layoutPie()V
    .locals 2

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getCenterAngle()F

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterAngle:F

    .line 771
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getRoot()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->layoutItems(ILjava/util/List;)V

    .line 772
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 773
    return-void
.end method

.method private makeSlice(FFIIII)Landroid/graphics/Path;
    .locals 7
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "inner"    # I
    .param p4, "outer"    # I
    .param p5, "cx"    # I
    .param p6, "cy"    # I

    .prologue
    .line 810
    new-instance v0, Landroid/graphics/RectF;

    sub-int v3, p5, p4

    int-to-float v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    add-int v5, p5, p4

    int-to-float v5, v5

    add-int v6, p6, p4

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 811
    .local v0, "bb":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-int v4, p6, p3

    int-to-float v4, v4

    add-int v5, p5, p3

    int-to-float v5, v5

    add-int v6, p6, p3

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 812
    .local v1, "bbi":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 813
    .local v2, "path":Landroid/graphics/Path;
    sub-float v3, p2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 814
    sub-float v3, p1, p2

    invoke-virtual {v2, v1, p2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 815
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 816
    return-object v2
.end method

.method private moveSelection(Lcom/lenovo/scg/camera/ui/PieItem;Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 8
    .param p1, "from"    # Lcom/lenovo/scg/camera/ui/PieItem;
    .param p2, "to"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    const/4 v5, -0x1

    const v6, 0x3deb851f    # 0.115f

    .line 1188
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getCurrentCount()I

    move-result v0

    .line 1189
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getItemPos(Lcom/lenovo/scg/camera/ui/PieItem;)I

    move-result v2

    .line 1190
    .local v2, "fromPos":I
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getItemPos(Lcom/lenovo/scg/camera/ui/PieItem;)I

    move-result v4

    .line 1191
    .local v4, "toPos":I
    if-eq v2, v5, :cond_0

    if-eq v4, v5, :cond_0

    .line 1192
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getItemPos(Lcom/lenovo/scg/camera/ui/PieItem;)I

    move-result v5

    invoke-direct {p0, p1, v5, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getArcCenter(Lcom/lenovo/scg/camera/ui/PieItem;II)F

    move-result v5

    sub-float v3, v5, v6

    .line 1193
    .local v3, "startAngle":F
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getItemPos(Lcom/lenovo/scg/camera/ui/PieItem;)I

    move-result v5

    invoke-direct {p0, p2, v5, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getArcCenter(Lcom/lenovo/scg/camera/ui/PieItem;II)F

    move-result v5

    sub-float v1, v5, v6

    .line 1194
    .local v1, "endAngle":F
    new-instance v5, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-direct {v5, p0, v3, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;FF)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .line 1195
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    const-wide/16 v6, 0x50

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 1196
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    new-instance v6, Lcom/lenovo/scg/camera/ui/PieRenderer$4;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/camera/ui/PieRenderer$4;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1211
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSlice:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1213
    .end local v1    # "endAngle":F
    .end local v3    # "startAngle":F
    :cond_0
    return-void
.end method

.method private onEnter(Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/PieItem;->setSelected(Z)V

    .line 1153
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/ui/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/ui/PieItem;->setSelected(Z)V

    .line 1155
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    .line 1156
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->openCurrentItem()V

    .line 1159
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 1164
    :cond_1
    :goto_0
    return-void

    .line 1162
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    goto :goto_0
.end method

.method private onEnterOpen()V
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieItem;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->openCurrentItem()V

    .line 1142
    :cond_0
    return-void
.end method

.method private onEnterSelect(Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 2
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/PieItem;->setSelected(Z)V

    .line 1127
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/ui/PieItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->moveSelection(Lcom/lenovo/scg/camera/ui/PieItem;Lcom/lenovo/scg/camera/ui/PieItem;)V

    .line 1129
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/camera/ui/PieItem;->setSelected(Z)V

    .line 1130
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    .line 1131
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieItem;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 1136
    :goto_0
    return-void

    .line 1134
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    goto :goto_0
.end method

.method private openCurrentItem()V
    .locals 4

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieItem;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1217
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getLevel()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->layoutLabel(I)V

    .line 1219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpening:Z

    .line 1220
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v1, :cond_0

    .line 1221
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 1223
    :cond_0
    new-instance v1, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;FF)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    .line 1224
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->setDuration(J)V

    .line 1225
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    .line 1226
    .local v0, "ci":Lcom/lenovo/scg/camera/ui/PieItem;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    new-instance v2, Lcom/lenovo/scg/camera/ui/PieRenderer$5;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$5;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieItem;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1243
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->startNow()V

    .line 1244
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1246
    .end local v0    # "ci":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_1
    return-void
.end method

.method private pulledToCenter(Landroid/graphics/PointF;)Z
    .locals 3
    .param p1, "polarCoords"    # Landroid/graphics/PointF;

    .prologue
    .line 1094
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRadiusInc:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2258
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterX:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    .line 2259
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterY:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    .line 2260
    iput v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2261
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setCircle(II)V

    .line 2262
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocused:Z

    .line 2263
    return-void
.end method

.method private resetPieCenter()V
    .locals 3

    .prologue
    .line 765
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterX:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    .line 766
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDeadZone:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterY:I

    .line 767
    return-void
.end method

.method private setCircle(II)V
    .locals 6
    .param p1, "cx"    # I
    .param p2, "cy"    # I

    .prologue
    .line 1312
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCircle, cx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircle:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1314
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDial:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mInnerOffset:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mInnerOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mInnerOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1315
    return-void
.end method

.method private show(Z)V
    .locals 8
    .param p1, "show"    # Z

    .prologue
    const/4 v5, 0x0

    .line 685
    if-eqz p1, :cond_4

    .line 686
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_0

    .line 687
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 689
    :cond_0
    const/16 v6, 0x8

    iput v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 691
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    .line 692
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getRoot()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v4

    .line 693
    .local v4, "root":Lcom/lenovo/scg/camera/ui/PieItem;
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/PieItem;

    .line 694
    .local v3, "openItem":Lcom/lenovo/scg/camera/ui/PieItem;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/PieItem;->hasItems()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 695
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/PieItem;

    .line 696
    .local v2, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/ui/PieItem;->setSelected(Z)V

    goto :goto_0

    .line 700
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    .end local v3    # "openItem":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 702
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->layoutPie()V

    .line 704
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->fadeIn()V

    .line 715
    .end local v4    # "root":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    .line 716
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_6

    :goto_2
    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 717
    return-void

    .line 706
    :cond_4
    iput v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 707
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    .line 708
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v6, :cond_5

    .line 709
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 711
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    if-eqz v6, :cond_3

    .line 712
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 716
    :cond_6
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private startAnimation(JZF)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "timeout"    # Z
    .param p4, "toScale"    # F

    .prologue
    .line 2204
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDialAngle:I

    int-to-float v5, v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 2205
    return-void
.end method

.method private startAnimation(JZFF)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "timeout"    # Z
    .param p4, "fromScale"    # F
    .param p5, "toScale"    # F

    .prologue
    .line 2208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    .line 2209
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->reset()V

    .line 2210
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->setDuration(J)V

    .line 2211
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, p4, p5}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->setScale(FF)V

    .line 2212
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mEndAction:Landroid/view/animation/Animation$AnimationListener;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2213
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2214
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->update()V

    .line 2215
    return-void

    .line 2212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFadeOut()V
    .locals 4

    .prologue
    .line 2267
    const-string v1, "CAM_Pie"

    const-string v2, "Disappear, startFadeOut()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2269
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2270
    new-instance v1, Lcom/lenovo/scg/camera/ui/PieRenderer$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/ui/PieRenderer$6;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2288
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2289
    return-void
.end method

.method private startFadeOut(Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 4
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    .line 854
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->cancel()V

    .line 860
    :cond_1
    new-instance v0, Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    .line 861
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;->setDuration(J)V

    .line 862
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    new-instance v1, Lcom/lenovo/scg/camera/ui/PieRenderer$3;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer$3;-><init>(Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/ui/PieItem;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 881
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;->startNow()V

    .line 882
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 883
    return-void
.end method


# virtual methods
.method public addItem(Lcom/lenovo/scg/camera/ui/PieItem;)V
    .locals 1
    .param p1, "item"    # Lcom/lenovo/scg/camera/ui/PieItem;

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getRoot()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/PieItem;->addItem(Lcom/lenovo/scg/camera/ui/PieItem;)V

    .line 653
    return-void
.end method

.method public alignFocus(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1294
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->cancel()V

    .line 1295
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAnimation:Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer$ScaleAnimation;->reset()V

    .line 1296
    iput p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    .line 1297
    iput p2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    .line 1298
    const/16 v0, 0x9d

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDialAngle:I

    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setCircle(II)V

    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocused:Z

    .line 1301
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 2191
    const-string v0, "CAM_Pie"

    const-string v1, "PieRenderer focus clear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2201
    :goto_0
    return-void

    .line 2194
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    .line 2195
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2196
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2199
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->cancelFocus()V

    .line 2200
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getRoot()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieItem;->clearItems()V

    .line 657
    return-void
.end method

.method public drawFocus(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mBlockFocus:Z

    if-eqz v0, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1321
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getFocusGroupIndicator()V

    .line 1323
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1324
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawTouchCaptureWayAnim(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1325
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1326
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawMeteringAnim(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1327
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 1328
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawOuterCircle(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1329
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 1330
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawAeAfLockAnim(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1331
    :cond_5
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    .line 1332
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawAeAfDifferLockAnim(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1334
    :cond_6
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawFocusCenter(Landroid/graphics/Canvas;)V

    .line 1335
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawInnerCircle(Landroid/graphics/Canvas;)V

    .line 1336
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawOuterCircle(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawInnerCircle(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1389
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_0

    .line 1443
    :goto_0
    return-void

    .line 1396
    :cond_0
    const/high16 v4, 0x40b00000    # 5.5f

    .line 1397
    .local v4, "corner":F
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1398
    .local v7, "sizeRate":F
    const/high16 v11, 0x40b00000    # 5.5f

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    .line 1400
    const v9, 0x3fb33333    # 1.4f

    .line 1401
    .local v9, "sizeRateStart":F
    const/high16 v8, 0x3f400000    # 0.75f

    .line 1402
    .local v8, "sizeRateEnd":F
    const/high16 v11, 0x41200000    # 10.0f

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float/2addr v11, v12

    sub-float v12, v9, v8

    mul-float/2addr v11, v12

    const/high16 v12, 0x40900000    # 4.5f

    div-float/2addr v11, v12

    sub-float v7, v9, v11

    .line 1409
    :goto_1
    const/high16 v11, 0x3f400000    # 0.75f

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1410
    const v11, 0x3fb33333    # 1.4f

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1412
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    sub-float/2addr v11, v12

    float-to-int v5, v11

    .line 1413
    .local v5, "left":I
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    sub-float/2addr v11, v12

    float-to-int v10, v11

    .line 1414
    .local v10, "top":I
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    float-to-int v6, v11

    .line 1415
    .local v6, "right":I
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    float-to-int v3, v11

    .line 1417
    .local v3, "bottom":I
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v5, v10, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1419
    const/16 v0, 0xff

    .line 1420
    .local v0, "alpha":I
    const/4 v2, 0x0

    .line 1421
    .local v2, "alphaStart":I
    const/16 v1, 0xff

    .line 1422
    .local v1, "alphaEnd":I
    const/high16 v11, 0x41200000    # 10.0f

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x40900000    # 4.5f

    div-float/2addr v11, v12

    float-to-int v0, v11

    .line 1423
    const/4 v11, 0x0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1424
    const/16 v11, 0xff

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1426
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1428
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    .line 1429
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->isProFocusGroup()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v11, v11, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v11, :cond_2

    .line 1431
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleRotateDegree:I

    add-int/lit16 v11, v11, 0x320

    iput v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleRotateDegree:I

    .line 1432
    iget v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleRotateDegree:I

    const/16 v12, 0x2710

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleRotateDegree:I

    .line 1433
    const-string v11, "CAM_Pie"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "drawInnerCircle(): mFocusInnerCircleRotateDegree = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleRotateDegree:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleRotateDegree:I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1442
    :cond_2
    iget-object v11, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1405
    .end local v0    # "alpha":I
    .end local v1    # "alphaEnd":I
    .end local v2    # "alphaStart":I
    .end local v3    # "bottom":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v8    # "sizeRateEnd":F
    .end local v9    # "sizeRateStart":F
    .end local v10    # "top":I
    :cond_3
    const/high16 v9, 0x3f400000    # 0.75f

    .line 1406
    .restart local v9    # "sizeRateStart":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1407
    .restart local v8    # "sizeRateEnd":F
    const/high16 v11, 0x40b00000    # 5.5f

    iget v12, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    sub-float/2addr v11, v12

    sub-float v12, v9, v8

    mul-float/2addr v11, v12

    const/high16 v12, 0x40900000    # 4.5f

    div-float/2addr v11, v12

    sub-float v7, v9, v11

    goto/16 :goto_1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1304
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCircleSize:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public handlesTouch()Z
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x1

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->show(Z)V

    .line 677
    return-void
.end method

.method public isInAeLockIndicator(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 2419
    const-string v3, "CAM_Pie"

    const-string v4, "isInAeLockIndicator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-nez v3, :cond_1

    .line 2421
    const-string v3, "CAM_Pie"

    const-string v4, "isInAeLockIndicator mOverlay == null && return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_0
    :goto_0
    return v2

    .line 2425
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 2426
    const-string v3, "CAM_Pie"

    const-string v4, "isInAeLockIndicator: mFocusOuterCircleDrawable == null && return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2430
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAeOuterRotateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2431
    .local v0, "rect":Landroid/graphics/Rect;
    const-string v3, "CAM_Pie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInAeLockIndicator, rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isRealVisible()Z

    move-result v1

    .line 2435
    .local v1, "visible":Z
    const-string v3, "CAM_Pie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInAeLockIndicator, visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    if-eqz v1, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x64

    if-le p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x64

    if-ge p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x64

    if-le p2, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x64

    if-ge p2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInAfLockIndicator(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 2441
    const-string v3, "CAM_Pie"

    const-string v4, "isInAfLockIndicator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-nez v3, :cond_1

    .line 2443
    const-string v3, "CAM_Pie"

    const-string v4, "isInAfLockIndicator mOverlay == null && return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    :cond_0
    :goto_0
    return v2

    .line 2447
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfOuterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 2448
    const-string v3, "CAM_Pie"

    const-string v4, "isInAfLockIndicator: mAeAfDifferLockAfOuterDrawable == null && return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2452
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfDifferLockAfOuterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2453
    .local v0, "rect":Landroid/graphics/Rect;
    const-string v3, "CAM_Pie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInAfLockIndicator, rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isRealVisible()Z

    move-result v1

    .line 2457
    .local v1, "visible":Z
    const-string v3, "CAM_Pie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInAfLockIndicator, visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    if-eqz v1, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x64

    if-le p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0x64

    if-ge p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x64

    if-le p2, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x64

    if-ge p2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isInsideFocusIndicator(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 2394
    const-string v3, "CAM_Pie"

    const-string v4, "isInsideFocusIndicator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-nez v3, :cond_1

    .line 2397
    const-string v3, "CAM_Pie"

    const-string v4, "isInsideFocusIndicator mOverlay == null && return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_0
    :goto_0
    return v2

    .line 2401
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 2402
    const-string v3, "CAM_Pie"

    const-string v4, "isInsideFocusIndicator: mFocusOuterCircleDrawable == null && return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2406
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusOuterCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2407
    .local v0, "rect":Landroid/graphics/Rect;
    const-string v3, "CAM_Pie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInsideFocusIndicator, rect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isRealVisible()Z

    move-result v1

    .line 2411
    .local v1, "visible":Z
    const-string v3, "CAM_Pie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInsideFocusIndicator, visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    if-eqz v1, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-le p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public layout(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 750
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->layout(IIII)V

    .line 751
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterX:I

    .line 752
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterY:I

    .line 754
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterX:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    .line 755
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCenterY:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    .line 756
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->resetPieCenter()V

    .line 757
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setCircle(II)V

    .line 758
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 759
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setCenter(II)V

    .line 760
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->layoutPie()V

    .line 762
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 912
    const/high16 v9, 0x3f800000    # 1.0f

    .line 913
    .local v9, "alpha":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_5

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->getValue()F

    move-result v9

    .line 920
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 921
    .local v20, "state":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_1

    .line 922
    const v3, 0x3f666666    # 0.9f

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v9

    add-float v19, v3, v4

    .line 923
    .local v19, "sf":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterY:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 925
    .end local v19    # "sf":F
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 926
    invoke-virtual/range {p0 .. p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawFocus(Landroid/graphics/Canvas;)V

    .line 928
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 929
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 962
    :cond_4
    :goto_1
    return-void

    .line 915
    .end local v20    # "state":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_6

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeIn:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;->getValue()F

    move-result v9

    goto :goto_0

    .line 917
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    if-eqz v3, :cond_0

    .line 918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;->getValue()F

    move-result v9

    goto :goto_0

    .line 932
    .restart local v20    # "state":I
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_a

    .line 935
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getLevel()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getParent()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawArc(Landroid/graphics/Canvas;ILcom/lenovo/scg/camera/ui/PieItem;)V

    .line 936
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getParent()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v18

    .line 937
    .local v18, "items":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/camera/ui/PieItem;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    .line 938
    .local v6, "count":I
    const/4 v5, 0x0

    .line 939
    .local v5, "pos":I
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getParent()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/ui/PieItem;

    .line 940
    .local v8, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpen:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/lenovo/scg/camera/ui/PieItem;F)V

    .line 941
    add-int/lit8 v5, v5, 0x1

    .line 942
    goto :goto_2

    .line 943
    .end local v8    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 945
    .end local v5    # "pos":I
    .end local v6    # "count":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/camera/ui/PieItem;>;"
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getLevel()I

    move-result v11

    .line 947
    .local v11, "level":I
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawArc(Landroid/graphics/Canvas;ILcom/lenovo/scg/camera/ui/PieItem;)V

    .line 948
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/PieItem;->getItems()Ljava/util/List;

    move-result-object v18

    .line 949
    .restart local v18    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/camera/ui/PieItem;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    .line 950
    .restart local v6    # "count":I
    const/4 v5, 0x0

    .line 951
    .restart local v5    # "pos":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lenovo/scg/camera/ui/PieItem;

    .line 952
    .local v15, "inner":Lcom/lenovo/scg/camera/ui/PieItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFadeOut:Lcom/lenovo/scg/camera/ui/PieRenderer$FadeOutAnimation;

    if-eqz v3, :cond_b

    move-object/from16 v10, p0

    move v12, v5

    move v13, v6

    move-object/from16 v14, p1

    move/from16 v16, v9

    .line 953
    invoke-direct/range {v10 .. v16}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/lenovo/scg/camera/ui/PieItem;F)V

    .line 957
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 958
    goto :goto_3

    .line 955
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mXFade:Lcom/lenovo/scg/camera/ui/PieRenderer$LinearAnimation;

    if-eqz v3, :cond_c

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v9

    sub-float v16, v3, v4

    :goto_5
    move-object/from16 v10, p0

    move v12, v5

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v16}, Lcom/lenovo/scg/camera/ui/PieRenderer;->drawItem(IIILandroid/graphics/Canvas;Lcom/lenovo/scg/camera/ui/PieItem;F)V

    goto :goto_4

    :cond_c
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_5

    .line 959
    .end local v15    # "inner":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 961
    .end local v5    # "pos":I
    .end local v6    # "count":I
    .end local v11    # "level":I
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/camera/ui/PieItem;>;"
    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1013
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1014
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1015
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getPolar(FFZLandroid/graphics/PointF;)V

    .line 1016
    if-nez v0, :cond_5

    .line 1017
    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDeadZone:I

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDeadZone:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 1090
    :cond_0
    :goto_1
    return v7

    :cond_1
    move v5, v7

    .line 1015
    goto :goto_0

    .line 1020
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Point;->x:I

    .line 1021
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mDown:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Point;->y:I

    .line 1022
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpening:Z

    .line 1023
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_4

    .line 1024
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v1

    .line 1025
    .local v1, "item":Lcom/lenovo/scg/camera/ui/PieItem;
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    if-eq v5, v1, :cond_3

    .line 1026
    const/16 v5, 0x8

    iput v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 1027
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->onEnter(Lcom/lenovo/scg/camera/ui/PieItem;)V

    .end local v1    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_3
    :goto_2
    move v7, v6

    .line 1033
    goto :goto_1

    .line 1030
    :cond_4
    float-to-int v5, v3

    float-to-int v7, v4

    invoke-virtual {p0, v5, v7}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setCenter(II)V

    .line 1031
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->show(Z)V

    goto :goto_2

    .line 1034
    :cond_5
    if-ne v6, v0, :cond_9

    .line 1035
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    .line 1037
    .restart local v1    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_6

    .line 1038
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v1

    .line 1039
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpening:Z

    if-eqz v5, :cond_6

    .line 1040
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpening:Z

    move v7, v6

    .line 1041
    goto :goto_1

    .line 1044
    :cond_6
    if-nez v1, :cond_7

    .line 1045
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    .line 1046
    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/ui/PieRenderer;->show(Z)V

    :goto_3
    move v7, v6

    .line 1053
    goto :goto_1

    .line 1047
    :cond_7
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpening:Z

    if-nez v5, :cond_8

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieItem;->hasItems()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1048
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startFadeOut(Lcom/lenovo/scg/camera/ui/PieItem;)V

    .line 1049
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    goto :goto_3

    .line 1051
    :cond_8
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    goto :goto_3

    .line 1055
    .end local v1    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    :cond_9
    const/4 v5, 0x3

    if-ne v5, v0, :cond_c

    .line 1056
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isVisible()Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    if-eqz v5, :cond_b

    .line 1057
    :cond_a
    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/ui/PieRenderer;->show(Z)V

    .line 1059
    :cond_b
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->deselect()V

    .line 1060
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    .line 1062
    :cond_c
    if-ne v10, v0, :cond_0

    .line 1063
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/ui/PieRenderer;->pulledToCenter(Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1064
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1065
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->hasOpenItem()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1066
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    if-eqz v5, :cond_d

    .line 1067
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/camera/ui/PieItem;->setSelected(Z)V

    .line 1069
    :cond_d
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->closeOpenItem()Lcom/lenovo/scg/camera/ui/PieItem;

    .line 1070
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    .line 1074
    :goto_4
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mLabel:Lcom/lenovo/scg/camera/drawable/TextDrawable;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1072
    :cond_e
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->deselect()V

    goto :goto_4

    .line 1077
    :cond_f
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPolar:Landroid/graphics/PointF;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/ui/PieRenderer;->findItem(Landroid/graphics/PointF;)Lcom/lenovo/scg/camera/ui/PieItem;

    move-result-object v1

    .line 1078
    .restart local v1    # "item":Lcom/lenovo/scg/camera/ui/PieItem;
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->hasMoved(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1079
    .local v2, "moved":Z
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mCurrentItem:Lcom/lenovo/scg/camera/ui/PieItem;

    if-eq v5, v1, :cond_0

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOpening:Z

    if-eqz v5, :cond_10

    if-eqz v2, :cond_0

    .line 1080
    :cond_10
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1082
    if-eqz v2, :cond_11

    .line 1084
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    .line 1086
    :cond_11
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->onEnterSelect(Lcom/lenovo/scg/camera/ui/PieItem;)V

    .line 1087
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x190

    invoke-virtual {v5, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1
.end method

.method public removeMessage()V
    .locals 0

    .prologue
    .line 2466
    return-void
.end method

.method public setBlockFocus(Z)V
    .locals 0
    .param p1, "blocked"    # Z

    .prologue
    .line 1274
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mBlockFocus:Z

    .line 1275
    if-eqz p1, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->clear()V

    .line 1278
    :cond_0
    return-void
.end method

.method public setCanVisible(Z)V
    .locals 0
    .param p1, "vis"    # Z

    .prologue
    .line 2173
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/OverlayRenderer;->setCanVisible(Z)V

    .line 2174
    return-void
.end method

.method public setCenter(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 742
    iput p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    .line 743
    iput p2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterY:I

    .line 744
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSliceRadius:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mSliceCenterY:I

    .line 745
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mArcCenterY:I

    .line 746
    return-void
.end method

.method public setFocus(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1281
    iput p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    .line 1282
    iput p2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    .line 1283
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setCircle(II)V

    .line 1284
    return-void
.end method

.method public setFoucs2(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1288
    iput p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusX2:I

    .line 1289
    iput p2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusY2:I

    .line 1290
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 2167
    iput p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mOrientation:I

    .line 2168
    return-void
.end method

.method public setPieListener(Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;)V
    .locals 0
    .param p1, "pl"    # Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    .line 444
    return-void
.end method

.method public showAeAfDifferLockAnim()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x320

    const/4 v4, 0x0

    .line 2156
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showAeAfDifferLockAnim() mState = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2158
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 2159
    const/16 v0, 0x9

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2161
    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAnimation(J)V

    .line 2162
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 2163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    goto :goto_0
.end method

.method public showAeAfLockAnim()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x320

    const/4 v4, 0x0

    .line 2141
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showAeAfLockAnim() mState = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2150
    :goto_0
    return-void

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0f00d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mAeAfLockText:Ljava/lang/String;

    .line 2144
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/lit8 v0, v0, 0xa

    int-to-float v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 2145
    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2147
    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAnimation(J)V

    .line 2148
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 2149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    goto :goto_0
.end method

.method public showAnimation()V
    .locals 2

    .prologue
    .line 626
    const-string v0, "CAM_Pie"

    const-string/jumbo v1, "showAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAnimation(J)V

    .line 628
    return-void
.end method

.method public showAnimation(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 631
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAnimation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 636
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mValueAnimRate:F

    .line 637
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 638
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusValueAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 639
    return-void
.end method

.method public showFail(Z)V
    .locals 7
    .param p1, "timeout"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 2069
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showFail, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-ne v0, v3, :cond_1

    .line 2073
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0f0766

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0f0768

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x10000

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;->showFocusResultHint(Ljava/lang/String;I)V

    .line 2078
    :cond_0
    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZF)V

    .line 2079
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2080
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocused:Z

    .line 2082
    :cond_1
    return-void
.end method

.method public showInCenter()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 660
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    .line 662
    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->show(Z)V

    .line 673
    :goto_0
    return-void

    .line 664
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-eqz v0, :cond_1

    .line 665
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->cancelFocus()V

    .line 667
    :cond_1
    iput v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 668
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->resetPieCenter()V

    .line 669
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterX:I

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mPieCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setCenter(II)V

    .line 670
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    .line 671
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->show(Z)V

    goto :goto_0
.end method

.method public showInfinity()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x1

    .line 2092
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showInfinity(), mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2106
    :cond_0
    :goto_0
    return-void

    .line 2094
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-eq v0, v7, :cond_0

    .line 2097
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->reset()V

    .line 2098
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->cancelFocus()V

    .line 2099
    const-wide/16 v2, 0x5dc

    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 2101
    iput v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2103
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAnimation()V

    .line 2104
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    goto :goto_0
.end method

.method public showMetering()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x15e

    const/4 v7, 0x4

    const/4 v4, 0x1

    .line 2110
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showMetering(), mState = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2123
    :cond_0
    :goto_0
    return-void

    .line 2112
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-eq v0, v7, :cond_0

    .line 2114
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->cancelFocus()V

    .line 2115
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 2117
    iput v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2119
    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAnimation(J)V

    .line 2121
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    goto :goto_0
.end method

.method public showStart(Z)V
    .locals 9
    .param p1, "isTF"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2029
    const-string v1, "CAM_Pie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showStart(), mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 2049
    :cond_0
    :goto_0
    return-void

    .line 2031
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-eq v1, v8, :cond_0

    .line 2032
    if-nez p1, :cond_2

    .line 2033
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->reset()V

    .line 2035
    :cond_2
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->isTouchFocus:Z

    .line 2036
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->cancelFocus()V

    .line 2038
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    if-eqz v1, :cond_3

    .line 2039
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0f0766

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0f0769

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;->showFocusResultHint(Ljava/lang/String;I)V

    .line 2043
    :cond_3
    const/16 v1, 0x43

    iput v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    .line 2044
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->getRandomRange()I

    move-result v0

    .line 2045
    .local v0, "range":I
    const-string v1, "CAM_Pie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showStart(): range = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const-wide/16 v2, 0x258

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v5, v1

    iget v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/2addr v1, v0

    int-to-float v6, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 2047
    iput v8, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2048
    iput v4, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocusInnerCircleRotateDegree:I

    goto :goto_0
.end method

.method public showSuccess(Z)V
    .locals 8
    .param p1, "timeout"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2053
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSuccess, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-ne v0, v7, :cond_1

    .line 2056
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mListener:Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0f0766

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0f0767

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, -0xffff01

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;->showFocusResultHint(Ljava/lang/String;I)V

    .line 2061
    :cond_0
    const-wide/16 v0, 0x64

    iget v2, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZF)V

    .line 2062
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2063
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mFocused:Z

    .line 2065
    :cond_1
    return-void
.end method

.method public showTouchCaptureAnim()V
    .locals 8

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v7, 0x6

    const/4 v4, 0x1

    .line 2126
    const-string v0, "CAM_Pie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showTouchCaptureAnim() mState = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2135
    :cond_0
    :goto_0
    return-void

    .line 2128
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    if-eq v0, v7, :cond_0

    .line 2130
    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    int-to-float v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mStartAnimationAngle:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/camera/ui/PieRenderer;->startAnimation(JZFF)V

    .line 2131
    iput v7, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mState:I

    .line 2133
    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAnimation(J)V

    .line 2134
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setVisible(Z)V

    goto :goto_0
.end method

.method public showsItems()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieRenderer;->mTapMode:Z

    return v0
.end method
