.class public Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;
.super Landroid/widget/LinearLayout;
.source "PhotoFunctionPanel.java"


# static fields
.field private static final BLINK_SPEC_ANIMATION_DURATION:I = 0xe10

.field private static final HIGH_LIGHT_TEXT_COLOR:Ljava/lang/String; = "#25c6ff"

.field private static final NORMAL_TEXT_COLOR:Ljava/lang/String; = "#FFFFFF"


# instance fields
.field private final ENABLEALLBUTTONS:I

.field private final REMOVEBLINKSPEC:I

.field private final REMOVEGESYURESPEC:I

.field private final TAG:Ljava/lang/String;

.field private mBlinkButton:Landroid/widget/TextView;

.field mBlinkOffCommand:Lcom/lenovo/scg/camera/command/Command;

.field mBlinkOnCommand:Lcom/lenovo/scg/camera/command/Command;

.field private mBlinkSpec:Landroid/widget/RelativeLayout;

.field private mBlinkSpecAni:Landroid/widget/ImageView;

.field private mBlinkSpecAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mDelay3sButton:Landroid/widget/TextView;

.field mDelayOffCommand:Lcom/lenovo/scg/camera/command/Command;

.field mDelayOnCommand:Lcom/lenovo/scg/camera/command/Command;

.field private mFrontFunctionFadeInAnimation:Landroid/view/animation/Animation;

.field private mFrontFunctionFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

.field private mGestureButton:Landroid/widget/TextView;

.field mGestureOffCommand:Lcom/lenovo/scg/camera/command/Command;

.field mGestureOnCommand:Lcom/lenovo/scg/camera/command/Command;

.field private mGestureSpec:Landroid/widget/RelativeLayout;

.field private mGestureSpecHandFive:Landroid/widget/ImageView;

.field private mPhotoFunctionPanelContent:Landroid/widget/LinearLayout;

.field mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

.field private mTip:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mTouchButton:Landroid/widget/TextView;

.field mTouchOffCommand:Lcom/lenovo/scg/camera/command/Command;

.field mTouchOnCommand:Lcom/lenovo/scg/camera/command/Command;

.field private mVoiceButton:Landroid/widget/TextView;

.field mVoiceOffCommand:Lcom/lenovo/scg/camera/command/Command;

