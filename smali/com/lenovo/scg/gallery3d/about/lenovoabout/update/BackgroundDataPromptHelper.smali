.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;
.super Ljava/lang/Object;
.source "BackgroundDataPromptHelper.java"


# instance fields
.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mAlertDialogBuilderFactory:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

.field mContext:Landroid/content/Context;

.field mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mAlertDialogBuilderFactory:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    .line 36
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 37
    return-void
.end method


# virtual methods
.method public prompt()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->isBackGroundDataDontPromt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->showPromtDialog()V

    .line 45
    :cond_0
    return-void
.end method

.method public showPromtDialog()V
    .locals 7

    .prologue
    .line 50
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mAlertDialogBuilderFactory:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;->createBuilder(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 51
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 52
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f040002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "contentView":Landroid/view/View;
    const v4, 0x7f10005c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 54
    .local v2, "dont_promt_next":Landroid/widget/CheckBox;
    const v4, 0x7f0f0999

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$2;

    invoke-direct {v6, p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$2;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$1;

    invoke-direct {v6, p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 85
    return-void
.end method
