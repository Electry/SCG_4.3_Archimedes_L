.class public Lcom/lenovo/scg/camera/way/TimerUI;
.super Ljava/lang/Object;
.source "TimerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x258

.field private static final MSG_ANIM_END:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TimerUI"

.field public static final TIMER_ICON_IDS:[I

.field private static final TIMER_LEVEL_KEY:Ljava/lang/String; = "timer_level_key"

.field public static final TIMER_LEVEL_PANAL_ID:I = 0x3f2

.field private static final VIEW_HOLD_TIME:I = 0xc8

.field private static mTimerUi:Lcom/lenovo/scg/camera/way/TimerUI;


# instance fields
.field private hasAddTimerView:Z

.field private isLevelViewShow:Z

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mLevelLayout:Landroid/widget/LinearLayout;

.field private mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMarkedCameraId:I

.field private mMarkedOrientation:I

.field private mOrientation:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mTimerView:Landroid/widget/ImageView;

.field private mUIRootView:Landroid/widget/RelativeLayout;

.field private mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/way/TimerUI;->TIMER_ICON_IDS:[I

    .line 94
    new-instance v0, Lcom/lenovo/scg/camera/way/TimerUI;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/TimerUI;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerUi:Lcom/lenovo/scg/camera/way/TimerUI;

    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x0
        0x7f0203de
        0x7f0203e0
        0x7f0203e1
        0x7f0203e2
        0x7f0203e3
        0x7f0203e4
        0x7f0203e5
        0x7f0203e6
        0x7f0203e7
        0x7f0203df
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    .line 38
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->hasAddTimerView:Z

    .line 39
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->isLevelViewShow:Z

    .line 40
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 43
    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mOrientation:I

    .line 44
    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedOrientation:I

    .line 45
    iput v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedCameraId:I

    .line 46
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 48
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 50
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mDestroyed:Z

    .line 51
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mPreferences:Landroid/content/SharedPreferences;

    .line 74
    new-instance v0, Lcom/lenovo/scg/camera/way/TimerUI$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/TimerUI$1;-><init>(Lcom/lenovo/scg/camera/way/TimerUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mHandler:Landroid/os/Handler;

    .line 201
    new-instance v0, Lcom/lenovo/scg/camera/way/TimerUI$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/TimerUI$3;-><init>(Lcom/lenovo/scg/camera/way/TimerUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 500
    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    .line 513
    new-instance v0, Lcom/lenovo/scg/camera/way/TimerUI$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/TimerUI$4;-><init>(Lcom/lenovo/scg/camera/way/TimerUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mClickListener:Landroid/view/View$OnClickListener;

    .line 101
    const-string v0, "TimerUI"

    const-string v1, "TimerUI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/way/TimerUI;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/way/TimerUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->hasAddTimerView:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/way/TimerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->hasAddTimerView:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/way/TimerUI;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/TimerUI;->creatTimerView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/way/TimerUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/TimerUI;->initAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/TimerUI;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method private creatTimerView(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const-string v4, "TimerUI"

    const-string v5, "creatTimerView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 169
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    .line 170
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 172
    :cond_0
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v1, v4, 0x2

    .line 173
    .local v1, "length":I
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v0, v4, 0x4

    .line 174
    .local v0, "left":I
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    sub-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    .line 175
    .local v3, "top":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v2, "mPara":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 177
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/way/TimerUI;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerUi:Lcom/lenovo/scg/camera/way/TimerUI;

    return-object v0
.end method

.method private getLevelPanal(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .locals 12
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 437
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_1

    .line 438
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v11, 0x7f0203ea

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 439
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v11, 0x7f0203ed

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 440
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v11, 0x7f0203e8

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 441
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    if-eqz v10, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/TimerUI;->getCurrentLevel()I

    move-result v6

    .line 443
    .local v6, "timer":I
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    invoke-interface {v10, v6}, Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;->setLevel(I)V

    .line 444
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/way/TimerUI;->updateLevelPanel(I)V

    .line 446
    .end local v6    # "timer":I
    :cond_0
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    .line 493
    :goto_0
    return-object v10

    .line 449
    :cond_1
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    .line 450
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 451
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setId(I)V

    .line 452
    sget v10, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v10, v10, 0x60

    div-int/lit16 v9, v10, 0x438

    .line 453
    .local v9, "w":I
    sget v10, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    mul-int/lit8 v10, v10, 0x3c

    div-int/lit16 v3, v10, 0x438

    .line 454
    .local v3, "left":I
    sget v10, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit16 v10, v10, 0x2bc

    div-int/lit16 v7, v10, 0x780

    .line 455
    .local v7, "top":I
    sget v10, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit8 v10, v10, 0xd

    div-int/lit16 v0, v10, 0x780

    .line 456
    .local v0, "edge":I
    sget v10, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit8 v10, v10, 0x46

    div-int/lit16 v8, v10, 0x780

    .line 457
    .local v8, "viewSzie":I
    move v2, v8

    .line 458
    .local v2, "interval":I
    sget v10, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit16 v10, v10, 0x178

    div-int/lit16 v1, v10, 0x780

    .line 459
    .local v1, "h":I
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 460
    .local v4, "mPara":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 461
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 462
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    const v11, 0x7f0203ee

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 464
    new-instance v10, Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-direct {v10, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 465
    new-instance v10, Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-direct {v10, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 466
    new-instance v10, Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-direct {v10, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 472
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v11, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v11, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget-object v11, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v11, 0x7f0203ea

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 478
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v11, 0x7f0203ed

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 479
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v11, 0x7f0203e8

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 480
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 481
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 482
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 483
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 484
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 485
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 486
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 487
    .local v5, "para":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 488
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "para":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 489
    .restart local v5    # "para":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 490
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5    # "para":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 491
    .restart local v5    # "para":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 493
    iget-object v10, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_0
.end method

.method private initAnimation()V
    .locals 10

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    .line 182
    const-string v3, "TimerUI"

    const-string v4, "initAnimation()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 190
    .local v0, "mScale":Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 193
    .local v9, "mAlpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 195
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 197
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 199
    return-void
.end method

.method private setTimerViewRotate(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->isLevelViewShow:Z

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 276
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 278
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 283
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 284
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 288
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 293
    :sswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setRotation(F)V

    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateLevelPanel(I)V
    .locals 2
    .param p1, "timer"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 387
    .local v0, "v":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 399
    return-void

    .line 389
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 390
    goto :goto_0

    .line 392
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 393
    goto :goto_0

    .line 395
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;

    goto :goto_0

    .line 387
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public destory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 238
    const-string v0, "TimerUI"

    const-string v1, "destory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    :cond_1
    iput v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mOrientation:I

    .line 246
    iput v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedOrientation:I

    .line 247
    iput v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedCameraId:I

    .line 248
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->hasAddTimerView:Z

    .line 249
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->isLevelViewShow:Z

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    .line 261
    :goto_0
    return-void

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 253
    iput-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 257
    iput-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    .line 259
    :cond_4
    iput-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mDestroyed:Z

    goto :goto_0
.end method

.method public getCurrentLevel()I
    .locals 5

    .prologue
    .line 554
    const-string v2, "TimerUI"

    const-string v3, "getCurrentLevel()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x5

    .line 556
    .local v0, "level":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 557
    const-string v2, "TimerUI"

    const-string v3, "getCurrentLevel(): mPreferences == null && return 5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 562
    .end local v0    # "level":I
    .local v1, "level":I
    :goto_0
    return v1

    .line 560
    .end local v1    # "level":I
    .restart local v0    # "level":I
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "timer_level_key"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 561
    const-string v2, "TimerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentLevel(): level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 562
    .end local v0    # "level":I
    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getLevelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mDestroyed:Z

    return v0
.end method

.method public removeLevelUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 418
    const-string v0, "TimerUI"

    const-string/jumbo v1, "removeLevelUI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->isLevelViewShow:Z

    if-nez v0, :cond_0

    .line 420
    const-string v0, "TimerUI"

    const-string/jumbo v1, "removeLevelUI(); !isLevelViewShow && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "TimerUI"

    const-string/jumbo v1, "removeLevelUI(): mRootView.removeView(mLevelLayout)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 427
    :cond_1
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->isLevelViewShow:Z

    .line 429
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public resetTimerView()V
    .locals 6

    .prologue
    .line 307
    const-string v3, "TimerUI"

    const-string/jumbo v4, "resetTimerView()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 309
    const-string v3, "TimerUI"

    const-string/jumbo v4, "resetTimerView() mTimerView == null && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return-void

    .line 312
    :cond_0
    iget v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedOrientation:I

    iget v4, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mOrientation:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedCameraId:I

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-ne v3, v4, :cond_1

    .line 314
    const-string v3, "TimerUI"

    const-string/jumbo v4, "resetTimerView() nothing need to do && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mOrientation:I

    iput v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedOrientation:I

    .line 319
    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    iput v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedCameraId:I

    .line 320
    const-string v3, "TimerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetTimerView(): mMarkedOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v3, "TimerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetTimerView(): mMarkedCameraId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedCameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 325
    .local v1, "mPara":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    div-int/lit8 v0, v3, 0x2

    .line 326
    .local v0, "length":I
    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    sub-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x2

    .line 327
    .local v2, "top":I
    iget v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedOrientation:I

    sparse-switch v3, :sswitch_data_0

    .line 346
    :goto_1
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 347
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 329
    :sswitch_0
    iget v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mMarkedCameraId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 330
    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v0, 0x4

    add-int v2, v3, v4

    .line 332
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 335
    :sswitch_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 338
    :sswitch_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 341
    :sswitch_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2
    .param p1, "ontext"    # Landroid/content/Context;

    .prologue
    .line 223
    const-string v0, "TimerUI"

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mDestroyed:Z

    .line 226
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isTimerShutterOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const-string v0, "TimerUI"

    const-string/jumbo v1, "onpenedWaysChanged(): Back camera and timer way opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 229
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "ontext":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/way/TimerUI;->showLevelUI(Landroid/app/Activity;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    .restart local p1    # "ontext":Landroid/content/Context;
    :cond_1
    const-string v0, "TimerUI"

    const-string/jumbo v1, "onpenedWaysChanged(): Front camera OR  timer way not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/TimerUI;->removeLevelUI()V

    goto :goto_0
.end method

.method public setLevelChangeListener(Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    .line 504
    return-void
.end method

.method public setLevelUiVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 547
    const-string v0, "TimerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLevelUiVisibility --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 264
    const-string v0, "TimerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation: orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iput p1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mOrientation:I

    .line 266
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/TimerUI;->setTimerViewRotate(I)V

    .line 267
    return-void
.end method

.method public setPrefrences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preference"    # Landroid/content/SharedPreferences;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mPreferences:Landroid/content/SharedPreferences;

    .line 508
    return-void
.end method

.method public showLevelUI(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 358
    const-string v1, "TimerUI"

    const-string/jumbo v2, "showLevelUI()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->isLevelViewShow:Z

    if-eqz v1, :cond_0

    .line 360
    const-string v1, "TimerUI"

    const-string/jumbo v2, "showLevelUI(); isLevelViewShow && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 364
    const v1, 0x7f10015a

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_2

    .line 367
    const-string v1, "TimerUI"

    const-string/jumbo v2, "showLevelUI() mRootView == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_2
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/TimerUI;->getLevelPanal(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    .line 371
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 372
    const-string v1, "TimerUI"

    const-string/jumbo v2, "showLevelUI(); mLevelLayout == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    if-eqz v1, :cond_4

    .line 377
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/TimerUI;->getCurrentLevel()I

    move-result v0

    .line 378
    .local v0, "timer":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;->setLevel(I)V

    .line 379
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/TimerUI;->updateLevelPanel(I)V

    .line 381
    .end local v0    # "timer":I
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->isLevelViewShow:Z

    .line 382
    iget v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mOrientation:I

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/TimerUI;->setTimerViewRotate(I)V

    goto :goto_0
.end method

.method public showTimerRemind(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # I

    .prologue
    .line 115
    const-string v0, "TimerUI"

    const-string/jumbo v1, "showTimerRemind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "TimerUI"

    const-string/jumbo v1, "showTimerRemind: mDestroyed && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-nez p1, :cond_2

    .line 121
    const-string v0, "TimerUI"

    const-string/jumbo v1, "showTimerRemind: context == null && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/lenovo/scg/camera/way/TimerUI$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/lenovo/scg/camera/way/TimerUI$2;-><init>(Lcom/lenovo/scg/camera/way/TimerUI;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateLevelPanel()V
    .locals 3

    .prologue
    .line 402
    const-string v1, "TimerUI"

    const-string/jumbo v2, "updateLevelPanel(): mLevelListener == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/TimerUI;->getCurrentLevel()I

    move-result v0

    .line 404
    .local v0, "timer":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;->setLevel(I)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string v1, "TimerUI"

    const-string/jumbo v2, "updateLevelPanel(): mLevelListener == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
