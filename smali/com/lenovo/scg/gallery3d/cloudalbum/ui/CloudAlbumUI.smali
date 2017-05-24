.class public Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
.source "CloudAlbumUI.java"


# instance fields
.field private mAlbumGridView:Landroid/widget/GridView;

.field private mEmptyView:Landroid/widget/ImageView;

.field private mFolderId:Ljava/lang/String;

.field private mIsFromShared:Z

.field mPhotoIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 38
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mEmptyView:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAlbumGridView:Landroid/widget/GridView;

    .line 42
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mTitle:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mPhotoIdList:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsFromShared:Z

    .line 52
    const-string v0, "cloud click album name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mTitle:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->initViews()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsFromShared:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->combinedSharedPhotosUrl()V

    return-void
.end method

.method private askWhetherToSendPhotos()V
    .locals 5

    .prologue
    .line 474
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0228

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mDlgContent:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 476
    .local v0, "askDlg":Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_0

    .line 477
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$4;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$4;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 494
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$5;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$5;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 506
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 507
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 512
    .end local v0    # "askDlg":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f023a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private combinedSharedPhotosUrl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 515
    const/4 v3, 0x0

    .line 517
    .local v3, "selectedPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v2, "photoIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 519
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getSelectedAlbumList()Ljava/util/List;

    move-result-object v3

    .line 520
    if-eqz v3, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    move-result-object v0

    .line 523
    .local v0, "albumController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 524
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 525
    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;->requestSingelOutsideUrl(Ljava/lang/String;)V

    .line 540
    :cond_0
    :goto_0
    const-string v4, "HWJ"

    const-string v5, " combinedSharedPhotosUrl end "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v0    # "albumController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    :cond_1
    return-void

    .line 530
    .restart local v0    # "albumController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 531
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 532
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 536
    :cond_4
    if-eqz v0, :cond_0

    .line 537
    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;->requestMultSharedUrl(Ljava/util/List;)V

    goto :goto_0
.end method

.method private deletePhotos()V
    .locals 7

    .prologue
    .line 374
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 375
    const/4 v3, 0x0

    .line 377
    .local v3, "selectedPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getSelectedAlbumList()Ljava/util/List;

    move-result-object v3

    .line 381
    :cond_0
    if-eqz v3, :cond_3

    .line 382
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mPhotoIdList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 383
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mPhotoIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 385
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 386
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 387
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mPhotoIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f022f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0231

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    .local v0, "delDlg":Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_4

    .line 394
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0277

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0226

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$3;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 422
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 423
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 428
    .end local v0    # "delDlg":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "selectedPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    :cond_4
    :goto_1
    return-void

    .line 426
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0f023a

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    return-object v0
.end method

.method private getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->findViewsId()V

    .line 101
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->dataBindingView()V

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->dealwithEvents()V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->hideBar(Z)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public dataBindingView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAlbumGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAlbumGridView:Landroid/widget/GridView;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v1, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "albumName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsFromShared:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsFromShared:Z

    if-ne v3, v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showHeadBar(Z)V

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setPhotoTile(Ljava/lang/String;)V

    .line 158
    .end local v0    # "albumName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 148
    .restart local v0    # "albumName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToUp(Z)V

    goto :goto_1
.end method

.method public dealwithEvents()V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v0

    .line 163
    .local v0, "albumAdapter":Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;
    if-eqz v0, :cond_0

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->setAdapterListener(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter$AdapterListener;)V

    .line 224
    :cond_0
    return-void
.end method

.method public destory()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public findViewsId()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAlbumGridView:Landroid/widget/GridView;

    .line 133
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mEmptyView:Landroid/widget/ImageView;

    .line 135
    :cond_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 3

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsLoadingFinished:Z

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startAnim(Z)V

    .line 80
    :cond_1
    const v0, 0x7f040075

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->stopAnim()V

    .line 85
    :cond_3
    const v0, 0x7f04006f

    goto :goto_0
.end method

.method protected getRootViewId()I
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsLoadingFinished:Z

    if-nez v0, :cond_0

    .line 93
    const v0, 0x7f10030f

    .line 95
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f100308

    goto :goto_0
.end method

