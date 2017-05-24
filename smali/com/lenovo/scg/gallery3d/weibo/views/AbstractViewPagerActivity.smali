.class public abstract Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;
.super Landroid/app/Activity;
.source "AbstractViewPagerActivity.java"


# static fields
.field public static final END_PROGRESS:I = 0x30003

.field public static final HIDE_PROGRESS_BAR:I = 0x30004

.field public static final NOTIFYDATASETCHANGED:I = 0x40001

.field public static final PLUS_PROGRESS:I = 0x30002

.field public static final START_PROGRESS:I = 0x30001


# instance fields
.field protected downloadFinish:Z

.field private mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private random:Ljava/util/Random;

.field updateProgressBar:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->downloadFinish:Z

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->random:Ljava/util/Random;

    .line 44
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->updateProgressBar:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->random:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public disableView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 114
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 116
    :cond_0
    return-void
.end method

.method public enableView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 122
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 124
    :cond_0
    return-void
.end method

.method public abstract getLargeFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getLargeFilePath()Ljava/lang/String;
.end method

.method public abstract getMiddleFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getMiddleFilePath()Ljava/lang/String;
.end method

.method public abstract getSmallFile(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getSmallFilePath()Ljava/lang/String;
.end method

.method public hidePinWheelDialog()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->cancel()V

    .line 108
    return-void
.end method

.method public isFileExists(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 154
    .end local v0    # "mFile":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->requestWindowFeature(I)Z

    .line 34
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 37
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->getMyDialog(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    .line 38
    return-void
.end method

.method public showPinWheelDialog()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mDialog:Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/PinWheelDialog;->show()V

    .line 42
    return-void
.end method

.method protected stopProgressBar(Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "mProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->updateProgressBar:Landroid/os/Handler;

    const v1, 0x30003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    return-void
.end method

.method protected updateProgressBar(Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "mProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->downloadFinish:Z

    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/AbstractViewPagerActivity;->updateProgressBar:Landroid/os/Handler;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    return-void
.end method
