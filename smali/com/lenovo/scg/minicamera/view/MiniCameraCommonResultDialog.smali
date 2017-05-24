.class public Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;
.super Ljava/lang/Object;
.source "MiniCameraCommonResultDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraCommonResultDialog"


# instance fields
.field private mCancelView:Landroid/widget/TextView;

.field private mContentView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDetailView:Landroid/widget/TextView;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDoubleBtnLL:Landroid/widget/LinearLayout;

.field private mOkView:Landroid/widget/TextView;

.field private mSingleBtnLL:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "MiniCameraCommonResultDialog"

    const-string v1, "create MiniCameraResultDialog!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a003b

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x7f040103

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->initViews()V

    .line 46
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10068d

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContentView:Landroid/widget/TextView;

    .line 51
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10068e

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDoubleBtnLL:Landroid/widget/LinearLayout;

    .line 52
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10068f

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mCancelView:Landroid/widget/TextView;

    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100690

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDetailView:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100691

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mSingleBtnLL:Landroid/widget/LinearLayout;

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f100692

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mOkView:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f10068c

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 61
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContentView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 62
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mCancelView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDetailView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 64
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mOkView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 65
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 69
    return-void
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mSingleBtnLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setDetailListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public setDetailText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public setIsText(Z)V
    .locals 3
    .param p1, "isText"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDoubleBtnLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mSingleBtnLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mDoubleBtnLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraCommonResultDialog;->mSingleBtnLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
