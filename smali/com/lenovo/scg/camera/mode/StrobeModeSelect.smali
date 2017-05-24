.class public Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
.super Landroid/widget/FrameLayout;
.source "StrobeModeSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StrobeModeSelect"


# instance fields
.field private m4vs3Offset:I

.field private mButtonCancel:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mButtonFade:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mButtonSave:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mCircleRIn:I

.field private mCircleROut:I

.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mIs16vs9:Z

.field private mLineWidth:I

.field private mOnClickedView:Landroid/view/View;

.field private mPointNumber:I

.field private mSelectLine:Landroid/widget/LinearLayout;

.field private mSelectPointListener:Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mIs16vs9:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mPointNumber:I

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectPointListener:Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;

    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090313

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mLineWidth:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleRIn:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090310

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->m4vs3Offset:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleRIn:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mPointNumber:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectPointListener:Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;

    return-object v0
.end method


# virtual methods
.method public ViewScaleAnimation(Landroid/view/animation/AnimationSet;FFIZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AnimationSet;
    .locals 9
    .param p1, "target"    # Landroid/view/animation/AnimationSet;
    .param p2, "f"    # F
    .param p3, "g"    # F
    .param p4, "duration"    # I
    .param p5, "repeat"    # Z
    .param p6, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 292
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v2, p2

    move v3, v1

    move v4, p3

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 293
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 294
    if-eqz p5, :cond_0

    .line 295
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 296
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 299
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {v0, p6}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 300
    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Landroid/view/animation/AnimationSet;

    .end local p1    # "target":Landroid/view/animation/AnimationSet;
    invoke-direct {p1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 301
    .restart local p1    # "target":Landroid/view/animation/AnimationSet;
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 302
    return-object p1
.end method

.method public addLine()V
    .locals 6

    .prologue
    .line 276
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 277
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 278
    .local v1, "line":Landroid/widget/ImageView;
    const v3, 0x7f0203c9

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 279
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mLineWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 280
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 281
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    return-void
.end method

.method public addSelectPoint(Landroid/graphics/drawable/Drawable;I)V
    .locals 9
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x4

    .line 241
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 242
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040189

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 243
    .local v3, "layout":Landroid/view/View;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I

    iget v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 244
    .local v4, "param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    if-nez p2, :cond_0

    const v5, 0x7f100974

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_0
    iget v5, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mPointNumber:I

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_1

    const v5, 0x7f100975

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_1
    const v5, 0x7f100976

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "container":Landroid/view/View;
    const v5, 0x7f100978

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RoundImageView;

    .line 251
    .local v1, "image":Lcom/lenovo/scg/camera/ui/RoundImageView;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/ui/RoundImageView;->setDrawableResource(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    new-instance v5, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;

    invoke-direct {v5, p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$3;-><init>(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void
.end method

.method public cleanLayout()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 286
    return-void
.end method

.method public drawSelectView(I[Landroid/graphics/Bitmap;[I)V
    .locals 4
    .param p1, "pointNumber"    # I
    .param p2, "bitmapArray"    # [Landroid/graphics/Bitmap;
    .param p3, "alphaArray"    # [I

    .prologue
    .line 323
    iput p1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mPointNumber:I

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 325
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->addSelectPoint(Landroid/graphics/drawable/Drawable;I)V

    .line 326
    add-int/lit8 v1, p1, -0x1

    if-eq v0, v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->addLine()V

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 331
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 332
    const-string v1, "StrobeModeSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawSelectView view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alphaArray[i]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    aget v1, p3, v0

    if-lez v1, :cond_2

    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    .line 331
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_3
    return-void
.end method

.method public findSelectViewWithTag(I)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    const v1, 0x7f100977

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getButtonFade()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonFade:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f1002ae

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mImage:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f1002af

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    .line 69
    const v0, 0x7f1002b0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonCancel:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 70
    const v0, 0x7f1002b1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonSave:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 71
    const v0, 0x7f1002b2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonFade:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 72
    const-string v0, "StrobeModeSelect"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method protected reverseAnimation(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x3ea8f5c3    # 0.33f

    .line 158
    const/4 v1, 0x0

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    new-instance v6, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;

    invoke-direct {v6, p0, p1}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;-><init>(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;Landroid/view/View;)V

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->ViewScaleAnimation(Landroid/view/animation/AnimationSet;FFIZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AnimationSet;

    move-result-object v7

    .line 221
    .local v7, "target":Landroid/view/animation/AnimationSet;
    invoke-virtual {p1, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    return-void
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onCancelClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonCancel:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonCancel:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    :cond_0
    return-void
.end method

.method public setFadeListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onFadeClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonFade:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonFade:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    :cond_0
    return-void
.end method

.method public setIs16vs9(Z)V
    .locals 6
    .param p1, "is"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 76
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mIs16vs9:Z

    .line 77
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mIs16vs9:Z

    if-eqz v1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->m4vs3Offset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 82
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/lit8 v1, v1, 0x13

    div-int/lit8 v1, v1, 0x14

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectLine:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->m4vs3Offset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setY(F)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v1, 0x1

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonCancel:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonSave:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonFade:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 354
    return-void
.end method

.method public setSaveListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onSaveClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonSave:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mButtonSave:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_0
    return-void
.end method

.method public setSelectPointListener(Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mSelectPointListener:Lcom/lenovo/scg/camera/mode/StrobeModeSelect$StrobeMode_SelectPoint_Listener;

    .line 238
    return-void
.end method

.method protected startAnimation(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 90
    const/4 v1, 0x0

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    new-instance v6, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;

    invoke-direct {v6, p0, p1}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;-><init>(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;Landroid/view/View;)V

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->ViewScaleAnimation(Landroid/view/animation/AnimationSet;FFIZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AnimationSet;

    move-result-object v7

    .line 154
    .local v7, "target":Landroid/view/animation/AnimationSet;
    invoke-virtual {p1, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    return-void
.end method
