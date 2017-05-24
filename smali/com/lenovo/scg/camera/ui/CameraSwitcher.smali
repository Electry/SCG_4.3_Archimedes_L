.class public Lcom/lenovo/scg/camera/ui/CameraSwitcher;
.super Lcom/lenovo/scg/camera/ui/RotateImageView;
.source "CameraSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;
    }
.end annotation


# static fields
.field private static final DRAW_IDS:[I

.field public static final LIGHTCYCLE_MODULE_INDEX:I = 0x3

.field public static final PANORAMA_MODULE_INDEX:I = 0x2

.field public static final PHOTO_MODULE_INDEX:I = 0x0

.field private static final SWITCHER_POPUP_ANIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CAM_Switcher"

.field public static final VIDEO_MODULE_INDEX:I = 0x1


# instance fields
.field private mCurrentIndex:I

.field private mDrawIds:[I

.field private mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mIndicator:Landroid/graphics/drawable/Drawable;

.field private mItemSize:I

.field private mListener:Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;

.field private mModuleIds:[I

.field private mNeedsAnimationSetup:Z

.field private mParent:Landroid/view/View;

.field private mPopup:Landroid/view/View;

.field private mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingPopup:Z

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->DRAW_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0206ab
        0x7f0206b2
        0x7f0206ad
        0x7f0206b1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 86
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 88
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 96
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->init(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 88
    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 101
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->init(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/CameraSwitcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/CameraSwitcher;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->onCameraSelected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/ui/CameraSwitcher;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/CameraSwitcher;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/CameraSwitcher;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    return-object v0
.end method

.method private animateHidePopup()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const v2, 0x3e99999a    # 0.3f

    .line 328
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher$2;-><init>(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mHideAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 347
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 348
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private animateShowPopup()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 352
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    .line 355
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mNeedsAnimationSetup:Z

    if-eqz v0, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->popupAnimationSetup()V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-nez v0, :cond_2

    .line 359
    new-instance v0, Lcom/lenovo/scg/camera/ui/CameraSwitcher$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher$3;-><init>(Lcom/lenovo/scg/camera/ui/CameraSwitcher;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 373
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 374
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hidePopup()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mShowingPopup:Z

    .line 231
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->animateHidePopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mItemSize:I

    .line 106
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0206b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->initializeDrawables(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method private initPopup()V
    .locals 9

    .prologue
    const/high16 v8, -0x80000000

    .line 169
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04018a

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    .line 170
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    const v6, 0x7f100823

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 171
    .local v0, "content":Landroid/widget/LinearLayout;
    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    .line 174
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 175
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    const v6, 0x7f100625

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 176
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 179
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mNeedsAnimationSetup:Z

    .line 180
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mDrawIds:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 181
    new-instance v3, Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 182
    .local v3, "item":Lcom/lenovo/scg/camera/ui/RotateImageView;
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mDrawIds:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 183
    const v5, 0x7f02006d

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 184
    move v2, v1

    .line 185
    .local v2, "index":I
    new-instance v5, Lcom/lenovo/scg/camera/ui/CameraSwitcher$1;

    invoke-direct {v5, p0, v2}, Lcom/lenovo/scg/camera/ui/CameraSwitcher$1;-><init>(Lcom/lenovo/scg/camera/ui/CameraSwitcher;I)V

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mDrawIds:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    .line 208
    :goto_1
    :pswitch_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mItemSize:I

    iget v7, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mItemSize:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0574

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 197
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0575

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 200
    :pswitch_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0576

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 203
    :pswitch_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0577

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 210
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/lenovo/scg/camera/ui/RotateImageView;
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 212
    return-void

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x7f0206ab
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private layoutPopup()V
    .locals 8

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 286
    .local v1, "orientation":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 287
    .local v2, "w":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 288
    .local v0, "h":I
    if-nez v1, :cond_0

    .line 289
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getRight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 290
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 291
    div-int/lit8 v3, v0, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 305
    :goto_0
    return-void

    .line 292
    :cond_0
    const/16 v3, 0x5a

    if-ne v1, v3, :cond_1

    .line 293
    div-int/lit8 v3, v2, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 294
    neg-int v3, v0

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 295
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getRight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 296
    :cond_1
    const/16 v3, 0xb4

    if-ne v1, v3, :cond_2

    .line 297
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 298
    neg-int v3, v0

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 299
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getLeft()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 301
    :cond_2
    neg-int v3, v2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationX:F

    .line 302
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationY:F

    .line 303
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getLeft()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private onCameraSelected(I)V
    .locals 2
    .param p1, "ix"    # I

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->hidePopup()V

    .line 153
    iget v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mListener:Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "CameraModeSwitch"

    invoke-static {v0, v1, v1}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "MenuTap"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->setPendingTransitionCause(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->setCurrentIndex(I)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mListener:Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mModuleIds:[I

    aget v1, v1, p1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;->onCameraSelected(I)V

    .line 159
    :cond_0
    return-void
.end method

.method private popupAnimationSetup()V
    .locals 2

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 316
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->layoutPopup()V

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 321
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 322
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mNeedsAnimationSetup:Z

    goto :goto_0
.end method

.method private showSwitcher()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mShowingPopup:Z

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->initPopup()V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->layoutPopup()V

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->animateShowPopup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->setVisibility(I)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    return-void
.end method


# virtual methods
.method public closePopup()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->hidePopup()V

    .line 271
    :cond_0
    return-void
.end method

.method public initializeDrawables(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->DRAW_IDS:[I

    array-length v5, v6

    .line 113
    .local v5, "totaldrawid":I
    :goto_0
    sget-boolean v6, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_OLD_PANORAMA:Z

    if-nez v6, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 115
    :cond_0
    new-array v0, v5, [I

    .line 116
    .local v0, "drawids":[I
    new-array v4, v5, [I

    .line 117
    .local v4, "moduleids":[I
    const/4 v2, 0x0

    .line 118
    .local v2, "ix":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->DRAW_IDS:[I

    array-length v6, v6

    if-ge v1, v6, :cond_5

    .line 119
    const/4 v6, 0x2

    if-ne v1, v6, :cond_3

    sget-boolean v6, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_OLD_PANORAMA:Z

    if-nez v6, :cond_3

    .line 118
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "drawids":[I
    .end local v1    # "i":I
    .end local v2    # "ix":I
    .end local v4    # "moduleids":[I
    .end local v5    # "totaldrawid":I
    :cond_2
    sget-object v6, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->DRAW_IDS:[I

    array-length v6, v6

    add-int/lit8 v5, v6, -0x1

    goto :goto_0

    .line 122
    .restart local v0    # "drawids":[I
    .restart local v1    # "i":I
    .restart local v2    # "ix":I
    .restart local v4    # "moduleids":[I
    .restart local v5    # "totaldrawid":I
    :cond_3
    const/4 v6, 0x3

    if-ne v1, v6, :cond_4

    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/util/LightCycleHelper;->hasLightCycleCapture(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    :cond_4
    aput v1, v4, v2

    .line 126
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    sget-object v6, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->DRAW_IDS:[I

    aget v6, v6, v1

    aput v6, v0, v2

    move v2, v3

    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    goto :goto_2

    .line 128
    :cond_5
    invoke-virtual {p0, v4, v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->setIds([I[I)V

    .line 129
    return-void
.end method

.method public isInsidePopup(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "evt"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v7

    if-nez v7, :cond_0

    .line 226
    :goto_0
    return v6

    .line 220
    :cond_0
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 221
    .local v4, "topLeft":[I
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 222
    aget v1, v4, v6

    .line 223
    .local v1, "left":I
    aget v3, v4, v5

    .line 224
    .local v3, "top":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v0, v3, v7

    .line 225
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v2, v1, v7

    .line 226
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v1

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v3

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->showSwitcher()V

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mListener:Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;->onShowSwitcherPopup()V

    .line 149
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->showsPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mParent:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    .line 243
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->initPopup()V

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 309
    invoke-super/range {p0 .. p5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->onLayout(ZIIII)V

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->layoutPopup()V

    .line 313
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->closePopup()V

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mCurrentIndex:I

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mDrawIds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->setImageResource(I)V

    .line 139
    return-void
.end method

.method public setIds([I[I)V
    .locals 0
    .param p1, "moduleids"    # [I
    .param p2, "drawids"    # [I

    .prologue
    .line 132
    iput-object p2, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mDrawIds:[I

    .line 133
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mModuleIds:[I

    .line 134
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 4
    .param p1, "degree"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mPopup:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 277
    .local v0, "content":Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 282
    :cond_0
    return-void

    .line 278
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 280
    .local v2, "iv":Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setSwitchListener(Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mListener:Lcom/lenovo/scg/camera/ui/CameraSwitcher$CameraSwitchListener;

    .line 143
    return-void
.end method

.method public showsPopup()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/CameraSwitcher;->mShowingPopup:Z

    return v0
.end method
