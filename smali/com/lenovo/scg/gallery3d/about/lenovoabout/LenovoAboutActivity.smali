.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;
.source "LenovoAboutActivity.java"


# static fields
.field public static final LIST_INDEX_CHECK_UPDATE:I = 0x2

.field public static final LIST_INDEX_CONTACT:I = 0x1

.field public static final LIST_INDEX_TOP:I = 0x0

.field public static final SAVE_STATE_VIEW_FLIPPER_INDEX:Ljava/lang/String; = "view_flipper_index"


# instance fields
.field private isAllListInvisible:Z

.field ivAppIcon:Landroid/widget/ImageView;

.field llCenter:Landroid/view/View;

.field llListTop:Landroid/view/ViewGroup;

.field mAboutCheckerHiddenInvoker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mAboutScreen:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;

.field mBackPromptHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

.field mCheckUpdateUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;

.field mClipboardHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ClipboardHelper;

.field mCmccPromptHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;

.field mContactsUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

.field mIntentHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/IntentHelper;

.field mListIndex:I

.field mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

.field mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

.field mPackageHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;

.field mRefreshTimer:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

.field mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

.field mVersionIntroduction:Landroid/app/PendingIntent;

.field tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivFeedback:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivNewVersionIntroduction:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

.field tvAppName:Landroid/widget/TextView;

.field tvAppVersion:Landroid/widget/TextView;

.field tvCopyrightCN:Landroid/widget/TextView;

.field tvCopyrightEN:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field vCenterLine:Landroid/view/View;

.field vTopLine:Landroid/view/View;

