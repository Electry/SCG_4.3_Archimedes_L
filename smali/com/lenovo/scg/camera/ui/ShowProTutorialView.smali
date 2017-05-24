.class public Lcom/lenovo/scg/camera/ui/ShowProTutorialView;
.super Ljava/lang/Object;
.source "ShowProTutorialView.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "show_pro_tutorial"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mArrow:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mImageViewHand:Landroid/widget/ImageView;

.field private mIndicatorRoot:Landroid/widget/LinearLayout;

.field private mIndicators:[Landroid/widget/ImageView;

.field private mProTutorialInfo:Landroid/widget/TextView;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mRootView"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    .line 51
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->hiddenView()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mIndicatorRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private hiddenView()V
    .locals 3

    .prologue
    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mIndicatorRoot:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mIndicatorRoot:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_2
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->TAG:Ljava/lang/String;

    const-string v2, "hiddenView exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f1007b1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mIndicatorRoot:Landroid/widget/LinearLayout;

    .line 58
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mIndicatorRoot:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f1007b8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;

    .line 60
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f1007b2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mArrow:Landroid/widget/ImageView;

    .line 62
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f1007b9

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;

    .line 63
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v1

    .line 64
    .local v1, "isZh":Z
    if-nez v1, :cond_0

    .line 65
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 66
    .local v2, "scaleVal":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    div-float/2addr v4, v2

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 68
    .end local v2    # "scaleVal":F
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "isZh":Z
    :cond_1
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->TAG:Ljava/lang/String;

    const-string v4, "init ShowProTutorialView exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->hiddenView()V

    goto :goto_0
.end method

.method public static isFirstShow()Z
    .locals 5

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "value":Z
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, "preferences":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v3, "show_pro_tutorial"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 102
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->TAG:Ljava/lang/String;

    const-string v4, "isFirstShow exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public showProTutorialAnim()V
    .locals 10

    .prologue
    .line 110
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_1

    .line 111
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 112
    .local v4, "preferences":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_2

    .line 113
    const-string/jumbo v7, "show_pro_tutorial"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 114
    .local v5, "show":Z
    if-eqz v5, :cond_0

    .line 115
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 116
    .local v2, "hiddenAlphaAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 117
    const-wide/16 v8, 0x190

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 118
    new-instance v7, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$1;-><init>(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mProTutorialInfo:Landroid/widget/TextView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 148
    .local v6, "textInfoAlphaAnim2":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x384

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    const-wide/16 v8, 0x76c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 150
    new-instance v7, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$2;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$2;-><init>(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mImageViewHand:Landroid/widget/ImageView;

    const-string/jumbo v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 178
    .local v1, "handTranslateAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x320

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    const-wide/16 v8, 0x708

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 180
    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    new-instance v7, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$3;

    invoke-direct {v7, p0, v2}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$3;-><init>(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mContext:Landroid/content/Context;

    const v8, 0x7f05002b

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 206
    .local v3, "indicatorTranslate1":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x708

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 207
    new-instance v7, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$4;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView$4;-><init>(Lcom/lenovo/scg/camera/ui/ShowProTutorialView;)V

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 226
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mRootView:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 227
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->mIndicatorRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 234
    .end local v1    # "handTranslateAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "hiddenAlphaAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "indicatorTranslate1":Landroid/view/animation/Animation;
    .end local v5    # "show":Z
    .end local v6    # "textInfoAlphaAnim2":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 235
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "show_pro_tutorial"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    .line 232
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->hiddenView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "showProTutorialAnim exception "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->hiddenView()V

    goto :goto_1

    .line 115
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 147
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 177
    :array_2
    .array-data 4
        0x43fa0000    # 500.0f
        0x0
    .end array-data
.end method
