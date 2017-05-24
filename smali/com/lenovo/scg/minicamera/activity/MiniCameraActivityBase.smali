.class public Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;
.super Landroid/support/v4/app/FragmentActivity;
.source "MiniCameraActivityBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityBase"

.field private static final UPDATE_STORAGE_HINT:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

.field private mStorageSpace:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 27
    const-wide/32 v0, 0x2faf080

    iput-wide v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageSpace:J

    .line 33
    new-instance v0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase$1;-><init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected getStorageSpace()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageSpace:J

    return-wide v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->requestWindowFeature(I)Z

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->cancel()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    .line 77
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->updateStorageSpace()V

    .line 66
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1, "layoutResID"    # I

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 57
    return-void
.end method

.method protected updateStorageHint()V
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->updateStorageHint(J)V

    .line 99
    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 5
    .param p1, "storageSpace"    # J

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 104
    const v1, 0x7f0f04d1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    if-eqz v0, :cond_6

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    if-nez v1, :cond_5

    .line 115
    invoke-static {p0, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    .line 119
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->show()V

    .line 124
    :cond_1
    :goto_2
    return-void

    .line 105
    :cond_2
    const-wide/16 v2, -0x2

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 106
    const v1, 0x7f0f04d2

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_3
    const-wide/16 v2, -0x3

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 108
    const v1, 0x7f0f04d3

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_4
    const-wide/32 v2, 0x2faf080

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 110
    const v1, 0x7f0f0547

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->cancel()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageHint:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    goto :goto_2
.end method

.method protected updateStorageSpace()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/lenovo/scg/minicamera/common/savepicture/database/MiniCameraStorage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageSpace:J

    .line 86
    return-void
.end method

.method protected updateStorageSpaceAndHint()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->updateStorageSpace()V

    .line 94
    iget-wide v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->mStorageSpace:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->updateStorageHint(J)V

    .line 95
    return-void
.end method
