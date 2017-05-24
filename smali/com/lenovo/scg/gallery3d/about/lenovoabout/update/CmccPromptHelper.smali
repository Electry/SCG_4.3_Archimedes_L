.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;
.super Ljava/lang/Object;
.source "CmccPromptHelper.java"


# static fields
.field public static final PROMPT_EMAIL:Ljava/lang/String; = "cmcc_prompt_eamil"

.field public static final PROMPT_UPGRADE_BUTTON:Ljava/lang/String; = "cmcc_prompt_btn"

.field public static final PROMPT_WEBSITE:Ljava/lang/String; = "cmcc_prompt_website"

.field public static final PROMPT_WEIBO:Ljava/lang/String; = "cmcc_prompt_weibo"


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

    .line 56
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mAlertDialogBuilderFactory:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    .line 36
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 37
    return-void
.end method

.method private showPromtDialog(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "promt_type"    # Ljava/lang/String;
    .param p2, "next"    # Ljava/lang/Runnable;

    .prologue
    const/4 v7, 0x0

    .line 59
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mAlertDialogBuilderFactory:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;->createBuilder(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 61
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f040003

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "contentView":Landroid/view/View;
    const v4, 0x7f10005e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 63
    .local v2, "dont_promt_next":Landroid/widget/CheckBox;
    const v4, 0x7f0f0999

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;

    invoke-direct {v6, p0, v2, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;Landroid/widget/CheckBox;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 80
    return-void
.end method


# virtual methods
.method public prompt(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "promt_type"    # Ljava/lang/String;
    .param p2, "next"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCTA()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->isCmccDontPromt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;->showPromtDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
