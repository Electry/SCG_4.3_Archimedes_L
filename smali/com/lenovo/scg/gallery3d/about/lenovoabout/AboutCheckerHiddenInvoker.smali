.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;
.super Ljava/lang/Object;
.source "AboutCheckerHiddenInvoker.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ActivityCallback;


# instance fields
.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mAboutConfigChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;

.field mAboutDebugDialog:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;

.field mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

.field mAppIconClicked:I

.field mCopyRightClicked:I

.field mLastClickTime:J


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mLastClickTime:J

    .line 39
    iput v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mAppIconClicked:I

    .line 40
    iput v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mCopyRightClicked:I

    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .line 23
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mAboutConfigChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;

    .line 25
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mAboutDebugDialog:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;

    .line 27
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->invokeCheckerWhenGestureRight()V

    return-void
.end method

.method private invokeCheckerWhenGestureRight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->isValidGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iput v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mAppIconClicked:I

    .line 85
    iput v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mCopyRightClicked:I

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mAboutDebugDialog:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutDebugDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method isDebugMode()Z
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/about_feedback.debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method isValidClick()Z
    .locals 6

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mLastClickTime:J

    .line 34
    .local v0, "last_click_time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mLastClickTime:J

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isValidGesture()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mAppIconClicked:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mCopyRightClicked:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v1, 0x7f100042

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    const v1, 0x7f100047

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker$2;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
