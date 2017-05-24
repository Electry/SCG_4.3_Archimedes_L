.class public Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
.source "CloudAlbumSetUI.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;


# instance fields
.field mAlbumIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSetGridView:Landroid/widget/GridView;

.field private mBundle:Landroid/os/Bundle;

.field private mEmptyView:Landroid/widget/ImageView;

.field private mSelectAlbumId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 47
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mEmptyView:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumSetGridView:Landroid/widget/GridView;

    .line 51
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mSelectAlbumId:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumIdList:Ljava/util/List;

    .line 55
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mBundle:Landroid/os/Bundle;

    .line 59
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mBundle:Landroid/os/Bundle;

    .line 60
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->initViews()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mSelectAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->combinedShareUrl()V

    return-void
.end method

.method private askUserWhetherToSend()V
    .locals 4

    .prologue
    .line 589
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0228

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mDlgContent:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 590
    .local v0, "askDlg":Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_0

    .line 591
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$10;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$10;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 608
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$11;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$11;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 621
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 622
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 625
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private combinedShareUrl()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 628
    const/4 v1, 0x0

    .line 630
    .local v1, "mSelectedAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->getSelectedAlbumList()Ljava/util/List;

    move-result-object v1

    .line 632
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v0

    .line 634
    .local v0, "albumSetController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    if-eqz v0, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 635
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;->requestAlbumOutsideUrl(Ljava/lang/String;)V

    .line 636
    const-string v3, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedAlbumList.get(0).getmAlbumId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v0    # "albumSetController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    :cond_0
    return-void
.end method

.method private deleteAlbum()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 419
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 420
    const/4 v4, 0x0

    .line 421
    .local v4, "selectedAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->getSelectedAlbumList()Ljava/util/List;

    move-result-object v4

    .line 425
    :cond_0
    if-eqz v4, :cond_6

    .line 426
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumIdList:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 427
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumIdList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 429
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 430
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 431
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "albumId":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v6, v5, :cond_3

    if-eqz v0, :cond_3

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 433
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0f026f

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 434
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->cancelEditActionBar()V

    .line 479
    .end local v0    # "albumId":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "selectedAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    :cond_2
    :goto_1
    return-void

    .line 436
    .restart local v0    # "albumId":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "selectedAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    :cond_3
    if-eqz v0, :cond_4

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 437
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mIsDefaultAlbum:Z

    .line 439
    :cond_4
    if-eqz v0, :cond_5

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 440
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumIdList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v0    # "albumId":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 445
    .end local v3    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f022e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0230

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 447
    .local v1, "delDlg":Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_2

    .line 448
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0277

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$5;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0226

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$6;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$6;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 473
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 474
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 477
    .end local v1    # "delDlg":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "selectedAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0f023a

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    return-object v0
.end method

.method private getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    return-object v0
.end method

.method private initViews()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->findViewsId()V

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->dataBindingView()V

    .line 121
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->dealwithEvents()V

    .line 122
    return-void
.end method

.method private sendSMS(Ljava/lang/String;)V
    .locals 3
    .param p1, "smsBody"    # Ljava/lang/String;

    .prologue
    .line 412
    const-string/jumbo v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 413
    .local v1, "smsToUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 414
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "sms_body"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startActivity(Landroid/content/Intent;)V

    .line 416
    return-void
.end method

