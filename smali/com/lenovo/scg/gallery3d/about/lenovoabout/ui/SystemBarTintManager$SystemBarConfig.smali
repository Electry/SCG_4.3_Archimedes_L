.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarConfig"
.end annotation


# static fields
.field private static final NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAV_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAV_BAR_WIDTH_RES_NAME:Ljava/lang/String; = "navigation_bar_width"

.field private static final SHOW_NAV_BAR_RES_NAME:Ljava/lang/String; = "config_showNavigationBar"

.field private static final STATUS_BAR_HEIGHT_RES_NAME:Ljava/lang/String; = "status_bar_height"


# instance fields
.field private final mActionBarHeight:I

.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I

.field private final mTranslucentNavBar:Z

.field private final mTranslucentStatusBar:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "translucentStatusBar"    # Z
    .param p3, "traslucentNavBar"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 382
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    .line 383
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    .line 384
    const-string/jumbo v1, "status_bar_height"

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    .line 385
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    .line 386
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    .line 387
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    .line 388
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    .line 389
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    .line 390
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    .line 391
    return-void

    :cond_0
    move v1, v3

    .line 382
    goto :goto_0

    :cond_1
    move v2, v3

    .line 388
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$1;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "result":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 397
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 398
    .local v1, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 401
    .end local v1    # "tv":Landroid/util/TypedValue;
    :cond_0
    return v0
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "result":I
    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 455
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 456
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 458
    :cond_0
    return v1
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 407
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 408
    .local v2, "result":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 409
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz v3, :cond_1

    .line 412
    const-string/jumbo v0, "navigation_bar_height"

    .line 416
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    .line 419
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_0
    return v2

    .line 414
    .restart local v2    # "result":I
    :cond_1
    const-string/jumbo v0, "navigation_bar_height_landscape"

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method private getNavigationBarWidth(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 425
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 426
    .local v1, "result":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 427
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    const-string/jumbo v2, "navigation_bar_width"

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    .line 431
    .end local v1    # "result":I
    :cond_0
    return v1
.end method

.method private getSmallestWidthDp(Landroid/app/Activity;)F
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 463
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 464
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 465
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 470
    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v3, v4

    .line 471
    .local v2, "widthDp":F
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v3, v4

    .line 472
    .local v0, "heightDp":F
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    return v3

    .line 468
    .end local v0    # "heightDp":F
    .end local v2    # "widthDp":F
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 437
    .local v1, "res":Landroid/content/res/Resources;
    const-string v3, "config_showNavigationBar"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 438
    .local v2, "resourceId":I
    if-eqz v2, :cond_2

    .line 439
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 441
    .local v0, "hasNav":Z
    const-string v3, "1"

    # getter for: Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    const/4 v0, 0x0

    .line 448
    .end local v0    # "hasNav":Z
    :cond_0
    :goto_0
    return v0

    .line 443
    .restart local v0    # "hasNav":Z
    :cond_1
    const-string v3, "0"

    # getter for: Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    .end local v0    # "hasNav":Z
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    return v0
.end method

.method public getNavigationBarWidth()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    return v0
.end method

.method public getPixelInsetBottom()I
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPixelInsetRight()I
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mTranslucentNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    .line 565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPixelInsetTop(Z)I
    .locals 2
    .param p1, "withActionBar"    # Z

    .prologue
    const/4 v0, 0x0

    .line 540
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mTranslucentStatusBar:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    :goto_0
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mActionBarHeight:I

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    return v0
.end method

.method public hasNavigtionBar()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    return v0
.end method

.method public isNavigationAtBottom()Z
    .locals 2

    .prologue
    .line 483
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
