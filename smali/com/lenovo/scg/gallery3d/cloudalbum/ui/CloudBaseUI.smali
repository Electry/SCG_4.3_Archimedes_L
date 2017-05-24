.class public abstract Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
.super Landroid/widget/RelativeLayout;
.source "CloudBaseUI.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;
.implements Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;


# static fields
.field protected static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field protected static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;


# instance fields
.field protected mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

.field protected mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

.field protected mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

.field protected mContactNames:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

.field protected mDlgContent:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field protected mInflate:Landroid/view/LayoutInflater;

.field protected mIsDefaultAlbum:Z

.field protected mIsLoadingFinished:Z

.field protected mLastPos:I

.field protected mLayout:Landroid/view/View;

.field protected mListContact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

.field protected mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

.field protected mPhotosUri:Ljava/lang/String;

.field protected mProgressDlg:Landroid/app/ProgressDialog;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mSIMState:Ljava/lang/String;

.field protected mSMSMsgContent:Ljava/lang/String;

.field protected mSyncLoadingFinished:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 102
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 58
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mInflate:Landroid/view/LayoutInflater;

    .line 62
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    .line 64
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    .line 66
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .line 68
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mLayout:Landroid/view/View;

    .line 70
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    .line 72
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mIsDefaultAlbum:Z

    .line 74
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mIsLoadingFinished:Z

    .line 76
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mSyncLoadingFinished:Z

    .line 78
    iput v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mLastPos:I

    .line 80
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    .line 82
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mDlgContent:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotosUri:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mSMSMsgContent:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mSIMState:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 94
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 96
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mLoadingAnim:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudLoadingAnimation;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    .line 121
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$1;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    .line 387
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    .line 392
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 393
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$3;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 405
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mInflate:Landroid/view/LayoutInflater;

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->initmLayout()V

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showDlg(I)V

    return-void
.end method

.method private showDlg(I)V
    .locals 5
    .param p1, "stringId"    # I

    .prologue
    .line 364
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "dlgMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0225

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 366
    .local v1, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$2;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 381
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 382
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 383
    return-void
.end method

.method private showNoSMSCard()V
    .locals 4

    .prologue
    .line 626
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mSIMState:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 627
    .local v1, "smsDlg":Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_0

    .line 628
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$4;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI$4;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 635
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 636
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 637
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 639
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public addPhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)V
    .locals 4
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p2, "pageType"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 511
    return-void
.end method

.method public cancelEditActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0, v1, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setSelect(II)V

    .line 760
    :cond_0
    return-void
.end method

.method public createCloudDlg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "cloudDlg":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    .line 352
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 356
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1    # "cloudDlg":Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    .restart local v1    # "cloudDlg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 360
    :cond_0
    return-object v1
.end method

.method protected abstract dataBindingView()V
.end method

.method protected abstract dealwithEvents()V
.end method

.method public abstract destory()V
.end method

.method protected abstract findViewsId()V
.end method

