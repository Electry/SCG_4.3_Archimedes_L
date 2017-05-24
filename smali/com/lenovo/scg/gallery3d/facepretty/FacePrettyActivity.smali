.class public Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
.super Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;
.source "FacePrettyActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;,
        Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;,
        Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;,
        Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;,
        Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;,
        Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;,
        Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;,
        Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa

.field public static final CREAT_NEXT_EFFECT:I = 0x66

.field public static final CREAT_STOP:I = 0x67

.field public static final HANDLER_AUTO_ONE_FACE_EFFECT_COMPLETE:I = 0x6

.field public static final HANDLER_CREAT_EFFECT_BMP_COMPLETE:I = 0x4

.field public static final HANDLER_DISMISS_LOADING_PROGRESSBAR:I = 0xc

.field public static final HANDLER_FIND_FACE_AND_JUDGE_GENDER_COMPLETE:I = 0x1

.field public static final HANDLER_HIDE_FACE_CIRCLE_VIEW:I = 0xd

.field public static final HANDLER_MANY_FACE_INPIC:I = 0x8

.field public static final HANDLER_NO_FACE_INPIC:I = 0x9

.field public static final HANDLER_NO_JUDGE_GENDER_LIBS:I = 0xb

.field public static final HANDLER_SHOW_BUTTON:I = 0x3

.field public static final HANDLER_SHOW_FACE_CIRCLE_COMPLETE:I = 0x2

.field public static final HANDLER_SHOW_LOADING_PROGRESSBAR:I = 0x5

.field public static final HANDLER_UPDATE_MSHOWEFFECTIGVEW:I = 0x7

.field public static final HANDLER_VISIABLE_VIEW:I = 0xa

.field public static final LOG_TAG:Ljava/lang/String; = "WDY:FacePrettyActivity"

.field public static LOOPFACEID:I = 0x0

.field public static final ORIGINAL_PIC_WAS_DELECTED:I = 0xf

.field public static final PHOTO_PATH:Ljava/lang/String; = "PHOTO_PATH"

.field public static final PHOTO_SCALE_VALUE:Ljava/lang/String; = "PHOTO_SCALE_VALUE"

.field public static final ROTATION_BUTTON:Z = false

.field public static final SET_CAN_CLICK:I = 0xe

.field public static final SHOW_ARC_SEEKBAR:Z = false

.field public static final SHOW_GENDER_MAN_ICON:I = 0xca

.field public static final SHOW_GENDER_OTHER_ICON:I = 0xcb

.field public static final SHOW_GENDER_WOMAN_ICON:I = 0xc9

.field public static final STOP_SHOW_GENDER_STOP:I = 0xcc

.field public static loopDoHandler:Landroid/os/Handler;

.field public static mHandler:Landroid/os/Handler;


# instance fields
.field private afterTextView:Landroid/widget/TextView;

.field private beforeAfterImgView:Landroid/widget/ImageView;

.field private beforeTextView:Landroid/widget/TextView;

.field private bottomBannerHeight:I

.field private bottomBannerLayout:Landroid/widget/RelativeLayout;

.field private cancleAllEffectBtn:Landroid/widget/ImageButton;

.field private circleIsShowew:Z

.field private currentSStartX:F

.field private currentSStartY:F

.field private currentTStartX:I

.field private currentTStartY:I

.field private effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

.field private effectUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

.field private enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

