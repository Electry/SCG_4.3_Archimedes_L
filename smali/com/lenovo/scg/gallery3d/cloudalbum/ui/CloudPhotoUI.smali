.class public Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;
.super Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
.source "CloudPhotoUI.java"


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mClickPhotoId:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/ImageView;

.field private mIsFromSharedPhoto:Z

.field public mPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPhotoPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V

    .line 33
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mClickPhotoId:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mEmptyView:Landroid/widget/ImageView;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mIsFromSharedPhoto:Z

    .line 41
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionBarLayout:Landroid/view/View;

    .line 205
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->initViews()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionBarLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mClickPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mClickPhotoId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mIsFromSharedPhoto:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->combinedSharedPhotoUrl()V

    return-void
.end method

.method private askWhetherToSendPhoto()V
    .locals 5

    .prologue
    .line 350
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0228

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mDlgContent:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 352
    .local v0, "askDlg":Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_0

    .line 353
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$5;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$5;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$6;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$6;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 386
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 392
    .end local v0    # "askDlg":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f023a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private combinedSharedPhotoUrl()V
    .locals 3

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;

    move-result-object v0

    .line 396
    .local v0, "photoController":Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mClickPhotoId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;->requestPhotoOutsideUrl(Ljava/lang/String;)V

    .line 399
    :cond_0
    const-string v1, "HWJ"

    const-string v2, " combinedSharedPhotoUrl end "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method private deletePhoto()V
    .locals 5

    .prologue
    .line 290
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f022f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0231

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 293
    .local v0, "delDlg":Landroid/app/AlertDialog$Builder;
    if-eqz v0, :cond_0

    .line 294
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$4;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$4;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 326
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 327
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 333
    .end local v0    # "delDlg":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f023a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    return-object v0
.end method

.method private getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;

    return-object v0
.end method

.method private initViews()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->findViewsId()V

    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->dataBindingView()V

    .line 92
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->dealwithEvents()V

    .line 93
    return-void
.end method


# virtual methods
.method public dataBindingView()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "curClickPhoto":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->getmClickPhoto()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 131
    .end local v0    # "curClickPhoto":I
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showBar(Z)V

    .line 134
    :cond_1
    return-void
.end method

.method public dealwithEvents()V
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getAdapter()Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    move-result-object v0

    .line 139
    .local v0, "photoAdapter":Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;
    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->setAdapterListener(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter$AdapterListener;)V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPagerListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 203
    :cond_1
    return-void
.end method

.method public destory()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .line 59
    return-void
.end method

.method public findViewsId()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    .line 117
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionBarLayout:Landroid/view/View;

    .line 119
    :cond_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 3

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mIsLoadingFinished:Z

    if-nez v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->startAnim(Z)V

    .line 70
    :cond_1
    const v0, 0x7f040075

    .line 75
    :goto_0
    return v0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;->stopAnim()V

    .line 75
    :cond_3
    const v0, 0x7f040078

    goto :goto_0
.end method

.method protected getRootViewId()I
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mIsLoadingFinished:Z

    if-nez v0, :cond_0

    .line 83
    const v0, 0x7f10030f

    .line 85
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f10031a

    goto :goto_0
.end method

