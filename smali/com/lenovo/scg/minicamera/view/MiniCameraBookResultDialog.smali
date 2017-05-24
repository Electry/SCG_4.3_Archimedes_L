.class public Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;
.super Ljava/lang/Object;
.source "MiniCameraBookResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraBookResultDialog"


# instance fields
.field private mCancelView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDetailView:Landroid/widget/TextView;

.field private mDialog:Landroid/app/AlertDialog;

.field private mImageView:Landroid/widget/ImageView;

.field private mNameView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a003b

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x7f040101

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 51
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->initViews()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100680

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mImageView:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100685

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mCancelView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100683

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDetailView:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100681

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mTitleView:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100682

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mNameView:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mCancelView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDetailView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mNameView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setTypeface(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 68
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 72
    return-void
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setContentName(ILjava/lang/String;)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public setContentTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setDetailListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v1, "MiniCameraBookResultDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImageUrl, bm url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;-><init>(Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;Ljava/lang/String;)V

    .line 97
    .local v0, "task":Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog$loadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraBookResultDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 76
    return-void
.end method