.field vfList:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;-><init>(Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mRefreshTimer:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    .line 98
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->isAllListInvisible:Z

    .line 415
    iput v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    return-void
.end method

.method private findViews()V
    .locals 1

    .prologue
    .line 315
    const v0, 0x7f100054

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvCopyrightCN:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f100055

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvCopyrightEN:Landroid/widget/TextView;

    .line 317
    const v0, 0x7f100042

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->ivAppIcon:Landroid/widget/ImageView;

    .line 318
    const v0, 0x7f100043

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvAppName:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f100044

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvAppVersion:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f10004e

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 323
    const v0, 0x7f10004d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 324
    const v0, 0x7f10004f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 325
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 326
    const v0, 0x7f100051

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 327
    const v0, 0x7f100052

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 329
    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivContact:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 330
    const v0, 0x7f10004c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 331
    const v0, 0x7f10004b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivFeedback:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 332
    const v0, 0x7f100049

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivNewVersionIntroduction:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 334
    const v0, 0x7f100046

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vfList:Landroid/widget/ViewFlipper;

    .line 335
    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvTitle:Landroid/widget/TextView;

    .line 337
    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->llCenter:Landroid/view/View;

    .line 339
    const v0, 0x7f100048

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->llListTop:Landroid/view/ViewGroup;

    .line 340
    const v0, 0x7f100045

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vCenterLine:Landroid/view/View;

    .line 342
    const v0, 0x7f100040

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vTopLine:Landroid/view/View;

    .line 343
    return-void
.end method

.method private initExtras()V
    .locals 5

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 543
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 564
    :goto_0
    return-void

    .line 544
    :cond_0
    const-string v3, "key_about_list"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 545
    .local v2, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 546
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;

    .line 547
    .local v0, "extras":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->edit()Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getIcon()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->appIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->email(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getQQGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->QQGroup(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getWeibo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weibo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getWeiboURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weiboUrl(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getWeixin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weixin(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getBBS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->BBS(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getProjectName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->channel(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getCmcc()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->cmcc(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getRowVersion()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->row(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;->getAutoUpdate()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateOnAboutActivityCreate(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->commit()V

    .line 563
    .end local v0    # "extras":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/AboutItem;
    :cond_1
    const-string/jumbo v3, "version_introduction"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mVersionIntroduction:Landroid/app/PendingIntent;

    goto/16 :goto_0
.end method

.method private setViews()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    .line 233
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAppIcon()I

    move-result v1

    if-lez v1, :cond_5

    .line 234
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->ivAppIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAppIcon()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvAppName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->ivAppIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvAppVersion:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v4, v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 251
    .local v0, "year":I
    const/16 v1, 0x7de

    if-ge v0, v1, :cond_0

    .line 252
    const/16 v0, 0x7de

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvCopyrightEN:Landroid/widget/TextView;

    const v3, 0x7f0f0996

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\d{4}"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivNewVersionIntroduction:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mVersionIntroduction:Landroid/app/PendingIntent;

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvCopyrightCN:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isShowCheckUpdate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isShowFeedback()Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivFeedback:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setVisibility(I)V

    .line 277
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isBackgroundDataEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v1

    if-nez v1, :cond_4

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mBackPromptHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;->prompt()V

    .line 280
    :cond_4
    return-void

    .line 236
    .end local v0    # "year":I
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->ivAppIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 243
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvAppName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->ivAppIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .restart local v0    # "year":I
    :cond_7
    move v1, v2

    .line 260
    goto :goto_2
.end method


# virtual methods
.method checkListTop()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 283
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->isAllListInvisible:Z

    .line 284
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->llListTop:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 285
    .local v2, "count":I
    const v0, 0x7f020015

    .line 286
    .local v0, "arrowResId":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 287
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->llListTop:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 289
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 290
    check-cast v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/TwoLineListItemView;->setArrowRes(I)V

    .line 293
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 286
    :goto_1
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    :sswitch_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->isAllListInvisible:Z

    goto :goto_1

    .line 303
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->isAllListInvisible:Z

    if-eqz v4, :cond_2

    .line 304
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vCenterLine:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vfList:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 307
    :cond_2
    return-void

    .line 293
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method displayList(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutScreen:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;->displayList(I)V

    .line 384
    return-void
.end method

.method public getAboutScreen()Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutScreen:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;

    return-object v0
.end method

.method public getCenterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->llCenter:Landroid/view/View;

    return-object v0
.end method

.method public getList()Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vfList:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method public getListIndex()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    return v0
.end method

.method public hideCenterView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->llCenter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vCenterLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    return-void
.end method

.method isSubAppInstalled()Z
    .locals 4

    .prologue
    .line 161
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getSubApps()Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, "subApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mPackageHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v3, 0x1

    .line 167
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 390
    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 391
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->displayList(I)V

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "from":Ljava/lang/String;
    const-string v2, "from camera"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutScreen:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;->onBackPressed()Z

    move-result v1

    .line 402
    .local v1, "handled":Z
    if-nez v1, :cond_1

    .line 403
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 397
    .end local v1    # "handled":Z
    :cond_4
    const-string v2, "from gallery"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    .line 105
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    .line 106
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mCmccPromptHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/CmccPromptHelper;

    .line 107
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/IntentHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/IntentHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mIntentHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/IntentHelper;

    .line 109
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 110
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    .line 111
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mPackageHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;

    .line 112
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ClipboardHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ClipboardHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mClipboardHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ClipboardHelper;

    .line 113
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mBackPromptHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/BackgroundDataPromptHelper;

    .line 115
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->configTheme()V

    .line 116
    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setContentView(I)V

    .line 118
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->initExtras()V

    .line 119
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->findViews()V

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setListeners()V

    .line 121
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setViews()V

    .line 123
    const v1, 0x7f0f0216

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->setTitle(I)V

    .line 125
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->configActionBar()V

    .line 127
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 128
    .local v0, "tablet_land":Z
    if-eqz v0, :cond_0

    .line 129
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/TabletAboutScreen;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutScreen:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;

    .line 136
    :goto_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mContactsUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    .line 139
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->isSubAppInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/TwoAppCheckUpdateUIHelper;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mCheckUpdateUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;

    .line 147
    :goto_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutCheckerHiddenInvoker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutCheckerHiddenInvoker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/AboutCheckerHiddenInvoker;->onCreate()V

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mContactsUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ContactsUIHelper;->onCreate()V

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mCheckUpdateUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;->onCreate()V

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutScreen:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;->onCreate()V

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->checkListTop()V

    .line 158
    return-void

    .line 131
    :cond_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/NormalAboutScreen;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutScreen:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/screen/AboutScreen;

    goto :goto_0

    .line 143
    :cond_1
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivCheckUpdate:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mCheckUpdateUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onPause()V

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mRefreshTimer:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->stop()V

    .line 228
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 213
    const-string/jumbo v0, "view_flipper_index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    .line 214
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->displayList(I)V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onResume()V

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mRefreshTimer:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/HandlerTimer;->start()V

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mCheckUpdateUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;->onResume()V

    .line 222
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    const-string/jumbo v0, "view_flipper_index"

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    return-void
.end method

.method refreshUpdateViews()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mCheckUpdateUIHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;->refreshUpdateViews()V

    .line 312
    return-void
.end method

.method public setListIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 353
    iput p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vfList:Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mListIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 355
    return-void
.end method

.method setListeners()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 421
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v3

    .line 422
    .local v3, "row":Z
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v1

    .line 423
    .local v1, "cmcc":Z
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isBackgroundDataEnabled()Z

    move-result v0

    .line 424
    .local v0, "background_data":Z
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCTA()Z

    move-result v2

    .line 425
    .local v2, "cta":Z
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    .line 426
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setClickable(Z)V

    .line 427
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setArrowVisibility(I)V

    .line 428
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setClickable(Z)V

    .line 429
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setArrowVisibility(I)V

    .line 430
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setClickable(Z)V

    .line 431
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setArrowVisibility(I)V

    .line 432
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setClickable(Z)V

    .line 433
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setArrowVisibility(I)V

    .line 506
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setLongClickable(Z)V

    .line 507
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWeixin:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$8;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 516
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivBBS:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$9;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivNewVersionIntroduction:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$10;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    return-void

    .line 436
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$3;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 458
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivSina:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setLongClickable(Z)V

    .line 461
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$4;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setLongClickable(Z)V

    .line 473
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivEmail:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$5;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 482
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivWebsite:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$6;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setLongClickable(Z)V

    .line 494
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tivQQGroup:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$7;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 349
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/BaseActivity;->setTitle(I)V

    .line 350
    return-void
.end method

.method public showCenterView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->llCenter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->isAllListInvisible:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vCenterLine:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->vCenterLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