.method private showCreateAlbumDlg()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0f0226

    .line 234
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0227

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 235
    .local v0, "createDlg":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 236
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0272

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$2;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 244
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 301
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    if-eqz v0, :cond_0

    .line 249
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mInflate:Landroid/view/LayoutInflater;

    const v5, 0x7f040073

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 250
    .local v2, "dlgItemView":Landroid/view/View;
    const v4, 0x7f10030d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 251
    .local v3, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 252
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0277

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$3;

    invoke-direct {v5, p0, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$4;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$4;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 298
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showRenameDlg()V
    .locals 10

    .prologue
    const v9, 0x7f0f0226

    const/4 v8, 0x0

    .line 482
    const/4 v5, 0x0

    .line 483
    .local v5, "selectAlbum":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;
    const/4 v3, 0x0

    .line 484
    .local v3, "oldAlbumName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 485
    .local v4, "renameDlg":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->getSingleSelectedAlbum()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;

    move-result-object v5

    .line 488
    :cond_0
    if-eqz v5, :cond_2

    .line 489
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mSelectAlbumId:Ljava/lang/String;

    .line 490
    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;->getmAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 491
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f022c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 492
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mInflate:Landroid/view/LayoutInflater;

    const v7, 0x7f040073

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 493
    .local v1, "dlgItemView":Landroid/view/View;
    const v6, 0x7f10030d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 494
    .local v2, "edit":Landroid/widget/EditText;
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 497
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 498
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0277

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;

    invoke-direct {v7, p0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$7;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$8;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$8;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 547
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 548
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 549
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 568
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "dlgItemView":Landroid/view/View;
    .end local v2    # "edit":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void

    .line 551
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0225

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0f022d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 552
    if-eqz v4, :cond_1

    .line 553
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$9;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$9;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 560
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 561
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 562
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 563
    const/4 v4, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->cancelEditActionBar()V

    goto :goto_0
.end method


# virtual methods
.method public dataBindingView()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumSetGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumSetGridView:Landroid/widget/GridView;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    :cond_0
    return-void
.end method

.method public dealwithEvents()V
    .locals 3

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v0

    .line 166
    .local v0, "albumsetAdapter":Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mBundle:Landroid/os/Bundle;

    const-string v2, "cloud select folder to upload photo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->isSelectFolder(Z)V

    .line 168
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->setAdapterListener(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter$AdapterListener;)V

    .line 231
    :cond_0
    return-void
.end method

.method public destory()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public findViewsId()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAlbumSetGridView:Landroid/widget/GridView;

    .line 148
    :cond_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 3

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mIsLoadingFinished:Z

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->setLoadingListener(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation$OnSetLoadingPlayListener;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startAnim(Z)V

    .line 86
    :cond_1
    const v0, 0x7f040075

    .line 91
    :goto_0
    return v0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->stopAnim()V

    .line 91
    :cond_3
    const v0, 0x7f04006d

    goto :goto_0
.end method

.method protected getRootViewId()I
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mIsLoadingFinished:Z

    if-nez v0, :cond_0

    .line 100
    const v0, 0x7f10030f

    .line 102
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f1002fe

    goto :goto_0
.end method

.method public onActionBarClick(I)V
    .locals 10
    .param p1, "clickItemId"    # I

    .prologue
    const v9, 0x7f0f023a

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 305
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->onActionBarClick(I)V

    .line 306
    const-string v4, "HWJ"

    const-string v5, "CloudAlbumSetUI onActionBarClick()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sparse-switch p1, :sswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 309
    :sswitch_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_CloudActivity"

    const-string v6, "action_CloudActivity_click_add_or_upload_menu"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->showCreateAlbumDlg()V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 319
    :sswitch_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v4, :cond_0

    .line 320
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showMoreView()V

    goto :goto_0

    .line 325
    :sswitch_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_CloudActivity"

    const-string v6, "action_CloudActivity_click_back_btn"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v4, :cond_2

    .line 328
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showActionbar(Z)V

    .line 329
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToDown(Z)V

    .line 330
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToUp(Z)V

    .line 332
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v4, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->setSelectAll(Z)V

    .line 334
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 339
    :sswitch_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_CloudActivity"

    const-string v6, "action_CloudActivity_click_select_all_menu"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v4, :cond_3

    .line 342
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->getCount()I

    move-result v1

    .line 343
    .local v1, "count":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4, v1, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 345
    .end local v1    # "count":I
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v4, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->setSelectAll(Z)V

    .line 347
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 352
    :sswitch_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_CloudActivity"

    const-string v6, "action_CloudActivity_click_dis_all_menu"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 354
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v4, :cond_4

    .line 355
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4, v7, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 357
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v4, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->setSelectAll(Z)V

    .line 359
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 364
    :sswitch_5
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_CloudActivity"

    const-string v6, "action_CloudActivity_click_download_menu"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 367
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumSetAdapter;->getSelectedAlbumList()Ljava/util/List;

    move-result-object v2

    .line 368
    .local v2, "mSelectedAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 369
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-class v5, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v3, "service":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "Cloud is upload or is download key"

    const/16 v5, 0x11

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-string v4, "Cloud upload list or download list key"

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "mSelectedAlbumList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudAlbum;>;"
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 373
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 374
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 375
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->cancelEditActionBar()V

    goto/16 :goto_0

    .line 378
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "service":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mContext:Landroid/content/Context;

    invoke-static {v4, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 383
    :sswitch_6
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_CloudActivity"

    const-string v6, "action_CloudActivity_click_rename_menu"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 385
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->showRenameDlg()V

    goto/16 :goto_0

    .line 395
    :sswitch_7
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_CloudActivity"

    const-string v6, "action_CloudActivity_click_share_menu"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 397
    const-string v4, "HWJ"

    const-string v5, "CloudAlbumSetUI onActionBarClick() ACTIONBAR_CLOUD_SHARE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->shareSelectedPics()V

    goto/16 :goto_0

    .line 403
    :sswitch_8
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_CloudActivity"

    const-string v6, "action_CloudActivity_click_delete_menu"

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 405
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->deleteAlbum()V

    goto/16 :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x7f1002cf -> :sswitch_5
        0x7f1002d0 -> :sswitch_6
        0x7f1002dc -> :sswitch_0
        0x7f1002de -> :sswitch_2
        0x7f1002e6 -> :sswitch_8
        0x7f1002e7 -> :sswitch_1
        0x7f100320 -> :sswitch_3
        0x7f100321 -> :sswitch_4
        0x7f100322 -> :sswitch_7
    .end sparse-switch
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "intentData"    # Landroid/content/Intent;

    .prologue
    .line 572
    const-string v1, "HWJ"

    const-string/jumbo v2, "onActivityResult  CloudAlbumSetUI Start."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-nez p2, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    const v1, 0x9999

    if-ne p1, v1, :cond_0

    .line 577
    const-string v1, "com.lenovo.ideafriend.contacts.list.pickdataresult"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 578
    .local v0, "contactsId":[J
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult  contactsId.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getContactInfoById([J)V

    .line 581
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mListContact:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mListContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 582
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->setAskDlgInfo()V

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->askUserWhetherToSend()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 126
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_CloudActivity"

    const-string v3, "action_CloudActivity_click_back_btn"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->isShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v5, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getLayoutId()I

    move-result v1

    const v2, 0x7f040075

    if-ne v1, v2, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v0

    .line 132
    .local v0, "albumSetController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;->cancelLoadData()V

    .line 134
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;->closePage()V

    goto :goto_0

    .line 137
    .end local v0    # "albumSetController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;

    move-result-object v0

    .line 139
    .restart local v0    # "albumSetController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumSetController;->closePage()V

    goto :goto_0
.end method

.method public onSetLoadingPlay(Z)V
    .locals 1
    .param p1, "isPlay"    # Z

    .prologue
    .line 655
    if-nez p1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->finish()V

    .line 659
    :cond_0
    return-void
.end method

.method protected showOrHideEmptyView(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100301

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mEmptyView:Landroid/widget/ImageView;

    .line 647
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mEmptyView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 648
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumSetUI;->mEmptyView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    :cond_0
    return-void

    .line 648
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
