.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$1;,
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;
    }
.end annotation


# static fields
.field public static final DEFAULT_TINT_COLOR:I = -0x67000000

.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mNavBarTintEnabled:Z

.field private mNavBarTintView:Landroid/view/View;

.field private mStatusBarAvailable:Z

.field private mStatusBarTintEnabled:Z

.field private mStatusBarTintView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 56
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 58
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, "c":Ljava/lang/Class;
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 60
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 61
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "qemu.hw.mainkeys"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Throwable;
    sput-object v7, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 95
    .local v4, "win":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 97
    .local v3, "decorViewGroup":Landroid/view/ViewGroup;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 101
    const/4 v6, 0x2

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 102
    .local v1, "attrs":[I
    invoke-virtual {p1, v1}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    .line 105
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 112
    .local v5, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x4000000

    .line 113
    .local v2, "bits":I
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_0

    .line 114
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    .line 116
    :cond_0
    const/high16 v2, 0x8000000

    .line 117
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_1

    .line 118
    iput-boolean v8, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    .line 122
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attrs":[I
    .end local v2    # "bits":I
    .end local v5    # "winParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    new-instance v6, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    const/4 v9, 0x0

    invoke-direct {v6, p1, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$1;)V

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    .line 124
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v6

    if-nez v6, :cond_2

    .line 125
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    .line 128
    :cond_2
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v6, :cond_3

    .line 129
    invoke-direct {p0, p1, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 131
    :cond_3
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v6, :cond_4

    .line 132
    invoke-direct {p0, p1, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 135
    :cond_4
    return-void

    .line 107
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "attrs":[I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6

    .line 101
    :array_0
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method private setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, -0x1

    .line 342
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    .line 344
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 346
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/high16 v2, -0x67000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 353
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 355
    return-void

    .line 348
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 349
    .restart local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorViewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 329
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    .line 330
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 331
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 332
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/high16 v2, -0x67000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 337
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager$SystemBarConfig;

    return-object v0
.end method

.method public isNavBarTintEnabled()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintEnabled:Z

    return v0
.end method

.method public isStatusBarTintEnabled()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintEnabled:Z

    return v0
.end method

.method public setNavigationBarAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 299
    :cond_0
    return-void
.end method

.method public setNavigationBarTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    :cond_0
    return-void
.end method

.method public setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_0
    return-void
.end method

.method public setNavigationBarTintEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintEnabled:Z

    .line 164
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_0
    return-void

    .line 165
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setNavigationBarTintResource(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 275
    :cond_0
    return-void
.end method

.method public setStatusBarAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 253
    :cond_0
    return-void
.end method

.method public setStatusBarTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    :cond_0
    return-void
.end method

.method public setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    return-void
.end method

.method public setStatusBarTintEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintEnabled:Z

    .line 148
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_0
    return-void

    .line 149
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setStatusBarTintResource(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    :cond_0
    return-void
.end method

.method public setTintAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setStatusBarAlpha(F)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setNavigationBarAlpha(F)V

    .line 207
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setStatusBarTintColor(I)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setNavigationBarTintColor(I)V

    .line 177
    return-void
.end method

.method public setTintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setStatusBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setNavigationBarTintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void
.end method

.method public setTintResource(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setStatusBarTintResource(I)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/SystemBarTintManager;->setNavigationBarTintResource(I)V

    .line 187
    return-void
.end method
