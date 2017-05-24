.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;
.super Ljava/lang/Object;
.source "ToastHelper.java"


# instance fields
.field isEnable:Z

.field mContext:Landroid/content/Context;

.field mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->isEnable:Z

    .line 14
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public longToast(I)V
    .locals 2
    .param p1, "toastResId"    # I

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->isEnable:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$4;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;I)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;->execute(Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    return-void
.end method

.method public longToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->isEnable:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$3;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;->execute(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->isEnable:Z

    .line 19
    return-void
.end method

.method public shortToast(I)V
    .locals 2
    .param p1, "toastResId"    # I

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->isEnable:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$2;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;I)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;->execute(Ljava/lang/Runnable;)V

    .line 41
    :cond_0
    return-void
.end method

.method public shortToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->isEnable:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;->execute(Ljava/lang/Runnable;)V

    .line 30
    :cond_0
    return-void
.end method
