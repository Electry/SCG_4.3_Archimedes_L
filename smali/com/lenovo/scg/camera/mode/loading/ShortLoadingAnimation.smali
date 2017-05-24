.class public Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;
.super Ljava/lang/Object;
.source "ShortLoadingAnimation.java"


# static fields
.field private static final FIRST_STEP_ANIM_DURIATION:I = 0xc8

.field private static final NEXT_STEP_ANIM_DURIATION:I = 0x320


# instance fields
.field private mAnimShutterButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

.field private mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

.field private mParentView:Landroid/view/ViewGroup;

.field private mProShutterButtonBg:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/ViewGroup;

.field private mShutterBitmap:Landroid/graphics/Bitmap;

.field private mShutterButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    .prologue
    const v6, 0x7f10029c

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    .line 67
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    .line 68
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    .line 91
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "vChild":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 73
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040061

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;

    .line 79
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 81
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f10029e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    .line 82
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f1002a0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    .line 83
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;

    const v4, 0x7f10029f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mProShutterButtonBg:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->startNextStepAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mProShutterButtonBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private hideOriShutterButton()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f10015f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ShutterButton;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ShutterButton;->invalidate()V

    .line 291
    return-void
.end method

.method private startAutoAnim()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 107
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->hideOriShutterButton()V

    .line 112
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterBitmap:Landroid/graphics/Bitmap;

    .line 117
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;->getOrientation()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 123
    .local v0, "hideAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 124
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 125
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    new-instance v2, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$1;-><init>(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 140
    .local v1, "showAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 141
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 142
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    new-instance v2, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$2;-><init>(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startNextStepAnim()V
    .locals 4

    .prologue
    .line 224
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mContext:Landroid/content/Context;

    const v2, 0x7f05000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/RotateAnimation;

    .line 225
    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    return-void
.end method

.method private startProAnim()V
    .locals 14

    .prologue
    const v2, 0x3f147ae1    # 0.58f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 163
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->hideOriShutterButton()V

    .line 164
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    if-nez v3, :cond_0

    .line 221
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterBitmap:Landroid/graphics/Bitmap;

    .line 169
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;->getOrientation()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 173
    :cond_1
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v1, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 174
    .local v10, "hideAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 175
    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 176
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    new-instance v3, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$3;-><init>(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mProShutterButtonBg:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    new-instance v9, Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v12, 0xc8

    invoke-virtual {v9, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 194
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v7, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 195
    .local v11, "showAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v11, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 196
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 198
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 199
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 200
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 201
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mProShutterButtonBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    new-instance v1, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$4;-><init>(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startTipsAnim()V
    .locals 6

    .prologue
    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->CENTER:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;->getOrientation()I

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/common/ui/RotateTips;->show(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/lenovo/scg/common/ui/RotateTips$TipsType;II)V

    .line 301
    return-void
.end method


# virtual methods
.method public hideTips()V
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/lenovo/scg/common/ui/RotateTips;->getInstance()Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/lenovo/scg/common/ui/RotateTips;->getInstance()Lcom/lenovo/scg/common/ui/RotateTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->hideTips()V

    .line 329
    :cond_0
    return-void
.end method

.method public startAnim(Z)V
    .locals 2
    .param p1, "isShowTips"    # Z

    .prologue
    .line 94
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    .line 95
    .local v0, "function":I
    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->startAutoAnim()V

    .line 100
    :goto_0
    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->startTipsAnim()V

    .line 103
    :cond_0
    return-void

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->startProAnim()V

    goto :goto_0
.end method

.method public stopAnim()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->hideTips()V

    .line 232
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    if-nez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mParentView:Landroid/view/ViewGroup;

    const v3, 0x7f10015f

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ShutterButton;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 237
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 238
    .local v1, "showAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 239
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mOriShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/ShutterButton;->setFocusableInTouchMode(Z)V

    .line 243
    .end local v1    # "showAnim":Landroid/view/animation/AlphaAnimation;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 246
    iput-object v7, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mAnimShutterButton:Landroid/widget/ImageView;

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 250
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    iput-object v7, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mShutterBitmap:Landroid/graphics/Bitmap;

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 254
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 255
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 256
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 257
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 258
    new-instance v2, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation$5;-><init>(Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 283
    .end local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    :cond_4
    return-void
.end method