.method protected getContactInfoById([J)V
    .locals 20
    .param p1, "contactsId"    # [J

    .prologue
    .line 642
    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .local v16, "idSetBuilder":Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    .line 650
    .local v12, "first":Z
    move-object/from16 v8, p1

    .local v8, "arr$":[J
    array-length v0, v8

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_3

    aget-wide v14, v8, v13

    .line 651
    .local v14, "id":J
    if-eqz v12, :cond_2

    .line 652
    const/4 v12, 0x0

    .line 653
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 650
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 655
    :cond_2
    const/16 v2, 0x2c

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 660
    .end local v14    # "id":J
    :cond_3
    const/4 v11, 0x0

    .line 661
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 663
    .local v5, "whereClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 666
    .end local v5    # "whereClause":Ljava/lang/String;
    :cond_4
    if-eqz v11, :cond_0

    .line 671
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mDlgContent:Ljava/lang/String;

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 676
    :cond_5
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 678
    new-instance v9, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;

    invoke-direct {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;-><init>()V

    .line 680
    .local v9, "contact":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;
    const-string v2, "display_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 681
    .local v18, "nameFieldColumnIndex":I
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, "contactName":Ljava/lang/String;
    invoke-virtual {v9, v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->setmContactName(Ljava/lang/String;)V

    .line 683
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult  contactName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v2, "data1"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 686
    .local v19, "phoneNum":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->setmContactNumber(Ljava/lang/String;)V

    .line 687
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult  phoneNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 692
    .end local v9    # "contact":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;
    .end local v10    # "contactName":Ljava/lang/String;
    .end local v18    # "nameFieldColumnIndex":I
    .end local v19    # "phoneNum":Ljava/lang/String;
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mDlgContent:Ljava/lang/String;

    .line 693
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 692
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mDlgContent:Ljava/lang/String;

    .line 693
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected getLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mLayout:Landroid/view/View;

    return-object v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected abstract getRootViewId()I
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 547
    :cond_0
    return-void
.end method

.method protected initmLayout()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mInflate:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->getLayoutId()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mLayout:Landroid/view/View;

    .line 426
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->getRootViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    .line 427
    return-void
.end method

.method public isSMSExist()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const-string/jumbo v3, "phone"

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, "simState":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 441
    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v2

    .line 455
    :goto_0
    return v1

    .line 443
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0238

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mSIMState:Ljava/lang/String;

    move v1, v2

    .line 444
    goto :goto_0

    .line 447
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0239

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mSIMState:Ljava/lang/String;

    move v1, v2

    .line 448
    goto :goto_0

    .line 451
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public loadingCloudData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;->requestData(Landroid/os/Bundle;)V

    .line 592
    :cond_0
    return-void
.end method

.method public onActionBarClick(I)V
    .locals 3
    .param p1, "clickItemId"    # I

    .prologue
    .line 563
    const-string v0, "HWJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudBaseUI onActionBarClick() clickItemId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sparse-switch p1, :sswitch_data_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 566
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->onBackPressed()V

    goto :goto_0

    .line 574
    :sswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showSelectView()V

    goto :goto_0

    .line 580
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->showShareView()V

    goto :goto_0

    .line 564
    :sswitch_data_0
    .sparse-switch
        0x7f1002d2 -> :sswitch_0
        0x7f1002e0 -> :sswitch_1
        0x7f1002e3 -> :sswitch_2
    .end sparse-switch
.end method

.method public abstract onActivityResult(ILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()V
.end method

.method public onDeleteFinished(Ljava/util/List;I)V
    .locals 2
    .param p2, "pageType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "cloudDataList":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 486
    .local v0, "delFinishMsg":Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 487
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 488
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 489
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 490
    return-void
.end method

.method public onError(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 528
    if-eqz p1, :cond_0

    .line 529
    const-string v2, "cloud_error"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 530
    .local v1, "errorCode":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 531
    .local v0, "errhMsg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 532
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    .end local v0    # "errhMsg":Landroid/os/Message;
    .end local v1    # "errorCode":I
    :cond_0
    return-void
.end method

.method public onGetOutsideUrlFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "outsideUrl"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 478
    .local v0, "getUrlFinishMsg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 479
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 481
    return-void
.end method

.method public onLoadingDataFinished(Ljava/util/List;IIZ)V
    .locals 5
    .param p2, "pageType"    # I
    .param p3, "clickPos"    # I
    .param p4, "isSyncFinish"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "cloudDataList":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v2, "HWJ"

    const-string v3, "CloudBaseUI onLoadingDataFinished() start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mIsLoadingFinished:Z

    .line 462
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 463
    .local v0, "finishMsg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 464
    .local v1, "msgBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "sync finish"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 466
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 467
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 468
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 469
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 470
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    const-string v2, "HWJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clickPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v2, "HWJ"

    const-string v3, "CloudBaseUI onLoadingDataFinished() end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public onRenameFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "cloudDataList":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 521
    .local v0, "renameMsg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 522
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 523
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    return-void
.end method

.method public onShowSyncLoading(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mSyncLoadingFinished:Z

    .line 495
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mSyncLoadingFinished:Z

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;->setSyncFinishedFlag(Z)V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 499
    .local v0, "syncMsg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 500
    if-eqz p1, :cond_1

    .line 501
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 505
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    return-void

    .line 503
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method

.method public removeLayout()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    :cond_0
    return-void
.end method

.method protected sendMessageToUser(Ljava/lang/String;)V
    .locals 14
    .param p1, "shareUrl"    # Ljava/lang/String;

    .prologue
    .line 723
    if-nez p1, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    :try_start_0
    const-string v10, "android.telephony.SmsManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 728
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getDefault"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 729
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 730
    .local v9, "smsMessager":Ljava/lang/Object;
    const-string v10, "divideMessage"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 731
    .local v2, "divideMessage":Ljava/lang/reflect/Method;
    const-string/jumbo v10, "sendMultipartTextMessage"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Ljava/util/ArrayList;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-class v13, Ljava/util/ArrayList;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-class v13, Ljava/util/ArrayList;

    aput-object v13, v11, v12

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 733
    .local v8, "sendMultipartTextMessage":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 734
    .local v7, "partContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v11, 0x7f0f022a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "content":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    if-eqz v10, :cond_2

    .line 736
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 737
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->getmContactNumber()Ljava/lang/String;

    move-result-object v6

    .line 738
    .local v6, "mobileNum":Ljava/lang/String;
    const-string v10, "HWJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "smsMsg = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v2, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "partContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v7, Ljava/util/ArrayList;

    .line 740
    .restart local v7    # "partContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 743
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "divideMessage":Ljava/lang/reflect/Method;
    .end local v4    # "i":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "mobileNum":Ljava/lang/String;
    .end local v7    # "partContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "sendMultipartTextMessage":Ljava/lang/reflect/Method;
    .end local v9    # "smsMessager":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 745
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "CloudBaseUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SmsManager Exception e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 748
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v12, 0x7f0f022b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 749
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->cancelEditActionBar()V

    .line 750
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 751
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudBaseAdapter;

    .line 418
    return-void
.end method

.method public setAskDlgInfo()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 698
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    .line 699
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    .line 700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 701
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 702
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v3, v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->getmContactName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    .line 700
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->getmContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    goto :goto_1

    .line 710
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->getmContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    goto :goto_1

    .line 713
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mListContact:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudContact;->getmContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    goto :goto_1

    .line 717
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0229

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContactNames:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mDlgContent:Ljava/lang/String;

    .line 718
    const-string v1, "HWJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDlgContent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mDlgContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method public setController(Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    .line 414
    return-void
.end method

.method public setPhotoAdapter(Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mPhotoAdapter:Lcom/lenovo/scg/gallery3d/cloudalbum/adapter/CloudPhotoAdapter;

    .line 422
    return-void
.end method

.method protected shareSelectedPics()V
    .locals 4

    .prologue
    .line 609
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 610
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->isSMSExist()Z

    move-result v1

    if-nez v1, :cond_1

    .line 611
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showNoSMSCard()V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.contacts.list.PICKMULTIPHONEANDEMAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v1, "limit"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    const v2, 0x9999

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 621
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mContext:Landroid/content/Context;

    const v2, 0x7f0f023a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 540
    :cond_0
    return-void
.end method

.method public showContentView(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->findViewsId()V

    .line 551
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActivity:Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;-><init>(Lcom/lenovo/scg/gallery3d/cloudalbum/activity/CloudActivity;Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    .line 553
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mActionbar:Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar;->setActionBarListener(Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudActionbar$OnActionBarClickListener;)V

    .line 556
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->showOrHideEmptyView(Z)V

    .line 557
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->dataBindingView()V

    .line 558
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->dealwithEvents()V

    .line 559
    return-void
.end method

.method protected abstract showOrHideEmptyView(Z)V
.end method

.method public updateData()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mController:Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/controller/ICloudBaseController;->requestUpdateData()V

    .line 598
    :cond_0
    return-void
.end method

.method public updatePhoto(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;I)V
    .locals 4
    .param p1, "cloudPhoto"    # Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .param p2, "pageType"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/ui/CloudBaseUI;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 516
    return-void
.end method
