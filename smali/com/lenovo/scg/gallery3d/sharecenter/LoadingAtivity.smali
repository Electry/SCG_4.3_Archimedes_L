.class public Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;
.super Landroid/app/Activity;
.source "LoadingAtivity.java"


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0f07e2

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 36
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->showProgressDialog()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    return-void
.end method
