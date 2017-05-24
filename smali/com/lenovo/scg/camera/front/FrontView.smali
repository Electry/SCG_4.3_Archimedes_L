.class public Lcom/lenovo/scg/camera/front/FrontView;
.super Landroid/widget/RelativeLayout;
.source "FrontView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;
    }
.end annotation


# static fields
.field private static final BEAUTY_BAR_ANIMATION_DURATION:I = 0x3e8

.field public static CLEAR:Ljava/lang/String; = null

.field private static final DEFAULT_BEAUTY_LEVEL:I = 0x4

.field private static final MAX_FACE_NUM:I = 0x5

.field private static final SHADOW_COLOR:I = -0x1000000

.field private static final SHADOW_RADIUS:I = 0x5

.field private static final SHADOW_X:I = 0x3

.field private static final SHADOW_Y:I = 0x3

.field private static final SUPPLY_DURATION_END:I = 0x7d0

.field private static final SUPPLY_DURATION_START:I = 0x1f4

.field private static final SUPPLY_HINT_LSENSOR_MIN:I = 0x14

.field private static final SUPPLY_HINT_TIP_SHOW_TIME:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "FrontView"

.field public static isDebug:Z

.field public static mFaceAge:[I

.field public static mFaceNumberForSave:I

.field public static mFaceOriention:[I

.field public static mIsOneShot:Z

.field public static mOriginalFaceRect:[Landroid/graphics/Rect;

.field public static mSex:[I


# instance fields
.field private clearReceiver:Landroid/content/BroadcastReceiver;

.field private counter:I

.field private mAge:Ljava/lang/String;

.field private mAgeAdjChild:[Ljava/lang/String;

.field private mAgeAdjMiddle:[Ljava/lang/String;

.field private mAgeIndexChild:I

.field private mAgeIndexMiddle:I

.field private mAgeRect:Landroid/graphics/Rect;

.field private mArrow:Landroid/widget/ImageButton;

.field private mBar:Landroid/widget/RelativeLayout;

.field private mBarIndicator:Landroid/widget/ImageView;

.field private mBarIndicatorAni:Landroid/view/animation/AnimationSet;

.field private mBarProgress1:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBarProgress7:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBlinkTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mBlinkTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mClearRect:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

.field public mFACEBEAUTY:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

.field private mFaceNumber:I

.field private mFaceRect:[Landroid/graphics/RectF;

.field private mFaceRectRadius:I

.field private mFemalePaint:Landroid/graphics/Paint;

.field private mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

.field private mFrontSupplyHint:Landroid/widget/RelativeLayout;

.field private mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mFunctionTip3:Landroid/widget/LinearLayout;

.field private mFunctionTip4:Landroid/widget/TableLayout;

.field private mFunctionTipsCount:I

.field private mGestureTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mGestureTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mHappy:Ljava/lang/String;

.field private mHappyRect:Landroid/graphics/Rect;

.field private mIsPhotoWayHintShow:Z

.field private mMalePaint:Landroid/graphics/Paint;

.field private mNeedShowSupplyHint:Z

.field private mNumberPaint:Landroid/graphics/Paint;

.field private mNumberRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mPhotoFunctionFadeInAnimation:Landroid/view/animation/Animation;

.field private mPhotoFunctionFadeOutAnimation:Landroid/view/animation/Animation;

.field private mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

.field protected mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

.field private mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorManagerListener:Landroid/hardware/SensorEventListener;

.field private mSupplyMaskLayout:Landroid/widget/RelativeLayout;

.field private mSupplyMaskView:Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;

.field private mSwitchToBackButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTouchTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mTouchTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mTranslateXToLeft:Landroid/animation/ObjectAnimator;

.field private mTranslateXToRight:Landroid/animation/ObjectAnimator;

.field private mVoiceTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mVoiceTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

.field private mWhiteView:Landroid/view/View;

.field matrix:Landroid/graphics/Matrix;

.field private mbInFilmMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 66
    const-string v0, "com.lenovo.scg.camera.CLEARFRONT"

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView;->CLEAR:Ljava/lang/String;

    .line 119
    new-array v0, v1, [Landroid/graphics/Rect;

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    .line 121
    new-array v0, v1, [I

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceOriention:[I

    .line 123
    new-array v0, v1, [I

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    .line 127
    new-array v0, v1, [I

    sput-object v0, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v7, 0x7f0900c0

    const/16 v3, 0xeb

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 259
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;->OFF:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFACEBEAUTY:Lcom/lenovo/scg/camera/front/FrontView$FACEBEAUTY;

    .line 117
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    .line 139
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->matrix:Landroid/graphics/Matrix;

    .line 153
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeRect:Landroid/graphics/Rect;

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mHappyRect:Landroid/graphics/Rect;

    .line 157
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberRect:Landroid/graphics/Rect;

    .line 159
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    .line 231
    iput v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->counter:I

    .line 237
    iput v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeIndexChild:I

    .line 239
    iput v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeIndexMiddle:I

    .line 241
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mbInFilmMode:Z

    .line 249
    new-instance v1, Lcom/lenovo/scg/camera/front/FrontView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontView$1;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->clearReceiver:Landroid/content/BroadcastReceiver;

    .line 1531
    new-instance v1, Lcom/lenovo/scg/camera/front/FrontView$12;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontView$12;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManagerListener:Landroid/hardware/SensorEventListener;

    .line 260
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    .line 261
    const-string v1, "FrontView"

    const-string v2, "FrontView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/front/FrontView;->setWillNotDraw(Z)V

    .line 264
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    .line 266
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPaint:Landroid/graphics/Paint;

    .line 267
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 269
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 270
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 272
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mMalePaint:Landroid/graphics/Paint;

    .line 273
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mMalePaint:Landroid/graphics/Paint;

    const-string v2, "#99DEFE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mMalePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mMalePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 276
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mMalePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 278
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFemalePaint:Landroid/graphics/Paint;

    .line 279
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFemalePaint:Landroid/graphics/Paint;

    const-string v2, "#FAA3B9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFemalePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 281
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFemalePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFemalePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 284
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    .line 285
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 287
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 289
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 291
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberPaint:Landroid/graphics/Paint;

    .line 292
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 298
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearPaint:Landroid/graphics/Paint;

    .line 299
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAge:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mHappy:Ljava/lang/String;

    .line 304
    const-string v0, "/100"

    .line 306
    .local v0, "tempNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAge:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAge:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 307
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mHappy:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mHappy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mHappyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 308
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v5, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeAdjChild:[Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeAdjMiddle:[Ljava/lang/String;

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/front/FrontView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mIsPhotoWayHintShow:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTranslateXToLeft:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTranslateXToRight:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/front/FrontView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/front/FrontView;->showBarIndicator(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/front/FrontView;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/front/FrontView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/front/FrontView;->switchFaceBeautyFeature(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/front/FrontView;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/front/FrontView;->showTip(IIII)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/front/FrontView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;

    return-object v0
.end method

.method private addView2CameraAppRoot(Landroid/view/View;)V
    .locals 7
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 1259
    iget-object v6, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v4

    .line 1260
    .local v4, "mViewGroup":Landroid/view/ViewGroup;
    if-eqz v4, :cond_2

    .line 1261
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1262
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 1263
    .local v5, "maskViewID":I
    const/4 v3, 0x0

    .line 1264
    .local v3, "isHaveMaskView":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1265
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v1

    .line 1266
    .local v1, "childID":I
    if-ne v1, v5, :cond_0

    .line 1267
    const/4 v3, 0x1

    .line 1264
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1270
    .end local v1    # "childID":I
    :cond_1
    if-nez v3, :cond_2

    .line 1271
    const/high16 v6, -0x80000000

    invoke-virtual {v4, p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1274
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "isHaveMaskView":Z
    .end local v5    # "maskViewID":I
    :cond_2
    return-void
.end method

.method private drawFaceRect(Landroid/graphics/Canvas;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    .line 884
    sget-object v0, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    aget v0, v0, p2

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mMalePaint:Landroid/graphics/Paint;

    .line 886
    .local v5, "paint":Landroid/graphics/Paint;
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 887
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 888
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, p2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mHappyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 889
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 890
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 893
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 895
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    int-to-float v2, v2

    add-float v1, v0, v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 897
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 899
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mClearRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 901
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 903
    .local v1, "oval":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 904
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 905
    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 906
    const/high16 v2, 0x43340000    # 180.0f

    move-object v0, p1

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 909
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 910
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 911
    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 912
    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object v0, p1

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 916
    iget v0, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 917
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 918
    const/4 v2, 0x0

    move-object v0, p1

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 919
    return-void

    .line 884
    .end local v1    # "oval":Landroid/graphics/RectF;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFemalePaint:Landroid/graphics/Paint;

    goto/16 :goto_0
.end method

.method private getNextEnabledFaceBeautyFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 1589
    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    const-string/jumbo v0, "manual"

    .line 1597
    :goto_0
    return-object v0

    .line 1593
    :cond_0
    const-string/jumbo v0, "smart"

    goto :goto_0

    .line 1597
    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method private getSupplyValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_supply"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method private initAnimator()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1656
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float v0, v1, v2

    .line 1658
    .local v0, "distance":F
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    const-string/jumbo v2, "translationX"

    new-array v3, v8, [F

    aput v5, v3, v6

    neg-float v4, v0

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTranslateXToLeft:Landroid/animation/ObjectAnimator;

    .line 1659
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    const-string/jumbo v2, "translationX"

    new-array v3, v8, [F

    neg-float v4, v0

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTranslateXToRight:Landroid/animation/ObjectAnimator;

    .line 1660
    return-void
.end method

.method private initBar()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 1679
    const v2, 0x7f100570

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    .line 1680
    const v2, 0x7f10005f

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;

    .line 1681
    const v2, 0x7f100574

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;

    .line 1683
    const v2, 0x7f100571

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarProgress1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1684
    const v2, 0x7f100573

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarProgress7:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1686
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 1687
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;

    new-instance v3, Lcom/lenovo/scg/camera/front/FrontView$13;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/front/FrontView$13;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1704
    const v2, 0x7f100572

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;

    .line 1705
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/lenovo/scg/camera/front/FrontView$14;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/front/FrontView$14;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1722
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1723
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1724
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1725
    .local v1, "fadeOut":Landroid/view/animation/Animation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1726
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1727
    new-instance v2, Lcom/lenovo/scg/camera/front/FrontView$15;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/front/FrontView$15;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1744
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicatorAni:Landroid/view/animation/AnimationSet;

    .line 1745
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicatorAni:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1746
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicatorAni:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1747
    return-void
.end method

.method private is169Open()Z
    .locals 5

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_setting_picture_size_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v4, 0x7f0f002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "value":Ljava/lang/String;
    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isSquarePicOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1195
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1196
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 1197
    const-string v4, "camera_setting_square_pic_key"

    const-string/jumbo v5, "off"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "mSquarePic":Ljava/lang/String;
    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1201
    .end local v0    # "mSquarePic":Ljava/lang/String;
    :goto_0
    return v2

    .restart local v0    # "mSquarePic":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 1199
    goto :goto_0

    .end local v0    # "mSquarePic":Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 1201
    goto :goto_0
.end method

.method private removeViewFromCameraAppRoot(Landroid/view/View;)V
    .locals 2
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 1277
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1278
    .local v0, "mViewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1281
    :cond_0
    return-void
.end method

.method private showBarIndicator(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/16 v5, 0x10e

    .line 1751
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mArrow:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1826
    :goto_0
    return-void

    .line 1755
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1756
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x0

    .line 1757
    .local v0, "drawable":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getOrientation()I

    move-result v2

    .line 1759
    .local v2, "orient":I
    packed-switch p1, :pswitch_data_0

    .line 1819
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1820
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1822
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1823
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1825
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicator:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarIndicatorAni:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1761
    :pswitch_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090363

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1762
    const v0, 0x7f020125

    .line 1763
    if-ne v2, v5, :cond_1

    .line 1764
    const v0, 0x7f020126

    goto :goto_1

    .line 1769
    :pswitch_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090364

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1770
    const v0, 0x7f020127

    .line 1771
    if-ne v2, v5, :cond_1

    .line 1772
    const v0, 0x7f020128

    goto :goto_1

    .line 1777
    :pswitch_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090365

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1778
    const v0, 0x7f020129

    .line 1779
    if-ne v2, v5, :cond_1

    .line 1780
    const v0, 0x7f02012a

    goto :goto_1

    .line 1785
    :pswitch_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090366

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1786
    const v0, 0x7f02012b

    .line 1787
    if-ne v2, v5, :cond_1

    .line 1788
    const v0, 0x7f02012c

    goto :goto_1

    .line 1793
    :pswitch_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090367

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1794
    const v0, 0x7f02012d

    .line 1795
    if-ne v2, v5, :cond_1

    .line 1796
    const v0, 0x7f02012e

    goto/16 :goto_1

    .line 1801
    :pswitch_5
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090368

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1802
    const v0, 0x7f02012f

    .line 1803
    if-ne v2, v5, :cond_1

    .line 1804
    const v0, 0x7f020130

    goto/16 :goto_1

    .line 1809
    :pswitch_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090369

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1810
    const v0, 0x7f020131

    .line 1811
    if-ne v2, v5, :cond_1

    .line 1812
    const v0, 0x7f020132

    goto/16 :goto_1

    .line 1759
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private showFunctionTips()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1285
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_front_touch"

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0025

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideTouchTip(Z)V

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_front_voice"

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0026

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideVoiceTip(Z)V

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_front_blink"

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1297
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideBlinkTip(Z)V

    .line 1300
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_front_gesture"

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/front/FrontView;->showOrHideGestureTip(Z)V

    .line 1304
    :cond_3
    return-void
.end method

.method private showTip(IIII)V
    .locals 5
    .param p1, "resId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "time"    # I

    .prologue
    .line 1416
    const-string/jumbo v0, "panhui1"

    const-string/jumbo v1, "showTip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-nez v0, :cond_0

    .line 1418
    const-string/jumbo v0, "panhui1"

    const-string/jumbo v1, "showTip, mRotateTips = null, create a new one."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1422
    const-string/jumbo v0, "panhui1"

    const-string/jumbo v1, "showTip, mRotateTips is not visible, to show."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 1440
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;I)V

    .line 1442
    :cond_1
    return-void
.end method

.method private startSupplyCaptureAnimation(FFZ)V
    .locals 4
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "isStart"    # Z

    .prologue
    .line 736
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 737
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 738
    new-instance v1, Lcom/lenovo/scg/camera/front/FrontView$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontView$9;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 776
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 778
    return-void
.end method

.method private switchFaceBeautyFeature(Ljava/lang/String;)V
    .locals 10
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1601
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->isSupplyOpen()Z

    move-result v1

    .line 1602
    .local v1, "isSupplyOpen":Z
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/front/FrontView;->getNextEnabledFaceBeautyFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1604
    .local v2, "nextFeaute":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 1605
    const-string/jumbo v3, "smart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1606
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f02017f

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 1622
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .line 1623
    .local v0, "fcfu":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
    const-string/jumbo v3, "smart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1624
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "camera_front_beauty"

    const-string/jumbo v5, "smart"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1625
    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    .line 1627
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1628
    :cond_1
    sput v7, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    .line 1650
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 1651
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontView;->updateCameraShutterButton()V

    .line 1653
    :cond_3
    return-void

    .line 1607
    .end local v0    # "fcfu":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
    :cond_4
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1608
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f02017e

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 1609
    :cond_5
    const-string/jumbo v3, "manual"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1610
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f02017d

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 1613
    :cond_6
    const-string/jumbo v3, "smart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1614
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f0200bf

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 1615
    :cond_7
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1616
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f0200be

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1617
    :cond_8
    const-string/jumbo v3, "manual"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1618
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f0200bd

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1629
    .restart local v0    # "fcfu":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
    :cond_9
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1630
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "camera_front_beauty"

    const-string/jumbo v5, "off"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1631
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    .line 1633
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1634
    :cond_a
    sput v6, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    goto/16 :goto_1

    .line 1635
    :cond_b
    const-string/jumbo v3, "manual"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1636
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "camera_front_beauty"

    const-string/jumbo v5, "manual"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1637
    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    .line 1639
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1640
    :cond_c
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_d

    .line 1641
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-ne v3, v8, :cond_e

    .line 1642
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/front/FrontView;->showBarIndicator(I)V

    .line 1647
    :cond_d
    :goto_2
    const/4 v3, 0x2

    sput v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    goto/16 :goto_1

    .line 1644
    :cond_e
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2
.end method

.method private updateCameraShutterButton()V
    .locals 2

    .prologue
    .line 696
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    const v1, 0x7f020180

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getContainer3()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getContainer4()Landroid/widget/TableLayout;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    return-object v0
.end method

.method public getIsPhotoWayHintShow()Z
    .locals 1

    .prologue
    .line 1583
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mIsPhotoWayHintShow:Z

    return v0
.end method

.method public getNeedShowSupplyHint()Z
    .locals 1

    .prologue
    .line 1575
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNeedShowSupplyHint:Z

    return v0
.end method

.method public getWaterPanel()Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    return-object v0
.end method

.method public hide()Z
    .locals 3

    .prologue
    .line 1132
    const-string/jumbo v1, "panhui1"

    const-string v2, "FrontView, hide!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v0, 0x0

    .line 1136
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->hide()V

    .line 1138
    const/4 v0, 0x1

    .line 1141
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1142
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->hide()V

    .line 1143
    const/4 v0, 0x1

    .line 1146
    :cond_1
    return v0
.end method

.method public hideAllButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1110
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSwitchToBackButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1115
    return-void
.end method

.method public hideBeautyBar()V
    .locals 2

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1676
    :cond_0
    return-void
.end method

.method public initBeautyButton()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 638
    const-string v2, "FrontView"

    const-string v3, "initBeautyButton"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const v2, 0x7f100565

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 641
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_front_beauty"

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0029

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "value":Ljava/lang/String;
    const-string v2, "FrontView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->isSupplyOpen()Z

    move-result v0

    .line 648
    .local v0, "isSupply":Z
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 649
    if-eqz v0, :cond_2

    .line 650
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f02017e

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 654
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 655
    :cond_0
    sput v6, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    .line 677
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v3, Lcom/lenovo/scg/camera/front/FrontView$8;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/front/FrontView$8;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    const/16 v4, 0xc8

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;I)V

    .line 690
    return-void

    .line 652
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f0200be

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 656
    :cond_3
    const-string/jumbo v2, "smart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 657
    if-eqz v0, :cond_5

    .line 658
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f02017f

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 662
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 663
    :cond_4
    const/4 v2, 0x1

    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    goto :goto_1

    .line 660
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f0200bf

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_2

    .line 664
    :cond_6
    const-string/jumbo v2, "manual"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    if-eqz v0, :cond_9

    .line 666
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f02017d

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 670
    :goto_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 671
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 672
    :cond_8
    const/4 v2, 0x2

    sput v2, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    goto :goto_1

    .line 668
    :cond_9
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method public initFrontSettingButton()V
    .locals 2

    .prologue
    .line 514
    const v0, 0x7f100564

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 515
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontView$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontView$5;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 523
    return-void
.end method

.method public initFrontSettingPanel()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1022
    const-string v0, "FrontView"

    const-string v1, "initFrontSettingPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    if-nez v0, :cond_0

    .line 1025
    const-string/jumbo v0, "panhui1"

    const-string v1, "initFrontSettingPanel, mFrontSettingPanel == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400de

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .line 1027
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->setController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 1028
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->setParent(Lcom/lenovo/scg/camera/front/FrontView;)V

    .line 1029
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1034
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->setOrientation(I)V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1038
    const-string/jumbo v0, "panhui1"

    const-string v1, "initFrontSettingPanel, mFrontSettingPanel == gone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->startAni()V

    .line 1042
    :cond_1
    return-void
.end method

.method public initFrontWaterButton()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 539
    const-string v3, "FrontView"

    const-string v4, "initFrontWaterButton"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const v3, 0x7f100563

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 542
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    .line 544
    .local v0, "isRow":Z
    if-eqz v0, :cond_0

    .line 545
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 619
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 551
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_front_water_key"

    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0022

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_square_pic_key"

    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v6, 0x7f0f002b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "value11":Ljava/lang/String;
    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 557
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f0203fe

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 558
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 584
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v4, Lcom/lenovo/scg/camera/front/FrontView$7;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/front/FrontView$7;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 560
    :cond_1
    const-string v3, "FrontView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string/jumbo v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 563
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f0203ff

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 566
    invoke-static {v8}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 567
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->releaseFrontWaterPanel()V

    .line 580
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_1

    .line 570
    :cond_3
    const-string/jumbo v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v4, 0x7f020400

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 575
    invoke-static {v7}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 576
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->initFrontWaterPanel()V

    goto :goto_2
.end method

.method public initFrontWaterPanel()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 986
    const-string v0, "FrontView"

    const-string v1, "initFrontWaterView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    .line 989
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->setController(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    .line 990
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    :cond_0
    return-void
.end method

.method public initPhotoFunctionButton()V
    .locals 2

    .prologue
    .line 501
    const v0, 0x7f100562

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 503
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontView$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontView$4;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 511
    return-void
.end method

.method public initPhotoFunctionPanel()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1067
    const-string v0, "FrontView"

    const-string v1, "initPhotoFunctionPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .line 1071
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setParent(Lcom/lenovo/scg/camera/front/FrontView;)V

    .line 1072
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setPhotoModule(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V

    .line 1073
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 1074
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setOrientation(I)V

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->startAni()V

    .line 1086
    :cond_1
    return-void
.end method

.method public initSwitchToBackButton()V
    .locals 2

    .prologue
    .line 526
    const v0, 0x7f100561

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSwitchToBackButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 527
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSwitchToBackButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v1, Lcom/lenovo/scg/camera/front/FrontView$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/FrontView$6;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    return-void
.end method

.method public isFrontSettingPanelVisible()Z
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    const/4 v0, 0x1

    .line 1059
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoFunctionPanelVisible()Z
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    const/4 v0, 0x1

    .line 1103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupplyOpen()Z
    .locals 5

    .prologue
    .line 704
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_supply"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 401
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 402
    const-string v3, "FrontView"

    const-string/jumbo v4, "onAttachedToWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->initSwitchToBackButton()V

    .line 404
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->initPhotoFunctionButton()V

    .line 405
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->initFrontWaterButton()V

    .line 406
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->initBeautyButton()V

    .line 407
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->initFrontSettingButton()V

    .line 409
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_square_pic_key"

    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v6, 0x7f0f002b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 412
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 417
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_front_setting_picture_size_key"

    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v6, 0x7f0f002d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "value1":Ljava/lang/String;
    const-string v3, "4x3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 420
    sget-object v3, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static {v3}, Lcom/lenovo/scg/camera/front/FrontUtil;->setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V

    .line 425
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyView()V

    .line 426
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 427
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontView;->showFunctionTips()V

    .line 429
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->clearReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    sget-object v6, Lcom/lenovo/scg/camera/front/FrontView;->CLEAR:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 431
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 432
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 433
    .local v0, "light":Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManagerListener:Landroid/hardware/SensorEventListener;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 435
    return-void

    .line 413
    .end local v0    # "light":Landroid/hardware/Sensor;
    .end local v2    # "value1":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->removeSquareMaskView()V

    goto :goto_0

    .line 421
    .restart local v2    # "value1":Ljava/lang/String;
    :cond_3
    const-string v3, "16x9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    sget-object v3, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static {v3}, Lcom/lenovo/scg/camera/front/FrontUtil;->setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V

    goto :goto_1
.end method

.method public onCaptureEnd()V
    .locals 5

    .prologue
    .line 809
    const-string v1, "FrontView"

    const-string/jumbo v2, "onCaptureEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_supply"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0023

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCaptureStart()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 783
    const-string v2, "FrontView"

    const-string/jumbo v3, "onCaptureStart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_front_supply"

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 788
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 806
    :goto_0
    return-void

    .line 792
    :cond_0
    const-string/jumbo v2, "pink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 793
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;

    const/16 v3, -0x220d

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 801
    :cond_1
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 803
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/scg/camera/front/FrontView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/scg/camera/front/FrontView;->startSupplyCaptureAnimation(FFZ)V

    goto :goto_0

    .line 795
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const-string/jumbo v2, "orange"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 796
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;

    const/16 v3, -0x2b52

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 440
    const-string v0, "FrontView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionFadeOutAnimation:Landroid/view/animation/Animation;

    .line 443
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionFadeInAnimation:Landroid/view/animation/Animation;

    .line 445
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->releasePhotoFunctionPanel()V

    .line 446
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->releaseFrontSettingPanel()V

    .line 449
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->releaseFrontWaterPanel()V

    .line 450
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->removeFirstEnterSupplyHintView()Z

    .line 451
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->unregisterLSensorListener()V

    .line 454
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->removeSupplyView()V

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->clearReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xd

    const/4 v6, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    .line 923
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 927
    sget v1, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumber:I

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lenovo/scg/camera/front/FrontUtil;->sShowBeautyRect:Z

    if-nez v1, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumber:I

    if-ge v0, v1, :cond_a

    .line 935
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    aget v1, v1, v0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_9

    .line 936
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 937
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v1

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 939
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/front/FrontView;->drawFaceRect(Landroid/graphics/Canvas;I)V

    .line 941
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mHappy:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 943
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getSmileLevel()[I

    move-result-object v1

    if-eqz v1, :cond_3

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getSmileLevel()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mHappyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 948
    :cond_3
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    aget v1, v1, v0

    if-nez v1, :cond_4

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    aget v1, v1, v0

    if-lt v1, v7, :cond_4

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    aget v1, v1, v0

    const/16 v2, 0x2d

    if-le v1, v2, :cond_5

    :cond_4
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_7

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    aget v1, v1, v0

    if-lt v1, v7, :cond_7

    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    aget v1, v1, v0

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_7

    .line 950
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAge:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 960
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 931
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 954
    :cond_7
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    aget v1, v1, v0

    if-ge v1, v7, :cond_8

    .line 955
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeAdjChild:[Ljava/lang/String;

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeIndexChild:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 957
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeAdjMiddle:[Ljava/lang/String;

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeIndexMiddle:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNumberRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 961
    :cond_9
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 962
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 963
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v1

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 964
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRectRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 965
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 969
    :cond_a
    iput v8, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumber:I

    .line 971
    iget v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->counter:I

    .line 972
    iget v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->counter:I

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    .line 973
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeAdjChild:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v6, :cond_b

    .line 974
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeAdjChild:[Ljava/lang/String;

    array-length v1, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeIndexChild:I

    .line 976
    :cond_b
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeAdjMiddle:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v6, :cond_c

    .line 977
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeAdjMiddle:[Ljava/lang/String;

    array-length v1, v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeIndexMiddle:I

    .line 979
    :cond_c
    const-string v1, "FrontView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAgeIndexChild:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeIndexChild:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAgeIndexMiddle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mAgeIndexMiddle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iput v8, p0, Lcom/lenovo/scg/camera/front/FrontView;->counter:I

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 322
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 323
    const-string v1, "FrontView"

    const-string/jumbo v2, "onFinishInflate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/camera/front/FrontUtil;->init(Landroid/content/Context;)V

    .line 327
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontView;->initBar()V

    .line 329
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontView;->initAnimator()V

    .line 332
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    .line 334
    sget-object v1, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;

    .line 338
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWhiteView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 340
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v2, 0x7f05003f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionFadeInAnimation:Landroid/view/animation/Animation;

    .line 341
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v2, 0x7f050041

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionFadeOutAnimation:Landroid/view/animation/Animation;

    .line 343
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/lenovo/scg/camera/front/FrontView$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/front/FrontView$2;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 364
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/lenovo/scg/camera/front/FrontView$3;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/front/FrontView$3;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    const v1, 0x7f100566

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    .line 387
    const v1, 0x7f100567

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTouchTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 388
    const v1, 0x7f100568

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mVoiceTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 389
    const v1, 0x7f100569

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBlinkTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 390
    const v1, 0x7f10056a

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mGestureTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 392
    const v1, 0x7f10056b

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    .line 393
    const v1, 0x7f10056c

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTouchTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 394
    const v1, 0x7f10056d

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mVoiceTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 395
    const v1, 0x7f10056e

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBlinkTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 396
    const v1, 0x7f10056f

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mGestureTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 397
    return-void
.end method

.method public releaseFrontSettingPanel()V
    .locals 2

    .prologue
    .line 1045
    const-string v0, "FrontView"

    const-string/jumbo v1, "releaseFrontSettingPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    .line 1050
    :cond_0
    return-void
.end method

.method public releaseFrontWaterPanel()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    .line 1003
    :cond_0
    return-void
.end method

.method public releasePhotoFunctionPanel()V
    .locals 2

    .prologue
    .line 1089
    const-string v0, "FrontView"

    const-string/jumbo v1, "releasePhotoFunctionPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .line 1094
    :cond_0
    return-void
.end method

.method public removeFirstEnterSupplyHintView()Z
    .locals 3

    .prologue
    .line 1512
    const-string v1, "FrontView"

    const-string/jumbo v2, "removeFirstEnterSupplyHintView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const/4 v0, 0x0

    .line 1514
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1516
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    .line 1517
    const/4 v0, 0x1

    .line 1520
    :cond_0
    return v0
.end method

.method public removeSupplyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1242
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontView;->isSquarePicOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f10028b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 1244
    .local v0, "maskView":Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
    if-eqz v0, :cond_0

    .line 1245
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->resetMaskColor()V

    .line 1249
    .end local v0    # "maskView":Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 1256
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/front/FrontView;->removeViewFromCameraAppRoot(Landroid/view/View;)V

    .line 1254
    iput-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskLayout:Landroid/widget/RelativeLayout;

    .line 1255
    iput-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskView:Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;

    goto :goto_0
.end method

.method public setController(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 2
    .param p1, "controller1"    # Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
    .param p2, "controller2"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 315
    const-string v0, "FrontView"

    const-string/jumbo v1, "setController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .line 317
    iput-object p2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 318
    return-void
.end method

.method public setIsFilmMode(Z)V
    .locals 0
    .param p1, "isFilm"    # Z

    .prologue
    .line 1829
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mbInFilmMode:Z

    .line 1830
    return-void
.end method

.method public setIsPhotoWayHintShow(Z)V
    .locals 0
    .param p1, "isPhotoWayHintShow"    # Z

    .prologue
    .line 1579
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mIsPhotoWayHintShow:Z

    .line 1580
    return-void
.end method

.method public setNeedShowSupplyHint(Z)V
    .locals 0
    .param p1, "needShowSupplyHint"    # Z

    .prologue
    .line 1571
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mNeedShowSupplyHint:Z

    .line 1572
    return-void
.end method

.method public setOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const v5, 0x7f100178

    const v4, 0x7f100176

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 459
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSwitchToBackButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 460
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 461
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 463
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 465
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTouchTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 466
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mVoiceTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBlinkTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 468
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mGestureTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTouchTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mVoiceTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBlinkTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 472
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mGestureTip1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarProgress1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarProgress1:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarProgress7:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBarProgress7:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingPanel:Lcom/lenovo/scg/camera/front/FrontSettingPanel;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/front/FrontSettingPanel;->setOrientation(I)V

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionPanel:Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setOrientation(I)V

    .line 481
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 498
    :cond_4
    :goto_0
    return-void

    .line 484
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 491
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 492
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setPhotoModule(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 0
    .param p1, "pm"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 247
    return-void
.end method

.method public setRect(I[Landroid/graphics/Rect;[I[I[I)V
    .locals 8
    .param p1, "number"    # I
    .param p2, "rect"    # [Landroid/graphics/Rect;
    .param p3, "oriention"    # [I
    .param p4, "sex"    # [I
    .param p5, "age"    # [I

    .prologue
    .line 825
    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 826
    .local v2, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_0

    .line 881
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 831
    .local v3, "mPreviewSzie":Landroid/hardware/Camera$Size;
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-eqz v5, :cond_1

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    if-nez v5, :cond_2

    .line 880
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->postInvalidate()V

    goto :goto_0

    .line 837
    :cond_2
    const/4 v4, 0x0

    .line 838
    .local v4, "mWScale":F
    const/4 v1, 0x0

    .line 839
    .local v1, "mHScale":F
    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getRatio()Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    if-ne v5, v6, :cond_5

    .line 840
    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 841
    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    int-to-float v5, v5

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 847
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_3
    if-ge v0, p1, :cond_6

    .line 861
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mOriginalFaceRect:[Landroid/graphics/Rect;

    aget-object v5, v5, v0

    aget-object v6, p2, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 864
    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v6, v6

    aget-object v7, p2, v0

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 865
    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getBottomSpace()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget-object v7, p2, v0

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 866
    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v6, v6

    aget-object v7, p2, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 867
    iget-object v5, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v0

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getBottomSpace()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget-object v7, p2, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 869
    if-eqz p3, :cond_4

    .line 870
    sget-object v5, Lcom/lenovo/scg/camera/front/FrontView;->mFaceOriention:[I

    aget v6, p3, v0

    aput v6, v5, v0

    .line 847
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 842
    .end local v0    # "index":I
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getRatio()Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    if-ne v5, v6, :cond_3

    .line 843
    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v5, v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 844
    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    div-float v1, v5, v6

    goto :goto_2

    .line 874
    .restart local v0    # "index":I
    :cond_6
    sput-object p5, Lcom/lenovo/scg/camera/front/FrontView;->mFaceAge:[I

    .line 875
    sput-object p4, Lcom/lenovo/scg/camera/front/FrontView;->mSex:[I

    .line 876
    iput p1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumber:I

    .line 877
    sput p1, Lcom/lenovo/scg/camera/front/FrontView;->mFaceNumberForSave:I

    goto/16 :goto_1
.end method

.method public setWaterButtonEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 622
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 626
    :cond_0
    if-eqz p1, :cond_1

    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0203ff

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 632
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_front_water_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 633
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0203fe

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public showAllButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1118
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSwitchToBackButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1119
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoFunctionButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1120
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    .line 1121
    .local v0, "isRow":Z
    if-eqz v0, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1126
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSettingButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1127
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1128
    return-void

    .line 1124
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontWaterButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showBeautyBar()V
    .locals 2

    .prologue
    .line 1663
    sget v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showOrHideBlinkTip(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1365
    const-string v0, "FrontView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showOrHideBlinkTip, mFunctionTipsCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    if-eqz p1, :cond_1

    .line 1368
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 1369
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBlinkTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1370
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1387
    :goto_0
    return-void

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1375
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_0

    .line 1378
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 1379
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBlinkTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1380
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1381
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    if-nez v0, :cond_2

    .line 1382
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1384
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showOrHideGestureTip(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1390
    const-string v0, "FrontView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showOrHideGestureTip, mFunctionTipsCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    if-eqz p1, :cond_1

    .line 1393
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 1394
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mGestureTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1395
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1397
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1412
    :goto_0
    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1400
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_0

    .line 1403
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 1404
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mGestureTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1405
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1406
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    if-nez v0, :cond_2

    .line 1407
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1409
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showOrHideTouchTip(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1315
    const-string v0, "FrontView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showOrHideTouchTip, mFunctionTipsCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    if-eqz p1, :cond_1

    .line 1318
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 1319
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTouchTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1320
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1337
    :goto_0
    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1325
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_0

    .line 1328
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 1329
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mTouchTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1331
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    if-nez v0, :cond_2

    .line 1332
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1334
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showOrHideVoiceTip(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1340
    const-string v0, "FrontView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showOrHideVoiceTip, mFunctionTipsCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    if-eqz p1, :cond_1

    .line 1343
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 1344
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mVoiceTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1345
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1362
    :goto_0
    return-void

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1350
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_0

    .line 1353
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    .line 1354
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mVoiceTip:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1355
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip4:Landroid/widget/TableLayout;

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 1356
    iget v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTipsCount:I

    if-nez v0, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1359
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFunctionTip3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSupplyHint()V
    .locals 10

    .prologue
    const v9, 0x7f100178

    const v8, 0x7f100176

    const/4 v2, 0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 1445
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mbInFilmMode:Z

    if-eqz v4, :cond_0

    .line 1509
    :goto_0
    return-void

    .line 1448
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    const-string v5, "camera_front_supply_first_hint_is_display"

    invoke-virtual {v4, v5, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1451
    .local v0, "firstHintIsDisplay":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->isFrontSettingPanelVisible()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->isPhotoFunctionPanelVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v1, v2

    .line 1453
    .local v1, "isFrontPanelVisible":Z
    :goto_1
    const-string/jumbo v4, "panhui1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showSupplyHint, firstHintIsDisplay = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isFrontPanelVisible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 1457
    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "camera_front_supply_first_hint_is_display"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1460
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f040035

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    .line 1462
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1464
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getOrientation()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1477
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/camera/front/FrontView$10;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/front/FrontView$10;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1489
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/camera/front/FrontView$11;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/front/FrontView$11;-><init>(Lcom/lenovo/scg/camera/front/FrontView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1508
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->unregisterLSensorListener()V

    goto/16 :goto_0

    .end local v1    # "isFrontPanelVisible":Z
    :cond_3
    move v1, v3

    .line 1451
    goto/16 :goto_1

    .line 1467
    .restart local v1    # "isFrontPanelVisible":Z
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1471
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/front/FrontView;->mFrontSupplyHint:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1501
    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->isSupplyOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1503
    const v2, 0x7f0f005e

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090187

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090188

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0x7d0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/lenovo/scg/camera/front/FrontView;->showTip(IIII)V

    goto :goto_3

    .line 1464
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public showSupplyMaskView(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 1205
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontView;->isSquarePicOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontView;->removeSupplyView()V

    .line 1207
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    move-result-object v1

    .line 1208
    .local v1, "maskView":Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->setMaskColor(I)V

    .line 1239
    .end local v1    # "maskView":Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
    :goto_0
    return-void

    .line 1212
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskLayout:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    .line 1213
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const v4, 0x7f040036

    invoke-interface {v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->inflate(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskLayout:Landroid/widget/RelativeLayout;

    .line 1214
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f10017b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskView:Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;

    .line 1217
    :cond_1
    sget v3, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v2, v3, 0x3

    .line 1218
    .local v2, "previewH":I
    sget v3, Lcom/lenovo/scg/camera/front/FrontUtil;->mDefaultTopSpace:I

    add-int v0, v2, v3

    .line 1219
    .local v0, "bottomSpace":I
    const-string v3, "FrontView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showSupplyMaskView, bottomSpace = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", previewH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskView:Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;

    sget v4, Lcom/lenovo/scg/camera/front/FrontUtil;->mDefaultTopSpace:I

    sget v5, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    sget v6, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->setOffsets(IIII)V

    .line 1234
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskView:Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->setColor(I)V

    .line 1236
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/front/FrontView;->addView2CameraAppRoot(Landroid/view/View;)V

    .line 1238
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSupplyMaskView:Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/view/SupplyMaskView;->invalidate()V

    goto :goto_0
.end method

.method public showSupplyView()V
    .locals 3

    .prologue
    .line 1166
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontView;->getSupplyValue()Ljava/lang/String;

    move-result-object v1

    .line 1167
    .local v1, "supply":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lenovo/scg/camera/front/FrontView;->is169Open()Z

    move-result v0

    .line 1176
    .local v0, "is169":Z
    const-string/jumbo v2, "pink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1177
    if-eqz v0, :cond_1

    .line 1178
    const v2, 0x66ffbde7

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    const/16 v2, -0x220d

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    goto :goto_0

    .line 1183
    :cond_2
    const-string/jumbo v2, "orange"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    if-eqz v0, :cond_3

    .line 1185
    const v2, 0x66ffbb7e

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    goto :goto_0

    .line 1187
    :cond_3
    const/16 v2, -0x2b52

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyMaskView(I)V

    goto :goto_0
.end method

.method public touchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mWatermarkPanel:Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/front/FrontWaterPanel;->touchEvent(Landroid/view/MotionEvent;)Z

    .line 1011
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterLSensorListener()V
    .locals 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManagerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1527
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/FrontView;->setNeedShowSupplyHint(Z)V

    .line 1529
    :cond_0
    return-void
.end method

.method public updateSupplyBeautyBotton(Z)V
    .locals 5
    .param p1, "supply"    # Z

    .prologue
    .line 711
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_beauty"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0029

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "beautyValue":Ljava/lang/String;
    const-string v1, "FrontView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSupplyBeautyBotton, beautyValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    if-eqz p1, :cond_3

    .line 717
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f02017e

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    const-string/jumbo v1, "smart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 720
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f02017f

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 721
    :cond_2
    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f02017d

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 725
    :cond_3
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 726
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f0200be

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 727
    :cond_4
    const-string/jumbo v1, "smart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 728
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 729
    :cond_5
    const-string/jumbo v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontView;->mBeautyButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method
