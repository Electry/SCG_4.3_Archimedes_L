.class public Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
.super Landroid/app/Activity;
.source "CloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;
    }
.end annotation


# instance fields
.field private mAccountUserId:Landroid/content/SharedPreferences$Editor;

.field private mBundle:Landroid/os/Bundle;

.field private mCloudBasePageStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field public mIsCloudChange:Z

.field private mIsFromShared:Z

.field private mIsMultiPhoto:Z

.field private mIsPhotoShared:Z

.field private mSharedUrl:Ljava/lang/String;

.field private mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    .line 55
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mEmptyView:Landroid/widget/ImageView;

    .line 57
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsCloudChange:Z

    .line 59
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mSharedUrl:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsFromShared:Z

    .line 63
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsMultiPhoto:Z

    .line 65
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsPhotoShared:Z

    .line 67
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    .line 69
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mAccountUserId:Landroid/content/SharedPreferences$Editor;

    .line 282
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;

    .line 284
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mHandler:Landroid/os/Handler;

    .line 324
    return-void
.end method

.method private InitReceiver()V
    .locals 3

    .prologue
    .line 314
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;

    .line 315
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    .local v0, "intFilter":Landroid/content/IntentFilter;
    const-string v1, "Cloud update upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "Cloud finished upload action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v1, "Cloud update download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "Cloud finished download action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v1, "Cloud back pressed action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->judgeSameUserId()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mAccountUserId:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mAccountUserId:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startRelatedPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initPage()V
    .locals 3

    .prologue
    .line 203
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;-><init>(Landroid/app/Activity;)V

    .line 205
    .local v0, "lcpaccount":Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->checkLoginAndAuthThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    .line 233
    .end local v0    # "lcpaccount":Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;
    :goto_0
    return-void

    .line 230
    :cond_0
    const v1, 0x7f0f023a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 231
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->finish()V

    goto :goto_0
.end method

.method private judgeSameUserId()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getGalleryLocalPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, "lastUserIdData":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "user id"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "lastUserId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    const-string v3, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------lastUserId = ----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v3, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------PhotoUtil.getUserId() = ----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoUtil;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mIsSameUserId:Z

    .line 198
    :goto_0
    return v2

    .line 197
    :cond_0
    sput-boolean v3, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mIsSameUserId:Z

    move v2, v3

    .line 198
    goto :goto_0
.end method

.method private startCurPage()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mEmptyView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsFromShared:Z

    if-eqz v0, :cond_2

    .line 255
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsMultiPhoto:Z

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsPhotoShared:Z

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 261
    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startRelatedPage()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mEmptyView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsFromShared:Z

    if-eqz v0, :cond_1

    .line 238
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsMultiPhoto:Z

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "HWJ"

    const-string/jumbo v1, "start album page start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    .line 241
    const-string v0, "HWJ"

    const-string/jumbo v1, "start album page end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v0, "HWJ"

    const-string/jumbo v1, "start photo page start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    .line 245
    const-string v0, "HWJ"

    const-string/jumbo v1, "start photo page end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startPage(ILandroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public closeCurrentPage()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    .line 154
    .local v0, "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->getmPageTye()I

    move-result v2

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 155
    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->photoPageDestory()V

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->destory()V

    .line 158
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->showPage()V

    .line 160
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsCloudChange:Z

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->updateDataInfo()V

    .line 162
    const-string v1, "HWJ"

    const-string/jumbo v2, "need to update data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v1, "HWJ"

    const-string/jumbo v2, "not need to update data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudData;->clearCloudData()V

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->finish()V

    goto :goto_0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 266
    const v0, 0x7f100316

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    const-string v0, "HWJ"

    const-string/jumbo v1, "onActivityResult in here."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    invoke-virtual {v0, p1, p3}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->onActivityResult(ILandroid/content/Intent;)V

    .line 276
    const-string v0, "HWJ"

    const-string v1, "mCloudBasePageStack.peek().onActivityResult(data);"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    const-string v0, "HWJ"

    const-string/jumbo v1, "onActivityResult S_REQUEST_CODE_PICK in here."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->onBackPressed()V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_CloudActivity"

    const-string v3, "action_CloudActivity_oncreate"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    const v1, 0x7f040076

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->setContentView(I)V

    .line 80
    const v1, 0x7f100317

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mEmptyView:Landroid/widget/ImageView;

    .line 81
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "getIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mBundle:Landroid/os/Bundle;

    .line 88
    :cond_0
    const-string v1, "Sms receicer shared url key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mSharedUrl:Ljava/lang/String;

    .line 89
    const-string v1, "Sms receicer key"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsFromShared:Z

    .line 90
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsFromShared:Z

    sput-boolean v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mIsFromShared:Z

    .line 91
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mSharedUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mSharedUrl:Ljava/lang/String;

    const-string v2, "/p/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsMultiPhoto:Z

    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mSharedUrl:Ljava/lang/String;

    const-string/jumbo v2, "v2/tiny"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsPhotoShared:Z

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->InitReceiver()V

    .line 97
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->initPage()V

    .line 98
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mUpdateReceiver:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity$UpdateReceiver;

    .line 107
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 120
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 126
    return-void
.end method

.method public startPage(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "pageType"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x3

    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string v2, "Cloud init login state action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    invoke-static {p1, p0, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPageFactory;->createCloudPage(ILcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    move-result-object v0

    .line 131
    .local v0, "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->hidePage()V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsFromShared:Z

    if-eqz v1, :cond_4

    .line 136
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsMultiPhoto:Z

    if-eqz v1, :cond_3

    .line 137
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->getmPageTye()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 138
    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;

    .end local v0    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mSharedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudAlbumPage;->showShareAlbumPage(Ljava/lang/String;)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 139
    .restart local v0    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->getmPageTye()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    invoke-virtual {v1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->showAndLoading(Landroid/os/Bundle;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mIsPhotoShared:Z

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->getmPageTye()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 144
    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;

    .end local v0    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mSharedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->showSharePhotoPage(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .restart local v0    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    invoke-virtual {v1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->showAndLoading(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public switchNextPhoto()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->mCloudBasePageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;

    .line 174
    .local v0, "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;->getmPageTye()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 175
    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;

    .end local v0    # "page":Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudBasePage;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudPhotoPage;->toShowNextPhoto()V

    .line 177
    :cond_0
    return-void
.end method
