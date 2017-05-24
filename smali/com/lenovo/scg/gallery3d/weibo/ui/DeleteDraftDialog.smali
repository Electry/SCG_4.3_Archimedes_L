.class public Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;
.super Ljava/lang/Object;
.source "DeleteDraftDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeBackgroundDialog"


# instance fields
.field private mCancelView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDelAllLayout:Landroid/widget/LinearLayout;

.field private mDelSingleLayout:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/AlertDialog;

.field private mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDialog:Landroid/app/AlertDialog;

    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0401a2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->initViews()V

    .line 33
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100a10

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mCancelView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100a0c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDelSingleLayout:Landroid/widget/LinearLayout;

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f100a0e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDelAllLayout:Landroid/widget/LinearLayout;

    .line 39
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 43
    return-void
.end method

.method public getItem()Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    return-object v0
.end method

.method public setCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public setDelAllListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDelAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public setDelSingleListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mDelSingleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public setItem(Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;)V
    .locals 0
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DeleteDraftDialog;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DraftItem;

    .line 47
    return-void
.end method
