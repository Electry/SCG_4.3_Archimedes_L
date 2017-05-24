.class public Lcom/lenovo/scg/common/ui/RotateTips;
.super Ljava/lang/Object;
.source "RotateTips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/ui/RotateTips$TipsType;
    }
.end annotation


# static fields
.field private static final HIDE_TIPS:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final TIPS_DURATION_LONG:I = 0xed8

.field private static mInstance:Lcom/lenovo/scg/common/ui/RotateTips;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawableAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoHide:Z

.field private mIsTipsInAnim:Z

.field private mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mTipsImageView:Landroid/widget/ImageView;

.field private mTipsRoot:Landroid/widget/RelativeLayout;

.field private mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mTipsView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "RotateTips"

    sput-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;
    .param p3, "orientation"    # I
    .param p4, "isAutoHide"    # Z

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/ui/RotateTips$1;-><init>(Lcom/lenovo/scg/common/ui/RotateTips;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mParentView:Landroid/view/ViewGroup;

    .line 89
    iput p3, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mOrientation:I

    .line 90
    iput-boolean p4, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mIsAutoHide:Z

    .line 91
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/common/ui/RotateTips;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 94
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04004c

    iget-object v3, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mParentView:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1001cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    .line 98
    const v2, 0x7f1001ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 100
    iget-object v2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget v3, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mOrientation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 101
    const v2, 0x7f1001cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f1001d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsImageView:Landroid/widget/ImageView;

    .line 103
    return-void
.end method

.method private initTextView(Ljava/lang/String;)V
    .locals 12
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const-wide v10, 0x3fe6666666666666L    # 0.7

    .line 106
    iget-object v5, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 133
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 110
    .local v3, "textSize":F
    iget-object v5, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 111
    iget-object v5, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v6

    invoke-virtual {v5, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 115
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, p1, v7, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 118
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v6

    .line 120
    .local v4, "width":I
    iget-object v5, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 121
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    int-to-double v6, v4

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-double v8, v5

    mul-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    .line 122
    div-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-double v6, v5

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-double v8, v5

    mul-double/2addr v8, v10

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    .line 123
    div-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    :goto_1
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v6, v5

    iget-object v5, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f09036f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-double v8, v5

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    iget-object v5, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 125
    :cond_2
    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-double v6, v5

    mul-double/2addr v6, v10

    double-to-int v5, v6

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 128
    :cond_3
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method public static show(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/lenovo/scg/common/ui/RotateTips$TipsType;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/lenovo/scg/common/ui/RotateTips$TipsType;
    .param p4, "orientation"    # I
    .param p5, "duration"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 78
    :cond_0
    new-instance v1, Lcom/lenovo/scg/common/ui/RotateTips;

    if-lez p5, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p0, p1, p4, v0}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    sput-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 80
    sget-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0, p3, p4}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 81
    sget-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v0, p2, p5}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;I)V

    .line 82
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyTips()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    sget-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    const-string v1, "destroyTips"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mDrawableAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mDrawableAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 269
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mDrawableAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mIsTipsInAnim:Z

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    iput-object v2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    .line 275
    sget-object v0, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    if-ne p0, v0, :cond_1

    .line 276
    sput-object v2, Lcom/lenovo/scg/common/ui/RotateTips;->mInstance:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 278
    :cond_1
    return-void
.end method

.method public hideTips()V
    .locals 4

    .prologue
    .line 237
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mIsTipsInAnim:Z

    if-nez v1, :cond_0

    .line 239
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    const-string v2, "hideTips"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mIsTipsInAnim:Z

    .line 241
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 242
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 244
    new-instance v1, Lcom/lenovo/scg/common/ui/RotateTips$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/ui/RotateTips$2;-><init>(Lcom/lenovo/scg/common/ui/RotateTips;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 263
    .end local v0    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V
    .locals 9
    .param p1, "type"    # Lcom/lenovo/scg/common/ui/RotateTips$TipsType;
    .param p2, "orientation"    # I

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xe

    const/16 v6, 0xc

    const/16 v5, 0x9

    const/4 v4, -0x2

    .line 292
    iput p2, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mOrientation:I

    .line 293
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/RotateTips;->init()V

    .line 297
    :cond_0
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 302
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    if-ne p1, v1, :cond_3

    .line 303
    iget v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_2

    .line 304
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 305
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 306
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090351

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 336
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    return-void

    .line 310
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090353

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 316
    :cond_3
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->FACE_PREETTY:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    if-ne p1, v1, :cond_5

    .line 318
    iget v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_4

    .line 319
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 320
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 321
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 326
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 327
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 328
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090353

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 333
    :cond_5
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->CENTER:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    if-ne p1, v1, :cond_1

    .line 334
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public showTips(Ljava/lang/String;)V
    .locals 6
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    :cond_0
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    const-string v2, "content is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_3

    .line 220
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/RotateTips;->init()V

    .line 223
    :cond_3
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/ui/RotateTips;->initTextView(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 228
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 229
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 230
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    iget-boolean v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mIsAutoHide:Z

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v4, 0xed8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showTips(Ljava/lang/String;I)V
    .locals 6
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 192
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    :cond_0
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    const-string v2, "content is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_3

    .line 197
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/RotateTips;->init()V

    .line 200
    :cond_3
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/ui/RotateTips;->initTextView(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 207
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 208
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iget-boolean v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mIsAutoHide:Z

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showTips(Ljava/lang/String;II)V
    .locals 6
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :cond_0
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    const-string v2, "content is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_3

    .line 141
    iput p3, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mOrientation:I

    .line 142
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/RotateTips;->init()V

    .line 145
    :cond_3
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/ui/RotateTips;->initTextView(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 152
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    iget-boolean v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mIsAutoHide:Z

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showTips(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "orientation"    # I
    .param p4, "isShowAni"    # Z

    .prologue
    const/4 v4, 0x0

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_0
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    const-string v2, "content is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_3

    .line 166
    iput p3, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mOrientation:I

    .line 167
    invoke-direct {p0}, Lcom/lenovo/scg/common/ui/RotateTips;->init()V

    .line 170
    :cond_3
    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isShowAni:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz p4, :cond_4

    .line 172
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsImageView:Landroid/widget/ImageView;

    const v2, 0x7f050044

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mDrawableAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mDrawableAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 179
    :cond_4
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/ui/RotateTips;->initTextView(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 183
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 184
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 185
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mTipsRotate:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-boolean v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mIsAutoHide:Z

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/lenovo/scg/common/ui/RotateTips;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