.field mVoiceOnCommand:Lcom/lenovo/scg/camera/command/Command;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const-string v0, "PhotoFunctionPanel"

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->TAG:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->ENABLEALLBUTTONS:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->REMOVEBLINKSPEC:I

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->REMOVEGESYURESPEC:I

    .line 90
    new-instance v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$1;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->myHandler:Landroid/os/Handler;

    .line 123
    const-string v0, "PhotoFunctionPanel"

    const-string v1, "PhotoFunctionPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionDelayOnCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionDelayOnCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelayOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 128
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionDelayOffCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionDelayOffCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelayOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 129
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionTouchOnCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionTouchOnCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 130
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionTouchOffCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionTouchOffCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 131
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionVoiceOnCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionVoiceOnCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 132
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionVoiceOffCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionVoiceOffCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 133
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionBlinkOnCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionBlinkOnCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 134
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionBlinkOffCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionBlinkOffCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 135
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionGestureOnCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionGestureOnCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 136
    new-instance v0, Lcom/lenovo/scg/camera/command/PhotoFunctionGestureOffCommand;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/command/PhotoFunctionGestureOffCommand;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/front/FrontView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateBntLayout4Row(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/TextView;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    :cond_0
    return-void
.end method


# virtual methods
.method public changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 4
    .param p1, "button"    # Landroid/widget/TextView;
    .param p2, "drawableId"    # I
    .param p3, "color"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 416
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 419
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoFunctionPanelContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontFunctionFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 459
    :cond_0
    return-void
.end method

.method public initBlinkButton()V
    .locals 3

    .prologue
    .line 347
    const v0, 0x7f10057a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkButton:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 350
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isBlinkOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkButton:Landroid/widget/TextView;

    const v1, 0x7f0205eb

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$8;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkButton:Landroid/widget/TextView;

    const v1, 0x7f0205ea

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public initBlinkSpec()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 473
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v1

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 476
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    const v1, 0x7f100476

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpecAni:Landroid/widget/ImageView;

    .line 477
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpecAni:Landroid/widget/ImageView;

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 478
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpecAni:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpecAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$10;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpecAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 496
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 497
    return-void
.end method

.method public initDelay3sButton()V
    .locals 3

    .prologue
    .line 251
    const v0, 0x7f100577

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 254
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isDelayOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;

    const v1, 0x7f0205ee

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$5;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;

    const v1, 0x7f0205ed

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public initGestureButton()V
    .locals 3

    .prologue
    .line 377
    const v0, 0x7f10057b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 380
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isGestureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;

    const v1, 0x7f0205f1

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$9;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;

    const v1, 0x7f0205f0

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public initGestureSpec()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 516
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v1

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 519
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    const v1, 0x7f100479

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpecHandFive:Landroid/widget/ImageView;

    .line 520
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpecHandFive:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f05001a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 523
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$11;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$11;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 536
    return-void
.end method

.method public initTouchButton()V
    .locals 3

    .prologue
    .line 278
    const v0, 0x7f100578

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 281
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isTouchOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;

    const v1, 0x7f0205f9

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$6;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;

    const v1, 0x7f0205f8

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public initVoiceButton()V
    .locals 3

    .prologue
    .line 311
    const v0, 0x7f100579

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;

    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->updateBntLayout4Row(Landroid/widget/TextView;)V

    .line 314
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->isVoiceOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;

    const v1, 0x7f0205fc

    const-string v2, "#25c6ff"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$7;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;

    const v1, 0x7f0205fb

    const-string v2, "#FFFFFF"

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->changeButtonUI(Landroid/widget/TextView;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public isBlinkOpen()Z
    .locals 5

    .prologue
    .line 440
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_blink"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0027

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isDelayOpen()Z
    .locals 5

    .prologue
    .line 422
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_delay"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0024

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isGestureOpen()Z
    .locals 5

    .prologue
    .line 446
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_gesture"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0028

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isTouchOpen()Z
    .locals 5

    .prologue
    .line 428
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_touch"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0025

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isVoiceOpen()Z
    .locals 5

    .prologue
    .line 434
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_voice"

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0026

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 212
    const-string v0, "PhotoFunctionPanel"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initDelay3sButton()V

    .line 214
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initTouchButton()V

    .line 215
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initVoiceButton()V

    .line 216
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initBlinkButton()V

    .line 217
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->initGestureButton()V

    .line 221
    new-instance v0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$4;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 237
    const-string v0, "PhotoFunctionPanel"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelayOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 239
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelayOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 240
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 241
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 242
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 243
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 244
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 245
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 246
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureOnCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 247
    iput-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureOffCommand:Lcom/lenovo/scg/camera/command/Command;

    .line 248
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x12c

    .line 146
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 147
    const-string v0, "PhotoFunctionPanel"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const v0, 0x7f100576

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoFunctionPanelContent:Landroid/widget/LinearLayout;

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f05003f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontFunctionFadeInAnimation:Landroid/view/animation/Animation;

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontFunctionFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f050041

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontFunctionFadeOutAnimation:Landroid/view/animation/Animation;

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontFunctionFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontFunctionFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$2;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontFunctionFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel$3;-><init>(Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    return-void
.end method

.method public releaseBlinkSpec()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 500
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpecAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkSpec:Landroid/widget/RelativeLayout;

    .line 509
    :cond_1
    return-void
.end method

.method public releaseGestureSpec()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 539
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureSpec:Landroid/widget/RelativeLayout;

    .line 547
    :cond_1
    return-void
.end method

.method public setController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 2
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 140
    const-string v0, "PhotoFunctionPanel"

    const-string/jumbo v1, "setController"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 142
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 550
    rsub-int v1, p1, 0x168

    int-to-float v0, v1

    .line 551
    .local v0, "rotation":F
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mDelay3sButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 552
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTouchButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 553
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mVoiceButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 555
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mBlinkButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 556
    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mGestureButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setRotation(F)V

    .line 557
    return-void
.end method

.method public setParent(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0
    .param p1, "view"    # Lcom/lenovo/scg/camera/front/FrontView;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;

    .line 453
    return-void
.end method

.method public setPhotoModule(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 5
    .param p1, "pm"    # Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 117
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mTip:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 118
    return-void
.end method

.method public startAni()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mPhotoFunctionPanelContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/PhotoFunctionPanel;->mFrontFunctionFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 207
    return-void
.end method