.field private faceRectsOnScreen:[Landroid/graphics/Rect;

.field private faceRectsOnScreenLand:[Landroid/graphics/Rect;

.field private genderChangeBtn:Landroid/widget/ImageButton;

.field private genderGroup:Landroid/widget/RadioGroup;

.field private genderGroup_Land:Landroid/widget/RadioGroup;

.field private isFirst:Z

.field private isHaveReadCourse:Z

.field private isNeedCourse:Z

.field private isShowing:Z

.field isWindowActive:Z

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

.field private mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

.field private mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

.field private mArchSeekBarLayout:Landroid/widget/RelativeLayout;

.field private mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

.field private mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

.field private mBeforeAfterLayt:Landroid/widget/RelativeLayout;

.field private mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

.field private mCircleProgressViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;

.field private mCircleSize:I

.field private mCommandsBAK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEffectBitmapTmep:Landroid/graphics/Bitmap;

.field private mEffectIgvewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;

.field private mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

.field private mFaceCircleViewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;

.field private mFilterStackIndex:I

.field private mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

.field private mGenderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadScreenNailTask:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;

.field private mMainView:Landroid/view/View;

.field private mNoFaceAlertDialog:Landroid/app/AlertDialog;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

.field private mRectUitls:Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

.field private mSeekBarHor:Landroid/widget/SeekBar;

.field private mSeekbarLayout:Landroid/widget/LinearLayout;

.field private mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

.field private mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

.field private mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

.field private mSingleCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallView:Landroid/view/View;

.field private mTitleAuto:Landroid/widget/TextView;

.field private mTitleManual:Landroid/widget/TextView;

.field private mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

.field private manButton:Landroid/widget/ImageButton;

.field private manRadioButton:Landroid/widget/RadioButton;

.field private manRadioButton_Land:Landroid/widget/RadioButton;

.field private marquue_isrunning:Z

.field private maskImageView:Landroid/widget/ImageView;

.field private msgTextView:Landroid/widget/TextView;

.field private nameLargeTextView:Landroid/widget/TextView;

.field private nameSmallTextView:Landroid/widget/TextView;

.field private nameViviTextView:Landroid/widget/TextView;

.field private nameWhiteTextView:Landroid/widget/TextView;

.field private offset:F

.field onCreateBitmapComplete:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

.field private oneBigTextView:Landroid/widget/TextView;

.field private onePersionCancleButton:Landroid/widget/ImageButton;

.field private onePersionSaveButton:Landroid/widget/ImageButton;

.field private otherButton:Landroid/widget/ImageButton;

.field private otherRadioButton:Landroid/widget/RadioButton;

.field private otherRadioButton_Land:Landroid/widget/RadioButton;

.field private path:Ljava/lang/String;

.field private persentLargeTextView:Landroid/widget/TextView;

.field private persentSmallTextView:Landroid/widget/TextView;

.field private persentViviTextView:Landroid/widget/TextView;

.field private persentWhiTextView:Landroid/widget/TextView;

.field private relativeRects:[Landroid/graphics/Rect;

.field private saveAllEffectBtn:Landroid/widget/ImageButton;

.field private seekbarRotateCenterX:F

.field private seekbarRotateCenterY:F

.field private showScanViewID:I

.field private smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

.field private toRight_RotateButton:Landroid/widget/ImageButton;

.field private topBannerHeight:I

.field private topBannerLayout:Landroid/widget/RelativeLayout;

.field private topNullViewHeight:I

.field private vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

.field private whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

.field private womanButton:Landroid/widget/ImageButton;

.field private womanRadioButton:Landroid/widget/RadioButton;

.field private womanRadioButton_Land:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->LOOPFACEID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;-><init>()V

    .line 162
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;

    .line 164
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;

    .line 166
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;

    .line 173
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionSaveButton:Landroid/widget/ImageButton;

    .line 175
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;

    .line 177
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;

    .line 179
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    .line 181
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeAfterImgView:Landroid/widget/ImageView;

    .line 183
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->maskImageView:Landroid/widget/ImageView;

    .line 189
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;

    .line 191
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton:Landroid/widget/RadioButton;

    .line 193
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton:Landroid/widget/RadioButton;

    .line 195
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton:Landroid/widget/RadioButton;

    .line 197
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup_Land:Landroid/widget/RadioGroup;

    .line 199
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton_Land:Landroid/widget/RadioButton;

    .line 201
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton_Land:Landroid/widget/RadioButton;

    .line 203
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;

    .line 208
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 210
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    .line 212
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    .line 214
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;

    .line 216
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBarLayout:Landroid/widget/RelativeLayout;

    .line 218
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    .line 220
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    .line 222
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 224
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    .line 226
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBeforeAfterLayt:Landroid/widget/RelativeLayout;

    .line 229
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .line 231
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .line 233
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .line 235
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .line 238
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    .line 240
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    .line 242
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    .line 244
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    .line 246
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerLayout:Landroid/widget/RelativeLayout;

    .line 248
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerLayout:Landroid/widget/RelativeLayout;

    .line 250
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;

    .line 252
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;

    .line 254
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;

    .line 256
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeTextView:Landroid/widget/TextView;

    .line 258
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->afterTextView:Landroid/widget/TextView;

    .line 262
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    .line 264
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    .line 266
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    .line 268
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    .line 274
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;

    .line 276
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    .line 278
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;

    .line 283
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 285
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRectUitls:Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;

    .line 291
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    .line 293
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    .line 295
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFaceCircleViewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;

    .line 297
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    .line 299
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCommandsBAK:Ljava/util/List;

    .line 308
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    .line 310
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

    .line 314
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;

    .line 316
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 318
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    .line 324
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreen:[Landroid/graphics/Rect;

    .line 326
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreenLand:[Landroid/graphics/Rect;

    .line 328
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->relativeRects:[Landroid/graphics/Rect;

    .line 330
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->seekbarRotateCenterX:F

    .line 332
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->seekbarRotateCenterY:F

    .line 336
    iput v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    .line 338
    iput v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I

    .line 340
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I

    .line 342
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerHeight:I

    .line 344
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartX:I

    .line 346
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartY:I

    .line 348
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartX:F

    .line 350
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartY:F

    .line 352
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->offset:F

    .line 354
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->marquue_isrunning:Z

    .line 356
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isShowing:Z

    .line 358
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z

    .line 360
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z

    .line 367
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isWindowActive:Z

    .line 369
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topNullViewHeight:I

    .line 371
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    .line 373
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse:Z

    .line 375
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isNeedCourse:Z

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->path:Ljava/lang/String;

    .line 380
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 386
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .line 388
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    .line 392
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSmallView:Landroid/view/View;

    .line 394
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mMainView:Landroid/view/View;

    .line 396
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mNoFaceAlertDialog:Landroid/app/AlertDialog;

    .line 551
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onCreateBitmapComplete:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    .line 3149
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeAfterImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z[Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [Landroid/widget/ImageView;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageViewVisibility(Z[Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFindFaceAndJudgeGender()V

    return-void
.end method

.method static synthetic access$10000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V

    return-void
.end method

.method static synthetic access$10200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonPressed(Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I[I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # [I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePrettyForOnePersion(I[I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectIgvewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->marquue_isrunning:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton_Land:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->afterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton_Land:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFacePretty()V

    return-void
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Ljava/lang/String;F)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # F

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateSelectWhatKey(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent()V

    return-void
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateAllParamPreference()V

    return-void
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateEffectParamPreference()V

    return-void
.end method

.method static synthetic access$3800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startEffectThread()V

    return-void
.end method

.method static synthetic access$3900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z[Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [Landroid/widget/TextView;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setTextViewVisibility(Z[Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup_Land:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startDoOneFaceEffectArcSoftThread(Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # [I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startDoOneFaceEffectThread([I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreen:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->dismissLoadingProgressBar(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setFaceRectOnscreen()V

    return-void
.end method

.method static synthetic access$4800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showNotFoundFaceDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFilterStackIndex:I

    return v0
.end method

.method static synthetic access$5000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isShowing:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isShowing:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Landroid/widget/ProgressBar;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showLoadingProgressBar(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I

    return v0
.end method

.method static synthetic access$6502(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showScanViewID:I

    return p1
.end method

.method static synthetic access$6600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    return v0
.end method

.method static synthetic access$6700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I

    return v0
.end method

.method static synthetic access$6800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartX:I

    return v0
.end method

.method static synthetic access$6902(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartX:I

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartY:I

    return v0
.end method

.method static synthetic access$7002(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartY:I

    return p1
.end method

.method static synthetic access$7100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartX:F

    return v0
.end method

.method static synthetic access$7102(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartX:F

    return p1
.end method

.method static synthetic access$7200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartY:F

    return v0
.end method

.method static synthetic access$7202(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartY:F

    return p1
.end method

.method static synthetic access$7300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showEffectImageViewMask(Z)V

    return-void
.end method

.method static synthetic access$7500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->calculateAbsoluteFaceRectsInBaseBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7802(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # [Landroid/graphics/Rect;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->relativeRects:[Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # [Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->judgeFaceGenderInBaseBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionSaveButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewUnSelected()V

    return-void
.end method

.method static synthetic access$8500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisiableEffectButtons()V

    return-void
.end method

.method static synthetic access$8600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enablemShowEffectIgvew()V

    return-void
.end method

.method static synthetic access$8800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startMarqueeForJudgeGender(Z)V

    return-void
.end method

.method static synthetic access$9000(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCommandsBAK:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBeforeAfterLayt:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z

    return v0
.end method

.method static synthetic access$9302(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;)Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mExecCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;

    return-object p1
.end method

.method static synthetic access$9500(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showOriginalImageIsDeletedDialog()V

    return-void
.end method

.method static synthetic access$9600(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isTouchFaceRec(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->resetColor()V

    return-void
.end method

.method static synthetic access$9800(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showFaceCircleViewWithAnimation()V

    return-void
.end method

.method static synthetic access$9900(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectWhat(Ljava/lang/String;)V

    return-void
.end method

.method private calTopBomBannerHeight()V
    .locals 4

    .prologue
    .line 535
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09042a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topNullViewHeight:I

    .line 536
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090426

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 537
    .local v1, "topActionBarHeight":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I

    .line 539
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090430

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 540
    .local v0, "bottpmActionBarHeight":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v0    # "bottpmActionBarHeight":I
    .end local v1    # "topActionBarHeight":I
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private calculateAbsoluteFaceRectsInBaseBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;
    .locals 11
    .param p1, "mBaseBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x1

    .line 1865
    const/4 v3, 0x1

    .line 1867
    .local v3, "isFirst":Z
    const/4 v0, 0x0

    .line 1869
    .local v0, "absoluteFaceRects":[Landroid/graphics/Rect;
    new-instance v5, Lcom/lenovo/scg/common/utils/FaceInfo;

    const/4 v8, 0x5

    invoke-direct {v5, v8}, Lcom/lenovo/scg/common/utils/FaceInfo;-><init>(I)V

    .line 1870
    .local v5, "mFaceInfo":Lcom/lenovo/scg/common/utils/FaceInfo;
    new-instance v4, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    invoke-direct {v4}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;-><init>()V

    .line 1871
    .local v4, "mFaceDetectJNI":Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;
    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->initFaceDetect(I)I

    .line 1872
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->detectFaceRectsByBitmap(Lcom/lenovo/scg/common/utils/FaceInfo;Landroid/graphics/Bitmap;)[B

    .line 1874
    invoke-virtual {v5}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceNumber()I

    move-result v1

    .line 1875
    .local v1, "faceNo":I
    if-lez v1, :cond_0

    .line 1876
    new-array v0, v1, [Landroid/graphics/Rect;

    .line 1878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getfaceNumber : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 1880
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1881
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v5}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceRects()[Landroid/graphics/Rect;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v8, v0, v2

    .line 1880
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1883
    :cond_1
    invoke-virtual {v4}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->uninitFaceDetect()V

    .line 1887
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 1888
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findFaceRectInBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Rect;

    move-result-object v0

    .line 1889
    const/4 v3, 0x0

    .line 1892
    :cond_2
    if-eqz v0, :cond_4

    array-length v8, v0

    if-lez v8, :cond_4

    .line 1893
    const-string v8, "WDY:FacePrettyActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculateAbsoluteFaceRectsInBaseBitmap() face number is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    array-length v8, v0

    new-array v6, v8, [Landroid/graphics/Rect;

    .line 1896
    .local v6, "mytmpRects":[Landroid/graphics/Rect;
    array-length v7, v6

    .line 1898
    .local v7, "rectNum":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_3

    .line 1899
    new-instance v8, Landroid/graphics/Rect;

    aget-object v9, v0, v2

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v8, v6, v2

    .line 1898
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1901
    :cond_3
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v8, v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setFaceRectOnBaseBmp([Landroid/graphics/Rect;)V

    .line 1909
    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/Rect;

    .end local v6    # "mytmpRects":[Landroid/graphics/Rect;
    .end local v7    # "rectNum":I
    :goto_2
    return-object v8

    .line 1905
    :cond_4
    sget-object v8, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1906
    sget-object v8, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1907
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private calcuteSeekbarRotateCenterXY(Landroid/view/View;)V
    .locals 2
    .param p1, "mView"    # Landroid/view/View;

    .prologue
    .line 1080
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->seekbarRotateCenterX:F

    .line 1081
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->offset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->seekbarRotateCenterY:F

    .line 1082
    return-void
.end method

.method private checkAndUpdateCommList([I[I)V
    .locals 6
    .param p1, "param"    # [I
    .param p2, "relativeFaceRect"    # [I

    .prologue
    .line 2576
    const-string v3, "WDY:FacePrettyActivity+checkAndUpdateCommList()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExecCmd List Size is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    new-instance v2, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;-><init>()V

    .line 2579
    .local v2, "singleCmd":Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setFaceid(I)V

    .line 2581
    const-string v3, "WDY:FacePrettyActivity+checkAndUpdateCommList()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectRectIndex is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setEffectParams([I)V

    .line 2584
    invoke-virtual {v2, p2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setRelativeFaceRect([I)V

    .line 2586
    const/4 v1, 0x0

    .line 2587
    .local v1, "isInList":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2588
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getFaceid()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2589
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setEffectParams([I)V

    .line 2590
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v3, p2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->setRelativeFaceRect([I)V

    .line 2591
    const/4 v1, 0x1

    .line 2587
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2595
    :cond_1
    if-nez v1, :cond_2

    .line 2596
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2598
    :cond_2
    return-void
.end method

.method private creatActionListener()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectIgvewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;

    if-nez v0, :cond_0

    .line 997
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectIgvewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnEffectIgvewTouchListener;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    if-nez v0, :cond_1

    .line 1000
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    if-nez v0, :cond_2

    .line 1004
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    .line 1007
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setBindView(Landroid/widget/RelativeLayout;)V

    .line 1009
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->bindSeekbar(Landroid/widget/SeekBar;)V

    .line 1011
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setOnRotationChangeListener(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;)V

    .line 1044
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1045
    return-void
.end method

.method private disablemShowEffectIgvew()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2071
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setFocusable(Z)V

    .line 2072
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setClickable(Z)V

    .line 2073
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setEnabled(Z)V

    .line 2074
    return-void
.end method

.method private dismissLoadingProgressBar(Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x1

    .line 964
    new-array v0, v3, [Landroid/widget/ImageButton;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setButtonClickable(Z[Landroid/widget/ImageButton;)V

    .line 965
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 966
    return-void
.end method

.method private enablemShowEffectIgvew()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2084
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setFocusable(Z)V

    .line 2085
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setClickable(Z)V

    .line 2086
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setEnabled(Z)V

    .line 2087
    return-void
.end method

.method private getCircleRotationPort(Landroid/view/View;FF)F
    .locals 10
    .param p1, "mView"    # Landroid/view/View;
    .param p2, "touch_x"    # F
    .param p3, "touch_y"    # F

    .prologue
    const/4 v7, 0x0

    .line 1097
    iget v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->seekbarRotateCenterX:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->seekbarRotateCenterY:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 1098
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->calcuteSeekbarRotateCenterXY(Landroid/view/View;)V

    .line 1100
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->seekbarRotateCenterX:F

    .line 1101
    .local v0, "centerX":F
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->seekbarRotateCenterY:F

    .line 1103
    .local v1, "centerY":F
    float-to-int v6, p3

    float-to-int v7, v1

    if-ge v6, v7, :cond_1

    .line 1104
    move p3, v1

    .line 1107
    :cond_1
    sub-float v2, p2, v0

    .line 1108
    .local v2, "dx":F
    sub-float v3, p3, v1

    .line 1110
    .local v3, "dy":F
    div-float v5, v2, v3

    .line 1111
    .local v5, "tanRotation":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v4, v6

    .line 1113
    .local v4, "rotation":F
    float-to-int v6, v4

    const/16 v7, -0x1e

    if-ge v6, v7, :cond_2

    .line 1114
    const/high16 v4, -0x3e100000    # -30.0f

    .line 1117
    :cond_2
    float-to-int v6, v4

    const/16 v7, 0x1e

    if-le v6, v7, :cond_3

    .line 1118
    const/high16 v4, 0x41f00000    # 30.0f

    .line 1122
    :cond_3
    neg-float v6, v4

    return v6
.end method

.method private getFaceRectsOnScreen()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreen:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private getFaceRectsOnScreenLand()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3594
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreenLand:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private getRelativeRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 3729
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->relativeRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private getSingleFaceEffectFaceRect()[I
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2519
    new-array v0, v2, [I

    .line 2521
    .local v0, "faceRect":[I
    new-array v1, v2, [I

    .line 2523
    .local v1, "relativeFaceRect":[I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2524
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getStartX()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v4

    .line 2525
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getStartY()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v5

    .line 2526
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getStartX()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v6

    .line 2527
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getStartY()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v7

    .line 2529
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v1, v4

    .line 2530
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v1, v5

    .line 2531
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    aput v2, v1, v6

    .line 2532
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    aput v2, v1, v7

    .line 2535
    :cond_0
    return-object v1
.end method

.method private getSingleFaceEffectParamArray()[I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0xff

    const/4 v4, 0x0

    .line 2548
    const/16 v1, 0xb

    new-array v0, v1, [I

    .line 2549
    .local v0, "face_effect_param_array":[I
    aput v2, v0, v4

    .line 2550
    aput v2, v0, v5

    .line 2551
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 2553
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "face_white"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 2554
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "face_small"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 2555
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "eye_vivi"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 2556
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "eye_wide"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    .line 2557
    const/4 v1, 0x7

    aput v4, v0, v1

    .line 2558
    const/16 v1, 0x8

    aput v4, v0, v1

    .line 2559
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v2

    array-length v2, v2

    aput v2, v0, v1

    .line 2560
    const/16 v1, 0xa

    aput v5, v0, v1

    .line 2562
    return-object v0
.end method

.method private initFacePrettyUIViews()V
    .locals 6

    .prologue
    const v4, 0x7f100895

    const v5, 0x3f4ccccd    # 0.8f

    .line 1285
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;

    .line 1287
    const v2, 0x7f10048e

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    .line 1288
    const v2, 0x7f10048d

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;

    .line 1290
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1291
    const v2, 0x7f100499

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->maskImageView:Landroid/widget/ImageView;

    .line 1292
    const v2, 0x7f10049f

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBeforeAfterLayt:Landroid/widget/RelativeLayout;

    .line 1293
    const v2, 0x7f100894

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    .line 1294
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;

    .line 1297
    const v2, 0x7f1004c6

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    .line 1298
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-nez v2, :cond_0

    .line 1300
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    const v3, 0x7f0f0881

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1302
    :cond_0
    const v2, 0x7f1004c7

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    .line 1303
    const v2, 0x7f1004c8

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    .line 1304
    const v2, 0x7f1004c9

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    .line 1305
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1306
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1307
    .local v1, "scaleVal":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1308
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1312
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1313
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1314
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1315
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1316
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1323
    .end local v1    # "scaleVal":F
    :cond_1
    const v2, 0x7f1004c1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    .line 1324
    const v2, 0x7f1004c2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    .line 1325
    const v2, 0x7f1004c3

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    .line 1326
    const v2, 0x7f1004c4

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    .line 1328
    const v2, 0x7f10049a

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;

    .line 1332
    const v2, 0x7f1004c0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setTextViewTypeface(I)V

    .line 1333
    const v2, 0x7f1004c5

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setTextViewTypeface(I)V

    .line 1335
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->initHelveticaTypeface(Landroid/content/Context;)V

    .line 1336
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getHelveticaTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1337
    .local v0, "bigTypeface":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1339
    const v2, 0x7f1004a0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeAfterImgView:Landroid/widget/ImageView;

    .line 1340
    const v2, 0x7f1004a1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeTextView:Landroid/widget/TextView;

    .line 1341
    const v2, 0x7f1004a2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->afterTextView:Landroid/widget/TextView;

    .line 1343
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->beforeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 1344
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->afterTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 1346
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 1347
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 1349
    const v2, 0x7f100486

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerLayout:Landroid/widget/RelativeLayout;

    .line 1350
    const v2, 0x7f100490

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerLayout:Landroid/widget/RelativeLayout;

    .line 1352
    const v2, 0x7f10047b

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;

    .line 1353
    const v2, 0x7f10047c

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton:Landroid/widget/RadioButton;

    .line 1354
    const v2, 0x7f10047d

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton:Landroid/widget/RadioButton;

    .line 1355
    const v2, 0x7f10047e

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton:Landroid/widget/RadioButton;

    .line 1357
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/RadioGroup;)V

    .line 1364
    const v2, 0x7f100496

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;

    .line 1366
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 1368
    const v2, 0x7f1004aa

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 1370
    const v2, 0x7f10088e

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 1371
    const v2, 0x7f100485

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    .line 1372
    const v2, 0x7f10049b

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    .line 1374
    const v2, 0x7f100892

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .line 1375
    const v2, 0x7f100890

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .line 1377
    const v2, 0x7f100893

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .line 1379
    const v2, 0x7f100891

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .line 1382
    const v2, 0x7f100487

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;

    .line 1383
    const v2, 0x7f1000a1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;

    .line 1386
    const v2, 0x7f10048b

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionSaveButton:Landroid/widget/ImageButton;

    .line 1387
    const v2, 0x7f100489

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;

    .line 1390
    const v2, 0x7f10048a

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;

    .line 1392
    const v2, 0x7f10049d

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBarLayout:Landroid/widget/RelativeLayout;

    .line 1393
    const v2, 0x7f10049e

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    .line 1395
    const v2, 0x7f10049c

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    .line 1398
    const v2, 0x7f100492

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;

    .line 1399
    const v2, 0x7f100493

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;

    .line 1400
    const v2, 0x7f100494

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;

    .line 1403
    const v2, 0x7f100495

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    .line 1404
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1407
    const v2, 0x7f10047f

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup_Land:Landroid/widget/RadioGroup;

    .line 1408
    const v2, 0x7f100480

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton_Land:Landroid/widget/RadioButton;

    .line 1409
    const v2, 0x7f100481

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton_Land:Landroid/widget/RadioButton;

    .line 1410
    const v2, 0x7f100482

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;

    .line 1412
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton_Land:Landroid/widget/RadioButton;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/RadioButton;)V

    .line 1413
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton_Land:Landroid/widget/RadioButton;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/RadioButton;)V

    .line 1414
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/RadioButton;)V

    .line 1415
    return-void

    .line 1310
    .end local v0    # "bigTypeface":Landroid/graphics/Typeface;
    .restart local v1    # "scaleVal":F
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 1587
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    .line 1841
    return-void
.end method

.method private initLoopDoHandler()V
    .locals 1

    .prologue
    .line 591
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    .line 817
    return-void
.end method

.method private invisiableEffectButtons()V
    .locals 5

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartX:F

    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartY:F

    iget v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartX:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartY:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ViewAnimUtils;->startAnimationSet4CircleViewOut(Landroid/view/View;FFII)V

    .line 3073
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3075
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3076
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3077
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionSaveButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3078
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3079
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3080
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3081
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3083
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekBarHor:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 3084
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3086
    return-void
.end method

.method private isTouchFaceRec(II)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2338
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2444
    :cond_0
    :goto_0
    return v4

    .line 2342
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2346
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 2350
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 2354
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2358
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2362
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->isShown()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2367
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScreenOrientation()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2368
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v6

    array-length v1, v6

    .line 2369
    .local v1, "faceNumber":I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_0

    if-lez v1, :cond_0

    .line 2370
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 2371
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2372
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectedFaceID(I)V

    .line 2374
    sget-boolean v4, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v4, :cond_2

    .line 2375
    new-instance v0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;-><init>()V

    .line 2377
    .local v0, "changedParam":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmEyeEnlargmentLevel(I)V

    .line 2378
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSlenderFaceLevel(I)V

    .line 2379
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinBrightLevel(I)V

    .line 2380
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinSoftenLevel(I)V

    .line 2382
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    .line 2385
    new-instance v4, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getCommand()Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRects()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getCommand()Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRolls()[I

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getCommand()Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;-><init>(Ljava/util/ArrayList;[ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .line 2388
    .end local v0    # "changedParam":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2389
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "isHaveReadCourse"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2390
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->hideCourseView()V

    .line 2391
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setHaveReadCourse(Z)V

    :cond_3
    move v4, v5

    .line 2394
    goto/16 :goto_0

    .line 2370
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 2402
    .end local v1    # "faceNumber":I
    .end local v2    # "i":I
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v6

    array-length v1, v6

    .line 2404
    .restart local v1    # "faceNumber":I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_0

    if-lez v1, :cond_0

    .line 2405
    new-array v3, v1, [Landroid/graphics/Rect;

    .line 2406
    .local v3, "tmpRects":[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_6

    .line 2407
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v7

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v8

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v9

    aget-object v9, v9, v2

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v10

    aget-object v10, v10, v2

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v3, v2

    .line 2406
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2414
    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_0

    .line 2415
    aget-object v6, v3, v2

    invoke-virtual {v6, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2416
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setSelectedFaceID(I)V

    .line 2417
    sget-boolean v4, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v4, :cond_7

    .line 2418
    new-instance v0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;-><init>()V

    .line 2420
    .restart local v0    # "changedParam":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmEyeEnlargmentLevel(I)V

    .line 2421
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSlenderFaceLevel(I)V

    .line 2422
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinBrightLevel(I)V

    .line 2423
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getFlasslessParamByFaceID(I)Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinSoftenLevel(I)V

    .line 2425
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    .line 2427
    new-instance v4, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getCommand()Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRects()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getCommand()Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceRolls()[I

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->getCommand()Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;->getmFaceParams()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;-><init>(Ljava/util/ArrayList;[ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    .line 2433
    .end local v0    # "changedParam":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2434
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "isHaveReadCourse"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2435
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->hideCourseView()V

    .line 2436
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setHaveReadCourse(Z)V

    :cond_8
    move v4, v5

    .line 2439
    goto/16 :goto_0

    .line 2414
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method

.method private judgeFaceGenderInBaseBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;
    .locals 3
    .param p1, "mBaseBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "faceRectsInBaseBmp"    # [Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1947
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveGenderLib()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1948
    if-eqz p2, :cond_0

    .line 1950
    array-length v0, p2

    if-ne v0, v2, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1952
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->judgeGenderInBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;

    .line 1960
    :cond_0
    :goto_0
    array-length v0, p2

    if-le v0, v2, :cond_3

    .line 1962
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1968
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;

    return-object v0

    .line 1957
    :cond_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1963
    :cond_3
    array-length v0, p2

    if-ge v0, v2, :cond_1

    .line 1965
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private resetColor()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2643
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-array v1, v7, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2644
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-array v1, v7, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2646
    return-void
.end method

.method private setActionListener()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFaceCircleViewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setOnClicleViewTouchListener(Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView$OnCircleViewTouchListener;)V

    .line 1136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manRadioButton_Land:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanRadioButton_Land:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherRadioButton_Land:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRadioButtonClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$RadioButtonClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleProgressViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleProgressViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleProgressViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleProgressViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionSaveButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnViewClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1156
    return-void
.end method

.method private setCircleProgressViewSelected(Landroid/view/View;)V
    .locals 9
    .param p1, "mSelectedView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 889
    const/4 v5, 0x4

    new-array v3, v5, [Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    aput-object v5, v3, v6

    const/4 v5, 0x2

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    aput-object v8, v3, v5

    const/4 v5, 0x3

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    aput-object v8, v3, v5

    .line 890
    .local v3, "mCircleProgressViews":[Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    move-object v0, v3

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 891
    .local v4, "mView":Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    if-ne v4, p1, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSelect(Z)V

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 891
    goto :goto_1

    .line 893
    .end local v4    # "mView":Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;
    :cond_1
    return-void
.end method

.method private setCircleProgressViewUnSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSelect(Z)V

    .line 883
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSelect(Z)V

    .line 884
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSelect(Z)V

    .line 885
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSelect(Z)V

    .line 886
    return-void
.end method

.method private setFaceRectOnscreen()V
    .locals 6

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getScreenWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getScreenHeight()I

    move-result v1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getScreenWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getScreenHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setOnCalFaceRectCompleteListener(Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView$OnCalFaceRecCompleteCallback;IIII)V

    .line 1852
    return-void
.end method

.method private setImageButtonPressed(Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;)V
    .locals 9
    .param p1, "mButton"    # Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2606
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2607
    .local v1, "colorHi":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2609
    .local v0, "color":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    if-ne p1, v2, :cond_1

    .line 2610
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewSelected(Landroid/view/View;)V

    .line 2613
    new-array v2, v6, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2614
    new-array v2, v7, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2615
    new-array v2, v7, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2640
    :cond_0
    :goto_0
    return-void

    .line 2617
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    if-ne p1, v2, :cond_2

    .line 2618
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewSelected(Landroid/view/View;)V

    .line 2620
    new-array v2, v6, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2621
    new-array v2, v7, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2622
    new-array v2, v7, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    goto :goto_0

    .line 2624
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    if-ne p1, v2, :cond_3

    .line 2625
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewSelected(Landroid/view/View;)V

    .line 2627
    new-array v2, v6, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2628
    new-array v2, v7, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2629
    new-array v2, v7, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    goto :goto_0

    .line 2631
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    if-ne p1, v2, :cond_0

    .line 2632
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewSelected(Landroid/view/View;)V

    .line 2635
    new-array v2, v6, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameViviTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2636
    new-array v2, v7, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameLargeTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameWhiteTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->nameSmallTextView:Landroid/widget/TextView;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    .line 2637
    new-array v2, v7, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setViewColor(I[Landroid/widget/TextView;)V

    goto/16 :goto_0
.end method

.method private varargs setImageViewVisibility(Z[Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "isVisible"    # Z
    .param p2, "imgViews"    # [Landroid/widget/ImageView;

    .prologue
    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 497
    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 498
    if-eqz p1, :cond_0

    .line 499
    aget-object v1, p2, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    aget-object v1, p2, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 504
    :cond_1
    return-void
.end method

.method private setRelativeRects([Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "relativeRects"    # [Landroid/graphics/Rect;

    .prologue
    .line 3733
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->relativeRects:[Landroid/graphics/Rect;

    .line 3734
    return-void
.end method

.method private setSelectWhat(Ljava/lang/String;)V
    .locals 2
    .param p1, "selectValue"    # Ljava/lang/String;

    .prologue
    .line 2601
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "select_what"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2602
    return-void
.end method

.method private varargs setTextViewVisibility(Z[Landroid/widget/TextView;)V
    .locals 3
    .param p1, "isVisible"    # Z
    .param p2, "tvViews"    # [Landroid/widget/TextView;

    .prologue
    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 517
    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 518
    if-eqz p1, :cond_0

    .line 519
    aget-object v1, p2, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_0
    aget-object v1, p2, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 524
    :cond_1
    return-void
.end method

.method private showEffectImageViewMask(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 3090
    if-eqz p1, :cond_0

    .line 3091
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->maskImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3096
    :goto_0
    return-void

    .line 3093
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->maskImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showFaceCircleViewWithAnimation()V
    .locals 13

    .prologue
    .line 1979
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1980
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1982
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v9, "selectRecIndex"

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 1988
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "face_white"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1989
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "face_small"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1990
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "eye_wide"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1991
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "eye_vivi"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1994
    :cond_2
    const/4 v6, 0x0

    .line 1995
    .local v6, "isInList":Z
    const/4 v4, -0x1

    .line 1996
    .local v4, "faceInListID":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 1997
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getFaceid()I

    move-result v8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 1998
    const/4 v6, 0x1

    .line 1999
    move v4, v5

    .line 1996
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2003
    :cond_4
    if-eqz v6, :cond_5

    .line 2005
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "face_white"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getEffectParams()[I

    move-result-object v8

    const/4 v11, 0x3

    aget v8, v8, v11

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2006
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "face_small"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getEffectParams()[I

    move-result-object v8

    const/4 v11, 0x4

    aget v8, v8, v11

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2007
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "eye_wide"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getEffectParams()[I

    move-result-object v8

    const/4 v11, 0x6

    aget v8, v8, v11

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2008
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "eye_vivi"

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getEffectParams()[I

    move-result-object v8

    const/4 v11, 0x5

    aget v8, v8, v11

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2011
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "selectRecIndex"

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2013
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v10

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceEffectBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceEffectBitmap(Landroid/graphics/Bitmap;)V

    .line 2014
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceBitmap(Landroid/graphics/Bitmap;)V

    .line 2016
    const/4 v2, 0x0

    .line 2017
    .local v2, "animStartX":I
    const/4 v3, 0x0

    .line 2018
    .local v3, "animStartY":I
    const/4 v0, 0x0

    .line 2019
    .local v0, "animScallX":F
    const/4 v1, 0x0

    .line 2021
    .local v1, "animScallY":F
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getScreenOrientation()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2023
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v9

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getScreenWidth()I

    move-result v9

    iget v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int v2, v8, v9

    .line 2024
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v9

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I

    add-int v3, v8, v9

    .line 2026
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    int-to-float v9, v9

    div-float v0, v8, v9

    .line 2027
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 2047
    :goto_2
    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartX:F

    .line 2048
    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentSStartY:F

    .line 2050
    iput v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartX:I

    .line 2051
    iput v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->currentTStartY:I

    .line 2053
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    invoke-static {v8, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/ViewAnimUtils;->startAnimationSet4CircleView(Landroid/view/View;FFII)V

    .line 2055
    sget-object v8, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    const-wide/16 v10, 0xfa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2056
    sget-object v8, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    const-wide/16 v10, 0xfa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2059
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->disablemShowEffectIgvew()V

    goto/16 :goto_0

    .line 2030
    :cond_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v8

    array-length v8, v8

    new-array v7, v8, [Landroid/graphics/Rect;

    .line 2031
    .local v7, "tmpRects":[Landroid/graphics/Rect;
    const/4 v5, 0x0

    :goto_3
    array-length v8, v7

    if-ge v5, v8, :cond_7

    .line 2032
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v9

    aget-object v9, v9, v5

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v10

    aget-object v10, v10, v5

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v11

    aget-object v11, v11, v5

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreenLand()[Landroid/graphics/Rect;

    move-result-object v12

    aget-object v12, v12, v5

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v7, v5

    .line 2031
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2039
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v8

    aget-object v8, v7, v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getScreenWidth()I

    move-result v9

    iget v10, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int v2, v8, v9

    .line 2040
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v8

    aget-object v8, v7, v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I

    add-int v3, v8, v9

    .line 2043
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v8

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 2044
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v8

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    int-to-float v9, v9

    div-float v0, v8, v9

    goto/16 :goto_2
.end method

.method private showLoadingProgressBar(Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x0

    .line 951
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setButtonClickable(Z[Landroid/widget/ImageButton;)V

    .line 952
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 953
    return-void
.end method

.method private showNotFoundFaceDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3123
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isWindowActive:Z

    if-nez v0, :cond_0

    .line 3124
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mNoFaceAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mNoFaceAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3125
    const-string v0, "WDY:FacePrettyActivity"

    const-string/jumbo v1, "showNotFoundFaceDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mNoFaceAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mNoFaceAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3133
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startMarqueeForJudgeGender(Z)V

    .line 3134
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3136
    new-array v0, v3, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->otherButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 3137
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->womanButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->manButton:Landroid/widget/ImageButton;

    aput-object v1, v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setImageButtonVisibility(Z[Landroid/widget/ImageButton;)V

    .line 3140
    return-void

    .line 3130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showOriginalImageIsDeletedDialog()V
    .locals 4

    .prologue
    .line 3099
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3100
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0855

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3101
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$7;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3109
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3111
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3112
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 3113
    return-void
.end method

.method private startDoOneFaceEffectArcSoftThread(Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;)V
    .locals 2
    .param p1, "mAutoPrettyParam"    # Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showLoadingProgressBar(Landroid/widget/ProgressBar;)V

    .line 2219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    if-nez v0, :cond_0

    .line 2220
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    .line 2221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;->AutoPrettyParam:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 2225
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    .line 2226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;->AutoPrettyParam:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    .line 2227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;->start()V

    .line 2230
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;->AutoPrettyParam:Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyParam;

    .line 2232
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllArcSoftEffectFaceThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllArcSoftEffectFaceThread;->start()V

    .line 2235
    :cond_2
    return-void
.end method

.method private startDoOneFaceEffectThread([I)V
    .locals 2
    .param p1, "param"    # [I

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showLoadingProgressBar(Landroid/widget/ProgressBar;)V

    .line 2239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    if-nez v0, :cond_0

    .line 2240
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    .line 2241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->param:[I

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 2245
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    .line 2246
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->param:[I

    .line 2247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->start()V

    .line 2250
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    iput-object p1, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->param:[I

    .line 2252
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;->start()V

    .line 2255
    :cond_2
    return-void
.end method

.method private startEffectThread()V
    .locals 2

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    if-nez v0, :cond_0

    .line 2458
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    .line 2460
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 2461
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    .line 2462
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;->start()V

    .line 2468
    :cond_1
    :goto_0
    return-void

    .line 2464
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2465
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$EffectThread;->start()V

    goto :goto_0
.end method

.method private startFacePretty()V
    .locals 5

    .prologue
    .line 2478
    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2481
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSingleFaceEffectParamArray()[I

    move-result-object v3

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 2483
    .local v1, "face_effect_param_array":[I
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSingleFaceEffectFaceRect()[I

    move-result-object v3

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 2485
    .local v2, "relativeFaceRect":[I
    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->checkAndUpdateCommList([I[I)V

    .line 2487
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 2488
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 2489
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2490
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2491
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    .line 2496
    :cond_0
    sget-boolean v3, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v3, :cond_1

    .line 2497
    new-instance v0, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;-><init>()V

    .line 2499
    .local v0, "changedParam":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmEyeEnlargmentLevel(I)V

    .line 2500
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSlenderFaceLevel(I)V

    .line 2501
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinBrightLevel(I)V

    .line 2502
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinSoftenLevel(I)V

    .line 2503
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->creatFaceEffectBitmap(Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    .line 2506
    .end local v0    # "changedParam":Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;
    :cond_1
    sget-object v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2507
    return-void
.end method

.method private startFacePrettyForOnePersion(I[I)V
    .locals 8
    .param p1, "faceID"    # I
    .param p2, "effectParam"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3486
    const/4 v4, 0x4

    new-array v3, v4, [I

    .line 3487
    .local v3, "relativeFaceRect":[I
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v5

    aget-object v5, v5, p1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aput v5, v3, v4

    .line 3488
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v4

    aget-object v4, v4, p1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    aput v4, v3, v7

    .line 3489
    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v5

    aget-object v5, v5, p1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aput v5, v3, v4

    .line 3490
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v5

    aget-object v5, v5, p1

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aput v5, v3, v4

    .line 3492
    invoke-direct {p0, p2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->checkAndUpdateCommList([I[I)V

    .line 3495
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 3496
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 3497
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3498
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 3499
    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    .line 3504
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3505
    .local v0, "basebitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 3506
    .local v1, "effectBitmapTMP":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3507
    :cond_1
    sget-object v4, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3534
    :goto_0
    return-void

    .line 3510
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3515
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3516
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setEffectBitmap(Landroid/graphics/Bitmap;)V

    .line 3519
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v5, p1, v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceBitmap(Landroid/graphics/Bitmap;)V

    .line 3522
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v5, p1, v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceEffectBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setFacePrettyBitmap(Landroid/graphics/Bitmap;)V

    .line 3524
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v5, p1, v6}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setBgBitmap(Landroid/graphics/Bitmap;)V

    .line 3525
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v5

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setMfaceRect(Landroid/graphics/Rect;)V

    .line 3526
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->doinvalidate()V

    .line 3528
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 3529
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v2, Landroid/os/Message;->what:I

    .line 3530
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 3531
    sget-object v4, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private startFindFaceAndJudgeGender()V
    .locals 2

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showLoadingProgressBar(Landroid/widget/ProgressBar;)V

    .line 2202
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    if-nez v0, :cond_0

    .line 2203
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2

    .line 2206
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    .line 2207
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->start()V

    .line 2214
    :cond_1
    :goto_0
    return-void

    .line 2209
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFindFaceJudgeGenderThread:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$FindFaceAndJudgeGenderThread;->start()V

    goto :goto_0
.end method

.method private startMarqueeForJudgeGender(Z)V
    .locals 2
    .param p1, "startOrNot"    # Z

    .prologue
    .line 2182
    if-eqz p1, :cond_0

    .line 2183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->marquue_isrunning:Z

    .line 2184
    const-string v0, "WDY:FacePrettyActivity"

    const-string/jumbo v1, "marqueeSelector START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2191
    :goto_0
    return-void

    .line 2187
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->marquue_isrunning:Z

    .line 2188
    const-string v0, "WDY:FacePrettyActivity"

    const-string/jumbo v1, "marqueeSelector STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    sget-object v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->loopDoHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateAllParamPreference()V
    .locals 5

    .prologue
    .line 1419
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectedFaceID()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getHaveStoredEffectLevels(I)[I

    move-result-object v1

    .line 1421
    .local v1, "effectleves":[I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "face_white"

    const/4 v4, 0x2

    aget v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 1422
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "face_small"

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 1423
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "eye_vivi"

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    .line 1424
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "eye_wide"

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->putIntToPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    .end local v1    # "effectleves":[I
    :goto_0
    return-void

    .line 1425
    :catch_0
    move-exception v0

    .line 1427
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FacePrettyActivity"

    const-string v3, "for arcsoft"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEffectParamPreference()V
    .locals 9

    .prologue
    const v7, 0x7f0f0895

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1441
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getMyRotate()F

    move-result v1

    .line 1442
    .local v1, "rorationValue":F
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->rotationToSeekbarValue(F)I

    move-result v0

    .line 1444
    .local v0, "lastProgress":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectWhatKey()Ljava/lang/String;

    move-result-object v2

    .line 1445
    .local v2, "select_Key":Ljava/lang/String;
    const-string v3, "eye_wide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1446
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "eye_wide"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1447
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v6, [Ljava/lang/Object;

    mul-int/lit8 v6, v0, 0x64

    div-int/lit16 v6, v6, 0xb4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v7, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    const-string v3, "face_white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1449
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "face_white"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1450
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0894

    new-array v6, v6, [Ljava/lang/Object;

    mul-int/lit8 v7, v0, 0x64

    div-int/lit16 v7, v7, 0xb4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1451
    :cond_2
    const-string v3, "face_small"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1452
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "face_small"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1453
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v6, [Ljava/lang/Object;

    mul-int/lit8 v6, v0, 0x64

    div-int/lit16 v6, v6, 0xb4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v7, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1454
    :cond_3
    const-string v3, "eye_vivi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1455
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "eye_vivi"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1456
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0892

    new-array v6, v6, [Ljava/lang/Object;

    mul-int/lit8 v7, v0, 0x64

    div-int/lit16 v7, v7, 0xb4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateEffectParamPreference(I)V
    .locals 8
    .param p1, "lastProgress"    # I

    .prologue
    const v6, 0x7f0f0895

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1470
    int-to-float v2, p1

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->float2IntByLow(F)I

    move-result v1

    .line 1472
    .local v1, "value":I
    const-string v2, "Seekbar progress: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-string/jumbo v2, "updateEffectParamPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " value is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectWhatKey()Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, "select_Key":Ljava/lang/String;
    const-string v2, "eye_wide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1479
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v2, :cond_0

    .line 1480
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmEyeEnlargmentLevel(I)V

    .line 1483
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "eye_wide"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1484
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v6, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    :cond_1
    :goto_0
    return-void

    .line 1485
    :cond_2
    const-string v2, "face_white"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1487
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v2, :cond_3

    .line 1488
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinBrightLevel(I)V

    .line 1491
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "face_white"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1492
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f0894

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1493
    :cond_4
    const-string v2, "face_small"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1494
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v2, :cond_5

    .line 1495
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSlenderFaceLevel(I)V

    .line 1498
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "face_small"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1499
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v6, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1500
    :cond_6
    const-string v2, "eye_vivi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1502
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v2, :cond_7

    .line 1503
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->setmSkinSoftenLevel(I)V

    .line 1506
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "eye_vivi"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1507
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f0892

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updatePersent()V
    .locals 9

    .prologue
    const v7, 0x7f0f0895

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1521
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArchSeekBar:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getMyRotate()F

    move-result v1

    .line 1522
    .local v1, "rorationValue":F
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->rotationToSeekbarValue(F)I

    move-result v0

    .line 1523
    .local v0, "lastProgress":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectWhatKey()Ljava/lang/String;

    move-result-object v2

    .line 1525
    .local v2, "select_Key":Ljava/lang/String;
    const-string v3, "eye_wide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1526
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v6, [Ljava/lang/Object;

    mul-int/lit8 v6, v0, 0x64

    div-int/lit16 v6, v6, 0xb4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v7, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v5, v0, 0x64

    div-int/lit16 v5, v5, 0xb4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    return-void

    .line 1527
    :cond_1
    const-string v3, "face_white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1528
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0894

    new-array v6, v6, [Ljava/lang/Object;

    mul-int/lit8 v7, v0, 0x64

    div-int/lit16 v7, v7, 0xb4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1529
    :cond_2
    const-string v3, "face_small"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1530
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v6, [Ljava/lang/Object;

    mul-int/lit8 v6, v0, 0x64

    div-int/lit16 v6, v6, 0xb4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v7, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1531
    :cond_3
    const-string v3, "eye_vivi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1532
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0892

    new-array v6, v6, [Ljava/lang/Object;

    mul-int/lit8 v7, v0, 0x64

    div-int/lit16 v7, v7, 0xb4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updatePersent(I)V
    .locals 9
    .param p1, "lastProgress"    # I

    .prologue
    const v8, 0x7f0f0894

    const v7, 0x7f0f0892

    const v6, 0x7f0f0895

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1548
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectWhatKey()Ljava/lang/String;

    move-result-object v0

    .line 1549
    .local v0, "select_Key":Ljava/lang/String;
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v1, :cond_4

    .line 1550
    const-string v1, "eye_wide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1551
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmEyeEnlargmentLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1577
    return-void

    .line 1553
    :cond_1
    const-string v1, "face_white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1554
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getMlSkinBrightLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v8, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1555
    :cond_2
    const-string v1, "face_small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1556
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSlenderFaceLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1558
    :cond_3
    const-string v1, "eye_vivi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSelectedFaceParam:Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;->getmSkinSoftenLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1563
    :cond_4
    const-string v1, "eye_wide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1564
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentLargeTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1565
    :cond_5
    const-string v1, "face_white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1566
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentWhiTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v8, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1567
    :cond_6
    const-string v1, "face_small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1568
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentSmallTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1569
    :cond_7
    const-string v1, "eye_vivi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->persentViviTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateSeekBarProgress(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 1061
    const-string v0, "eye_wide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSeekBarProgress(I)V

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    const-string v0, "face_white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1064
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSeekBarProgress(I)V

    goto :goto_0

    .line 1065
    :cond_2
    const-string v0, "face_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1066
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSeekBarProgress(I)V

    goto :goto_0

    .line 1067
    :cond_3
    const-string v0, "eye_vivi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setSeekBarProgress(I)V

    goto :goto_0
.end method

.method private updateSelectWhatKey(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rotationValue"    # F

    .prologue
    .line 1048
    const-string v0, "eye_wide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enlargeEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgress(F)V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    const-string v0, "face_white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->whiteFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgress(F)V

    goto :goto_0

    .line 1052
    :cond_2
    const-string v0, "face_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->smallFaceCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgress(F)V

    goto :goto_0

    .line 1054
    :cond_3
    const-string v0, "eye_vivi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->vividEyeCView:Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/CircleProgressView;->setProgress(F)V

    goto :goto_0
.end method


# virtual methods
.method public calcuteRelativeFaceRectInBaseBitmap(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 6
    .param p1, "mBaseBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "faceRectInBaseBmp"    # [Landroid/graphics/Rect;

    .prologue
    .line 1919
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1920
    .local v1, "bitmapW":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1922
    .local v0, "bitmapH":I
    array-length v5, p2

    new-array v4, v5, [Landroid/graphics/Rect;

    .line 1924
    .local v4, "resultRects":[Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 1925
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1926
    .local v3, "relative":Landroid/graphics/Rect;
    aget-object v5, p2, v2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v1

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 1927
    aget-object v5, p2, v2

    iget v5, v5, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 1928
    aget-object v5, p2, v2

    iget v5, v5, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v1

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 1929
    aget-object v5, p2, v2

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v0

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1931
    aput-object v3, v4, v2

    .line 1924
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1934
    .end local v3    # "relative":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {v4}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/Rect;

    return-object v5
.end method

.method public createUpdateUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 437
    const/4 v2, 0x0

    .line 439
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 441
    invoke-static {v2, p0}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getRealPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "mOriginalBitmapPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    check-cast v3, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    iput-object v1, v3, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1    # "mOriginalBitmapPath":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    .line 453
    :cond_0
    return-object v2

    .line 444
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    goto :goto_0
.end method

.method public doFacePrettyWithFaceID(ILcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;)V
    .locals 4
    .param p1, "faceID"    # I
    .param p2, "mParam"    # Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;

    .prologue
    const/4 v3, 0x0

    .line 3539
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 3540
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 3541
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3542
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3543
    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    .line 3547
    :cond_0
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v1, :cond_1

    .line 3548
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v1, p2, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->creatFaceEffectBitmap(Lcom/lenovo/scg/gallery3d/picPostProcess/FlasslessParam;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    .line 3551
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3552
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mEffectBitmapTmep:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setEffectBitmap(Landroid/graphics/Bitmap;)V

    .line 3555
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowFaceCircleView:Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ShowFaceCircleView;->setFaceBitmap(Landroid/graphics/Bitmap;)V

    .line 3558
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceEffectBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setFacePrettyBitmap(Landroid/graphics/Bitmap;)V

    .line 3560
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->getSelectFaceBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setBgBitmap(Landroid/graphics/Bitmap;)V

    .line 3561
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFaceRectsOnScreen()[Landroid/graphics/Rect;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->setMfaceRect(Landroid/graphics/Rect;)V

    .line 3562
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mScanView:Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ScanCircleView;->doinvalidate()V

    .line 3564
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3565
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3566
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3567
    sget-object v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3569
    return-void
.end method

.method public drawEffectBitmapToScreen()V
    .locals 1

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->drawBaseBitmapToScreen()V

    .line 3706
    return-void
.end method

.method public getBaseBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3711
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getEffectBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3717
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHaveStoredEffectLevels(I)[I
    .locals 6
    .param p1, "faceID"    # I

    .prologue
    .line 3576
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getEye_vivi()I

    move-result v1

    .line 3577
    .local v1, "eyevivi":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getEye_wide()I

    move-result v2

    .line 3578
    .local v2, "eyewide":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getFace_white()I

    move-result v4

    .line 3579
    .local v4, "facewhite":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSingleCommands:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;->getFace_small()I

    move-result v3

    .line 3581
    .local v3, "facesmall":I
    const/4 v5, 0x4

    new-array v0, v5, [I

    .line 3582
    .local v0, "effectLevels":[I
    const/4 v5, 0x0

    aput v1, v0, v5

    .line 3583
    const/4 v5, 0x1

    aput v2, v0, v5

    .line 3584
    const/4 v5, 0x2

    aput v4, v0, v5

    .line 3585
    const/4 v5, 0x3

    aput v3, v0, v5

    .line 3586
    return-object v0
.end method

.method public hideCourseView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 3867
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSmallView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3868
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSmallView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3870
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3871
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3874
    :cond_1
    return-void
.end method

.method public initEffectEngine()V
    .locals 0

    .prologue
    .line 3651
    return-void
.end method

.method public initFeilds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3253
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    .line 3255
    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRectUitls:Lcom/lenovo/scg/gallery3d/facepretty/utils/RectUitls;

    .line 3257
    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFaceCircleViewTouchListener:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$OnFaceCircleViewTouchListener;

    .line 3259
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 3261
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    if-nez v1, :cond_0

    .line 3262
    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mAutoCreateAllEffectFaceThreat:Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$AutoCreateAllEffectFaceThreat;

    .line 3265
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mGenderList:Ljava/util/List;

    .line 3268
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    .line 3270
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_from_goldbox"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setIs_from_goldbox(Z)V

    .line 3271
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFromGoldbox()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3272
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->recycleBaseBitmap()V

    .line 3275
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 3277
    const v1, 0x7f09043b

    invoke-virtual {p0, p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getCircleSize(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    .line 3279
    iget v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->offset:F

    .line 3282
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarController;->FILTERSTACKINDEX:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFilterStackIndex:I

    .line 3286
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFromGoldbox()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3287
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFilterStackIndex:I

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getCurrentBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setBaseBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3293
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isHaveReadCourse"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setHaveReadCourse(Z)V

    .line 3295
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PHOTO_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->path:Ljava/lang/String;

    .line 3297
    const-string v1, "BoxControl_DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BoxControl Extra is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-direct {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->effectUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 3301
    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 3303
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->initpicPostProcess()V

    .line 3305
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mNoFaceAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_4

    .line 3307
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3308
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f0870

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3309
    const v1, 0x7f0f0a14

    new-instance v2, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$8;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3319
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mNoFaceAlertDialog:Landroid/app/AlertDialog;

    .line 3325
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    new-instance v1, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mCircleProgressViewClickListener:Lcom/lenovo/scg/gallery3d/facepretty/views/OnCircleProgressViewClickListener;

    .line 3461
    return-void

    .line 3290
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isHaveReadCourse()Z
    .locals 1

    .prologue
    .line 3721
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 3600
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3602
    const/16 v2, 0x2330

    if-eq p2, v2, :cond_1

    .line 3635
    :cond_0
    :goto_0
    return-void

    .line 3606
    :cond_1
    const v2, -0xeffffff

    if-ne v2, p1, :cond_0

    .line 3607
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3608
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->path:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 3609
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    .line 3611
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->createUpdateUri()Landroid/net/Uri;

    move-result-object v1

    .line 3612
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->openPhotoFromUri(Landroid/net/Uri;)V

    .line 3630
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getFacePrettyPref()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isHaveReadCourse"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3632
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setHaveReadCourse(Z)V

    goto :goto_0

    .line 3614
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3616
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;

    const v3, 0x7f0f086e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3618
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->drawEffectBitmapToScreen()V

    .line 3619
    const/4 v0, 0x1

    .line 3620
    .local v0, "debugtmp":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveGenderLib()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    .line 3621
    :cond_6
    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startMarqueeForJudgeGender(Z)V

    .line 3627
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFindFaceAndJudgeGender()V

    goto :goto_1

    .line 3623
    :cond_7
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startMarqueeForJudgeGender(Z)V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 824
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z

    if-eqz v2, :cond_1

    .line 826
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->bottomBannerLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 827
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->circleIsShowew:Z

    .line 829
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showEffectImageViewMask(Z)V

    .line 830
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setCircleProgressViewUnSelected()V

    .line 832
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisiableEffectButtons()V

    .line 834
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->saveAllEffectBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 835
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->cancleAllEffectBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 836
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onePersionCancleButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->invisibleView(Landroid/view/View;)V

    .line 837
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->enablemShowEffectIgvew()V

    .line 838
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->toRight_RotateButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->visiableView(Landroid/view/View;)V

    .line 840
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 841
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 843
    const v2, 0x7f1004c0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 844
    .local v0, "mLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 845
    const v2, 0x7f1004c5

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 846
    .local v1, "mLayout2":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 847
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->oneBigTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 848
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 849
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 851
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleAuto:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mTitleManual:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftCommand:Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setCommand(Lcom/lenovo/scg/gallery3d/facepretty/utils/ArcSoftSingleCommand;)V

    .line 879
    .end local v0    # "mLayout":Landroid/widget/LinearLayout;
    .end local v1    # "mLayout2":Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 859
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 860
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z

    if-eqz v2, :cond_2

    .line 861
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    const v3, 0x7f0207bf

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 862
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z

    goto :goto_0

    .line 864
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    const v3, 0x7f0207c0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 865
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFirst:Z

    goto :goto_0

    .line 868
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->getEffectFaceBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    .line 869
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setResult(ILandroid/content/Intent;)V

    .line 871
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->relaseAllBitmap()V

    .line 872
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    goto :goto_0

    .line 874
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showCancleConformDialog()V

    goto :goto_0
.end method

.method public onCalComplete([Landroid/graphics/Rect;[Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "result"    # [Landroid/graphics/Rect;
    .param p2, "rectsLand"    # [Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 3681
    if-eqz p1, :cond_0

    .line 3682
    array-length v2, p1

    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreen:[Landroid/graphics/Rect;

    .line 3683
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3684
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreen:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v2, v1

    .line 3683
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3688
    .end local v1    # "j":I
    :cond_0
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreen:[Landroid/graphics/Rect;

    .line 3691
    :cond_1
    if-eqz p2, :cond_2

    .line 3692
    array-length v2, p2

    new-array v2, v2, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreenLand:[Landroid/graphics/Rect;

    .line 3693
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 3694
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreenLand:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v2, v0

    .line 3693
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3697
    .end local v0    # "i":I
    :cond_2
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->faceRectsOnScreenLand:[Landroid/graphics/Rect;

    .line 3699
    :cond_3
    sget-object v2, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mHandler:Landroid/os/Handler;

    const/high16 v3, -0x10000000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3700
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 401
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 402
    const-string v1, "START_TIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FacePrettyActivity onCreate 001 \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const v1, 0x7f0400ac

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setContentView(I)V

    .line 404
    const-string v1, "START_TIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FacePrettyActivity onCreate 002 \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const v1, 0x7f100483

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 409
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->initFacePrettyUIViews()V

    .line 410
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->calTopBomBannerHeight()V

    .line 411
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->creatActionListener()V

    .line 412
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isNeedCourse:Z

    if-eqz v1, :cond_3

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->path:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->finish()V

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->createUpdateUri()Landroid/net/Uri;

    move-result-object v0

    .line 418
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "BoxControl_DEBUG"

    const-string v2, "getBaseBitmap() == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v2, "BoxControl_DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri is  : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->openPhotoFromUri(Landroid/net/Uri;)V

    .line 426
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->setActionListener()V

    .line 427
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->initHandler()V

    .line 428
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->initLoopDoHandler()V

    .line 430
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 431
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->genderChangeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 433
    const-string v1, "START_TIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FacePrettyActivity onCreate 003 \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 419
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 422
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v1, "BoxControl_DEBUG"

    const-string v2, "getBaseBitmap() != null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2092
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;->onDestroy()V

    .line 2093
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isWindowActive:Z

    .line 2097
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->setisNeedRotate(Z)V

    .line 2098
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mShowEffectIgvew:Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/EffectImageView;->recycleMaskBitmap()V

    .line 2099
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->relaseAllBitmap()V

    .line 2102
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->uninitpicPostProcess()V

    .line 2104
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isFromGoldbox()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2107
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->recycleBaseBitmap()V

    .line 2109
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mFilterStackIndex:I

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getCurrentBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2110
    .local v0, "mCurrentBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2111
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2112
    const/4 v0, 0x0

    .line 2113
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2115
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2123
    .end local v0    # "mCurrentBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 2118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 935
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;->onPause()V

    .line 936
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isWindowActive:Z

    .line 939
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 940
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 3657
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSelectWhatKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateSeekBarProgress(Ljava/lang/String;I)V

    .line 3658
    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updatePersent(I)V

    .line 3659
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2128
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;->onResume()V

    .line 2129
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 2131
    const-string v4, "START_TIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FacePrettyActivity onResume \uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isWindowActive:Z

    .line 2135
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    check-cast v4, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;

    iget-object v3, v4, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->mCurrentImagePath:Ljava/lang/String;

    .line 2136
    .local v3, "mOriginalBitmapPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2137
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2138
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2139
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2140
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showOriginalImageIsDeletedDialog()V

    .line 2144
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isNeedCourse:Z

    if-eqz v4, :cond_6

    .line 2145
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2147
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getRelativeRects()[Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_4

    .line 2151
    sget-boolean v4, Lcom/lenovo/scg/gallery3d/facepretty/data/FacePrettyStatic;->isForArcSoft:Z

    if-eqz v4, :cond_2

    .line 2152
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mArcSoftUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getBaseBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;->setPicPostSrcBitmap(Landroid/graphics/Bitmap;)V

    .line 2156
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;

    const v5, 0x7f0f086e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2159
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->drawEffectBitmapToScreen()V

    .line 2160
    const/4 v0, 0x1

    .line 2161
    .local v0, "debugtmp":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveGenderLib()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_5

    .line 2162
    :cond_3
    invoke-direct {p0, v8}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startMarqueeForJudgeGender(Z)V

    .line 2169
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startFindFaceAndJudgeGender()V

    .line 2178
    .end local v0    # "debugtmp":Z
    :cond_4
    :goto_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 2179
    return-void

    .line 2164
    .restart local v0    # "debugtmp":Z
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startMarqueeForJudgeGender(Z)V

    goto :goto_0

    .line 2174
    .end local v0    # "debugtmp":Z
    :cond_6
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mContext:Landroid/content/Context;

    const-class v5, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyCourseActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2175
    .local v2, "intent":Landroid/content/Intent;
    const v4, -0xeffffff

    invoke-virtual {p0, v2, v4}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2326
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/AbstractFacePrettyActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2327
    const-string v0, "WDY:FacePrettyActivity"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3665
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 3670
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateAllParamPreference()V

    .line 3671
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->updateEffectParamPreference(I)V

    .line 3672
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->startEffectThread()V

    .line 3674
    return-void
.end method

.method public openPhotoFromUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "mUri"    # Landroid/net/Uri;

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->showLoadingProgressBar(Landroid/widget/ProgressBar;)V

    .line 3468
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->msgTextView:Landroid/widget/TextView;

    const v1, 0x7f0f087a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3469
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mLoadScreenNailTask:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;

    if-nez v0, :cond_0

    .line 3470
    new-instance v0, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->onCreateBitmapComplete:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mLoadScreenNailTask:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;

    .line 3472
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mLoadScreenNailTask:Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3473
    return-void
.end method

.method public setBaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "baseBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setBaseBitmap(Landroid/graphics/Bitmap;)V

    .line 3642
    return-void
.end method

.method public setEffectBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "mEffectBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mBitmapData:Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/utils/BitmapData;->setEffectBitmap(Landroid/graphics/Bitmap;)V

    .line 3646
    return-void
.end method

.method public setHaveReadCourse(Z)V
    .locals 0
    .param p1, "isHaveReadCourse"    # Z

    .prologue
    .line 3725
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isHaveReadCourse:Z

    .line 3726
    return-void
.end method

.method public setViewPosition(Landroid/graphics/Rect;)V
    .locals 21
    .param p1, "mRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3739
    const-string/jumbo v17, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 3740
    .local v16, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 3741
    .local v4, "display":Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 3742
    .local v11, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3743
    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    div-int/lit8 v5, v17, 0x2

    .line 3744
    .local v5, "mCenterX":I
    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    div-int/lit8 v6, v17, 0x2

    .line 3745
    .local v6, "mCenterY":I
    const/4 v14, 0x0

    .line 3746
    .local v14, "smallView":Landroid/view/View;
    const/4 v8, 0x0

    .line 3748
    .local v8, "mainView":Landroid/view/View;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3749
    .local v13, "smallParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3751
    .local v9, "mainViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09041e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 3752
    .local v15, "smallW":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09041f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 3754
    .local v12, "smallH":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090420

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 3755
    .local v10, "mainW":I
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090421

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v7, v0

    .line 3756
    .local v7, "mainH":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v5, :cond_3

    .line 3758
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v6, :cond_1

    .line 3760
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v5, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 3762
    const v17, 0x7f1004a6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3763
    const v17, 0x7f1004a8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 3765
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    div-int/lit8 v19, v12, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3767
    const/16 v17, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3768
    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    div-int/lit8 v19, v12, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3851
    :goto_0
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3852
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v8

    .line 3859
    check-cast v17, Landroid/widget/Button;

    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/Button;)V

    .line 3861
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mSmallView:Landroid/view/View;

    .line 3862
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->mMainView:Landroid/view/View;

    .line 3864
    return-void

    .line 3771
    :cond_0
    const v17, 0x7f1004a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3772
    const v17, 0x7f1004a4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 3774
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3776
    const/16 v17, 0x3

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3777
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v10, 0x2

    sub-int v17, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 3781
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v5, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    .line 3783
    const v17, 0x7f1004a6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3784
    const v17, 0x7f1004a8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 3786
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->topBannerHeight:I

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v19

    add-int v18, v18, v19

    div-int/lit8 v19, v12, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3788
    const/16 v17, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3789
    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    div-int/lit8 v19, v12, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 3792
    :cond_2
    const v17, 0x7f1004a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3793
    const v17, 0x7f1004a5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 3795
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v12

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3798
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v10, 0x2

    sub-int v17, v17, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v12

    sub-int v18, v18, v7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 3804
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    move/from16 v0, v17

    if-gt v0, v6, :cond_5

    .line 3806
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v5, 0x2

    add-int v18, v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 3808
    const v17, 0x7f1004a6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3809
    const v17, 0x7f1004a9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 3811
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    mul-int/lit8 v18, v12, 0x2

    sub-int v17, v17, v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    div-int/lit8 v19, v15, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3814
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v12

    sub-int v17, v17, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    div-int/lit8 v19, v10, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 3817
    :cond_4
    const v17, 0x7f1004a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3818
    const v17, 0x7f1004a4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 3820
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v12, 0x2

    sub-int v17, v17, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3822
    const/16 v17, 0x3

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3823
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v10, 0x2

    sub-int v17, v17, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 3828
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v5, 0x2

    add-int v18, v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 3830
    const v17, 0x7f1004a6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3831
    const v17, 0x7f1004a9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 3833
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    div-int/lit8 v19, v15, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3835
    const/16 v17, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3836
    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    div-int/lit8 v19, v10, 0x2

    sub-int v18, v18, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 3839
    :cond_6
    const v17, 0x7f1004a7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 3840
    const v17, 0x7f1004a5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 3842
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v12

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3845
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v10, 0x2

    sub-int v17, v17, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v12

    sub-int v18, v18, v7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method

.method public showCancleConformDialog()V
    .locals 4

    .prologue
    .line 903
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->isWindowActive:Z

    if-eqz v2, :cond_0

    .line 905
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0080

    invoke-direct {v0, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 907
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f0a13

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 908
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 919
    const v2, 0x7f0f0663

    new-instance v3, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$4;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/FacePrettyActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 925
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 927
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 928
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 930
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "mAlertDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method
