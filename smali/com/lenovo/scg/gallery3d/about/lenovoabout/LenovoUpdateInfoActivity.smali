.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;
.super Landroid/app/Activity;
.source "LenovoUpdateInfoActivity.java"


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field cbDontPromtNext:Landroid/widget/CheckBox;

.field ivAppIcon:Landroid/widget/ImageView;

.field public keylistener:Landroid/content/DialogInterface$OnKeyListener;

.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mAlertDialogBuilderFactory:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

.field mDialog:Landroid/app/Dialog;

.field mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

.field mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

.field mPackageName:Ljava/lang/String;

.field mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

.field mUpdateInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

.field mUpdateManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

.field mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

.field tvDescription:Landroid/widget/TextView;

.field tvNewVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mAlertDialogBuilderFactory:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    .line 198
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->keylistener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method private createDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 158
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mAlertDialogBuilderFactory:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/AlertDialogBuilderFactory;->createBuilder(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 124
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0f0a73

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 128
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->ForceUpdate:Ljava/lang/String;

    const-string v3, "Yes"

    if-ne v2, v3, :cond_1

    .line 129
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->keylistener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 133
    :goto_1
    const v2, 0x7f0f098b

    new-instance v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$1;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040006

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "contentView":Landroid/view/View;
    const v2, 0x7f100063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->tvNewVersion:Landroid/widget/TextView;

    .line 151
    const v2, 0x7f100064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->tvDescription:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f100065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->cbDontPromtNext:Landroid/widget/CheckBox;

    .line 154
    const v2, 0x7f100042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->ivAppIcon:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 131
    .end local v1    # "contentView":Landroid/view/View;
    :cond_1
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private initUpdateHelpers()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mPackageName:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mPackageName:Ljava/lang/String;

    .line 87
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    .line 88
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    .line 89
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .line 91
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    .line 173
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-wide v4, v4, Lcom/lenovo/lps/sus/QueryResult;->newFullPKGSize:J

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "filesize":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0a74

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0f0a71

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0f098a

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "verName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-boolean v4, v4, Lcom/lenovo/lps/sus/QueryResult;->bPatchUpdateEnableFlag:Z

    if-eqz v4, :cond_0

    .line 182
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    iget-wide v4, v4, Lcom/lenovo/lps/sus/QueryResult;->downloadPKGRealSize:J

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "download_size":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0f099f

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    .local v2, "ss":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x21

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 185
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->tvNewVersion:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .end local v0    # "download_size":Ljava/lang/String;
    .end local v2    # "ss":Landroid/text/SpannableString;
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->ivAppIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->ivAppIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->tvDescription:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->UpdateDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->cbDontPromtNext:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->isPromtNewVersion()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    return-void

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->tvNewVersion:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 170
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->createDialog()V

    .line 106
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->initViews()V

    .line 107
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->setListeners()V

    .line 109
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 67
    const-string v0, "dark"

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->setTheme(I)V

    .line 74
    :goto_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    .line 75
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    .line 78
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->initUpdateHelpers()V

    .line 79
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->showDialog()V

    .line 80
    return-void

    .line 70
    :cond_0
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->setTheme(I)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->setIntent(Landroid/content/Intent;)V

    .line 98
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->initUpdateHelpers()V

    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->showDialog()V

    .line 100
    return-void
.end method