.method public loadingSharedUrlData(Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedUrl"    # Ljava/lang/String;

    .prologue
    .line 477
    if-eqz p1, :cond_0

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mIsFromSharedPhoto:Z

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    check-cast v0, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;->requestSharedPhotoData(Ljava/lang/String;)V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    const v1, 0x7f0f023a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onActionBarClick(I)V
    .locals 8
    .param p1, "clickItemId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 230
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->onActionBarClick(I)V

    .line 231
    sparse-switch p1, :sswitch_data_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 234
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->shareSelectedPics()V

    goto :goto_0

    .line 238
    :sswitch_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_CloudActivity"

    const-string v5, "action_CloudActivity_click_back_btn"

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showActionbar(Z)V

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 254
    :sswitch_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_CloudActivity"

    const-string v5, "action_CloudActivity_click_delete_menu"

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->deletePhoto()V

    goto :goto_0

    .line 263
    :sswitch_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "category_CloudActivity"

    const-string v5, "action_CloudActivity_click_download_menu"

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "mSelectedPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->getClickPhoto()Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-class v6, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudDownloadActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x14000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startActivity(Landroid/content/Intent;)V

    .line 273
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-class v4, Lcom/lenovo/scg/gallery3d/cloudalbum/service/CloudUpAndDownService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v2, "service":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "Cloud is upload or is download key"

    const/16 v4, 0x12

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSelectedPhotoList:Ljava/util/List;

    .line 278
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 281
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "mSelectedPhotoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    .end local v2    # "service":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0f023a

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x7f1002de -> :sswitch_1
        0x7f1002e9 -> :sswitch_0
        0x7f1002ec -> :sswitch_2
        0x7f1002ef -> :sswitch_3
        0x7f1002f3 -> :sswitch_0
        0x7f1002f6 -> :sswitch_3
    .end sparse-switch
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "intentData"    # Landroid/content/Intent;

    .prologue
    .line 337
    const v1, 0x9999

    if-ne p1, v1, :cond_1

    .line 338
    const-string v1, "com.lenovo.ideafriend.contacts.list.pickdataresult"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 339
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

    .line 341
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getContactInfoById([J)V

    .line 342
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mListContact:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mListContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->setAskDlgInfo()V

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->askWhetherToSendPhoto()V

    .line 347
    .end local v0    # "contactsId":[J
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 106
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_CloudActivity"

    const-string v2, "action_CloudActivity_click_back_btn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;->closePage()V

    .line 111
    return-void
.end method

.method public setNextPhoto()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 403
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_2

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "curClickPhoto":I
    const/4 v1, 0x0

    .line 406
    .local v1, "nextPhoto":I
    const/4 v3, 0x0

    .line 408
    .local v3, "photoName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    if-eqz v4, :cond_2

    .line 411
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->getViewPagerCurrentPos()I

    move-result v0

    .line 412
    const-string v4, "HWJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curClickPhoto = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->getmPhotoList()Ljava/util/List;

    move-result-object v2

    .line 415
    .local v2, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    if-eqz v2, :cond_2

    .line 416
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 417
    move v1, v0

    .line 419
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 420
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 421
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->setmClickPhoto(I)V

    .line 422
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 423
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mClickPhotoId:Ljava/lang/String;

    .line 424
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoName()Ljava/lang/String;

    move-result-object v3

    .line 434
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 435
    const-string v4, "HWJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "photoName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v4, 0x2e

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 437
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 439
    :cond_1
    const-string v4, "HWJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "photoName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v4, :cond_2

    .line 441
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setPhotoTile(Ljava/lang/String;)V

    .line 454
    .end local v0    # "curClickPhoto":I
    .end local v1    # "nextPhoto":I
    .end local v2    # "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    .end local v3    # "photoName":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 426
    .restart local v0    # "curClickPhoto":I
    .restart local v1    # "nextPhoto":I
    .restart local v2    # "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    .restart local v3    # "photoName":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 427
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 428
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->setmClickPhoto(I)V

    .line 429
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 430
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mClickPhotoId:Ljava/lang/String;

    .line 431
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->getmPhotoName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 444
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 445
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v4, :cond_2

    .line 446
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showHeadBar(Z)V

    .line 447
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showPhotoEditView(Z)V

    goto :goto_1
.end method

.method protected showOrHideEmptyView(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getLayout()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getLayout()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10031d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mEmptyView:Landroid/widget/ImageView;

    .line 461
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mEmptyView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 462
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mEmptyView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;->getmPhotoList()Ljava/util/List;

    move-result-object v0

    .line 467
    .local v0, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    if-eqz v0, :cond_1

    .line 468
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudPhotoUI;->getController()Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudPhotoController;->closePage()V

    .line 474
    .end local v0    # "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;>;"
    :cond_1
    return-void

    .line 462
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method