.method public loadingSharedUrlData(Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 546
    if-eqz p1, :cond_0

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mIsFromShared:Z

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;->requestSharedAlbumData(Ljava/lang/String;)V

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0f023a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onActionBarClick(I)V
    .locals 12
    .param p1, "clickItemId"    # I

    .prologue
    const v8, 0x7f0f023a

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 239
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->onActionBarClick(I)V

    .line 240
    const-string v6, "HWJ"

    const-string v7, "CloudAlbumUI onActionBarClick()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sparse-switch p1, :sswitch_data_0

    .line 371
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 243
    :sswitch_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_CloudActivity"

    const-string v8, "action_CloudActivity_click_add_or_upload_menu"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getmAlbumId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mFolderId:Ljava/lang/String;

    .line 248
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    if-eqz v6, :cond_0

    .line 250
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "get multi folder id"

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mFolderId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v6, "get multi folder name"

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "com.lenovo.scg.action.multi.photo"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const-string v7, "com.lenovo.scg.gallery3d.app.Gallery"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v6, "image/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 259
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const v7, 0x9998

    invoke-virtual {v6, v3, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-string v7, "No Third App"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 261
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0f023a

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 274
    :sswitch_2
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getSelectedAlbumList()Ljava/util/List;

    move-result-object v4

    .line 276
    .local v4, "mSelectedPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 277
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-class v9, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v8, 0x14000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-class v7, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v5, "service":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v6, "Cloud is upload or is download key"

    const/16 v7, 0x12

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    sput-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSelectedPhotoList:Ljava/util/List;

    .line 284
    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 285
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 286
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->cancelEditActionBar()V

    goto/16 :goto_0

    .line 290
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "mSelectedPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    .end local v5    # "service":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 310
    :sswitch_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_CloudActivity"

    const-string v8, "action_CloudActivity_click_back_btn"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v6, :cond_4

    .line 313
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->isShow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 314
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v6, v11}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToUp(Z)V

    .line 318
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showActionbar(Z)V

    .line 319
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToDown(Z)V

    .line 321
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v6, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->setSelectAll(Z)V

    .line 323
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 316
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToUp(Z)V

    goto :goto_1

    .line 328
    :sswitch_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_CloudActivity"

    const-string v8, "action_CloudActivity_click_select_all_menu"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v6, :cond_6

    .line 331
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->getCount()I

    move-result v1

    .line 332
    .local v1, "count":I
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v6, v1, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 334
    .end local v1    # "count":I
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v6, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->setSelectAll(Z)V

    .line 336
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 341
    :sswitch_5
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "category_CloudActivity"

    const-string v8, "action_CloudActivity_click_dis_all_menu"

    invoke-virtual {v6, v7, v8, v10, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v6, :cond_7

    .line 344
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v6, v9, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 346
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v6, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudAlbumAdapter;->setSelectAll(Z)V

    .line 348
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 362
    :sswitch_6
    const-string v6, "HWJ"

    const-string v7, "CloudAlbumUI onActionBarClick() ACTIONBAR_CLOUD_SHARE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->shareSelectedPics()V

    goto/16 :goto_0

    .line 367
    :sswitch_7
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->deletePhotos()V

    goto/16 :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1002d0 -> :sswitch_0
        0x7f1002dc -> :sswitch_1
        0x7f1002de -> :sswitch_3
        0x7f1002e6 -> :sswitch_7
        0x7f1002e7 -> :sswitch_2
        0x7f100320 -> :sswitch_4
        0x7f100321 -> :sswitch_5
        0x7f100322 -> :sswitch_6
    .end sparse-switch
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "intentData"    # Landroid/content/Intent;

    .prologue
    .line 432
    const-string v2, "HWJ"

    const-string/jumbo v4, "onActivityResult  CloudAlbumSetUI Start."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-nez p2, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    const v2, 0x9999

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 437
    const-string v2, "com.lenovo.ideafriend.contacts.list.pickdataresult"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v9

    .line 438
    .local v9, "contactsId":[J
    const-string v2, "HWJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityResult  contactsId.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getContactInfoById([J)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mListContact:Ljava/util/List;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->setAskDlgInfo()V

    .line 444
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->askWhetherToSendPhotos()V

    goto :goto_0

    .line 445
    .end local v9    # "contactsId":[J
    :cond_3
    const v2, 0x9998

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "photos-path"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 447
    .local v15, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v13, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    const/4 v12, 0x0

    .line 449
    .local v12, "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    const/4 v10, 0x0

    .line 450
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 451
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_size"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 453
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 454
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 455
    new-instance v12, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .end local v12    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-direct {v12}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;-><init>()V

    .line 456
    .restart local v12    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mFolderId:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmId(Ljava/lang/String;)V

    .line 457
    const-string v2, "_data"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmPath(Ljava/lang/String;)V

    .line 458
    const-string v2, "_size"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 459
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 462
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-class v6, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudUploadActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x14000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startActivity(Landroid/content/Intent;)V

    .line 464
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {v14, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    .local v14, "service":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 466
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v2, "Cloud is upload or is download key"

    const/16 v4, 0x13

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    const-string v2, "Cloud upload list or download list key"

    invoke-virtual {v8, v2, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 468
    invoke-virtual {v14, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v2, v14}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_CloudActivity"

    const-string v3, "action_CloudActivity_click_back_btn"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->isShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v5, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToUp(Z)V

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToDown(Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->switchIconToUp(Z)V

    .line 118
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    move-result-object v0

    .line 119
    .local v0, "albumController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;->closePage()V

    goto :goto_0

    .line 120
    .end local v0    # "albumController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getLayoutId()I

    move-result v1

    const v2, 0x7f040075

    if-ne v1, v2, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;

    move-result-object v0

    .line 122
    .restart local v0    # "albumController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;->cancelLoadData()V

    .line 124
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudAlbumController;->closePage()V

    goto :goto_0
.end method

.method public showOrHideEmptyView(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mEmptyView:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mEmptyView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudAlbumUI;->mEmptyView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    :cond_0
    return-void

    .line 232
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
