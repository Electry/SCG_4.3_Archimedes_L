.class public Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;
.super Ljava/lang/Object;
.source "ChangeBackgroundDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeBackgroundDialog"


# instance fields
.field private mCancelView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mGalleryLayout:Landroid/widget/LinearLayout;

.field private mPhotographerLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "ChangeBackgroundDialog"

    const-string v1, "create ChangeBackgroundDialog!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mDialog:Landroid/app/AlertDialog;

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x7f04019d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->initViews()V

    .line 35
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f1009f2

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mCancelView:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f1009ea

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mGalleryLayout:Landroid/widget/LinearLayout;

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f1009ee

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mPhotographerLayout:Landroid/widget/LinearLayout;

    .line 41
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 45
    return-void
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public setGalleryListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mGalleryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public setPhotographerListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->mPhotographerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method
