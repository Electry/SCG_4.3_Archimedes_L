.class public Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
.super Landroid/app/Activity;
.source "IngestActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex$ProgressListener;
.implements Lcom/lenovo/scg/gallery3d/ingest/ImportTask$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ItemListHandler;,
        Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;,
        Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;
    }
.end annotation


# instance fields
.field private mActionMenuSwitcherItem:Landroid/view/MenuItem;

.field private mActive:Z

.field private mActiveActionMode:Landroid/view/ActionMode;

.field private mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

.field private mFullscreenPager:Landroid/support/v4/view/ViewPager;

.field private mFullscreenPagerVisible:Z

.field private mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

.field private mHelperServiceConnection:Landroid/content/ServiceConnection;

.field private mLastCheckedPosition:I

.field private mMasterObserver:Landroid/database/DataSetObserver;

.field private mMenuSwitcherItem:Landroid/view/MenuItem;

.field private mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

.field private mPositionMappingCheckBroker:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

.field private mWarningText:Landroid/widget/TextView;

.field private mWarningView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActive:Z

    .line 76
    iput v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mLastCheckedPosition:I

    .line 82
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPagerVisible:Z

    .line 109
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 118
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 268
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;-><init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPositionMappingCheckBroker:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

    .line 315
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mMasterObserver:Landroid/database/DataSetObserver;

    .line 410
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;-><init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    .line 530
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private UiThreadNotifyIndexChanged()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->notifyDataSetChanged()V

    .line 381
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActiveActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActiveActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActiveActionMode:Landroid/view/ActionMode;

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->updateWarningView()V

    .line 386
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mLastCheckedPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActive:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->cleanupProgressDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->updateProgressDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->UiThreadNotifyIndexChanged()V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/IngestService;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Lcom/lenovo/scg/gallery3d/ingest/IngestService;)Lcom/lenovo/scg/gallery3d/ingest/IngestService;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPositionMappingCheckBroker:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActiveActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActionMenuSwitcherItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActionMenuSwitcherItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPagerVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Landroid/view/MenuItem;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setSwitcherMenuState(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanupProgressDialog()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 488
    :cond_0
    return-void
.end method

.method private doBindHelperService()V
    .locals 3

    .prologue
    .line 546
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 547
    return-void
.end method

.method private doUnbindHelperService()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestService;->setClientActivity(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 554
    :cond_0
    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private hideWarningView()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mWarningView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mWarningView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setFullscreenPagerVisibility(Z)V

    .line 266
    :cond_0
    return-void
.end method

.method private pickFullscreenStartingPosition()I
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 330
    .local v0, "firstVisiblePosition":I
    iget v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mLastCheckedPosition:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mLastCheckedPosition:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->getLastVisiblePosition()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 333
    .end local v0    # "firstVisiblePosition":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "firstVisiblePosition":I
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mLastCheckedPosition:I

    goto :goto_0
.end method

.method private setFullscreenPagerVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 349
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPagerVisible:Z

    .line 350
    if-eqz p1, :cond_3

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPositionMappingCheckBroker:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

    invoke-direct {v0, p0, v3}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ingest/adapter/CheckBroker;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getMtpDeviceIndex()Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->setMtpDeviceIndex(Lcom/lenovo/scg/gallery3d/ingest/MtpDeviceIndex;)V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->pickFullscreenStartingPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;->translatePositionWithLabels(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 361
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPager:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActionMenuSwitcherItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActionMenuSwitcherItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setSwitcherMenuState(Landroid/view/MenuItem;Z)V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mMenuSwitcherItem:Landroid/view/MenuItem;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setSwitcherMenuState(Landroid/view/MenuItem;Z)V

    .line 367
    return-void

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPagerAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpPagerAdapter;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->translatePositionWithoutLabels(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setSelection(I)V

    .line 359
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 361
    goto :goto_1

    :cond_5
    move v2, v1

    .line 362
    goto :goto_2
.end method

.method private setSwitcherMenuState(Landroid/view/MenuItem;Z)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "inFullscreenMode"    # Z

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 346
    :goto_0
    return-void

    .line 339
    :cond_0
    if-nez p2, :cond_1

    .line 340
    const v0, 0x1080059

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 341
    const v0, 0x7f0f04bd

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 343
    :cond_1
    const v0, 0x1080028

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 344
    const v0, 0x7f0f04bc

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showWarningView(I)V
    .locals 3
    .param p1, "textResId"    # I

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mWarningView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 252
    const v0, 0x7f10061d

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mWarningView:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mWarningView:Landroid/view/View;

    const v1, 0x7f10061f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mWarningText:Landroid/widget/TextView;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mWarningView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setFullscreenPagerVisibility(Z)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setVisibility(I)V

    .line 259
    return-void
.end method

.method private updateProgressDialog()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 464
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 465
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->max:I

    if-nez v4, :cond_4

    move v1, v2

    .line 466
    .local v1, "indeterminate":Z
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 467
    if-eqz v1, :cond_5

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 468
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->message:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 474
    :cond_1
    if-nez v1, :cond_2

    .line 475
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->current:I

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 476
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iget v2, v2, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->max:I

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 478
    :cond_2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 479
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 481
    :cond_3
    return-void

    .end local v1    # "indeterminate":Z
    :cond_4
    move v1, v3

    .line 465
    goto :goto_0

    .restart local v1    # "indeterminate":Z
    :cond_5
    move v3, v2

    .line 467
    goto :goto_1
.end method

.method private updateWarningView()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->deviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const v0, 0x7f0f04c9

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->showWarningView(I)V

    .line 377
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->indexReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 373
    const v0, 0x7f0f04c8

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->showWarningView(I)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->hideWarningView()V

    goto :goto_0
.end method


# virtual methods
.method protected notifyIndexChanged()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/ingest/data/MtpBitmapFetch;->configureForContext(Landroid/content/Context;)V

    .line 248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->doBindHelperService()V

    .line 93
    const v0, 0x7f0400e9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setContentView(I)V

    .line 94
    const v0, 0x7f10061b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    .line 95
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mMasterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mMultiChoiceModeListener:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPositionMappingCheckBroker:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setOnClearChoicesListener(Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView$OnClearChoicesListener;)V

    .line 102
    const v0, 0x7f10061c

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPager:Landroid/support/v4/view/ViewPager;

    .line 104
    new-instance v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ItemListHandler;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ItemListHandler;-><init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/ingest/data/MtpBitmapFetch;->configureForContext(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 214
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 215
    const v1, 0x7f100b25

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mMenuSwitcherItem:Landroid/view/MenuItem;

    .line 216
    const v1, 0x7f100b26

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mMenuSwitcherItem:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPagerVisible:Z

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setSwitcherMenuState(Landroid/view/MenuItem;Z)V

    .line 218
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 224
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->doUnbindHelperService()V

    .line 225
    return-void
.end method

.method public onImportFinish(Ljava/util/Collection;I)V
    .locals 2
    .param p2, "numVisited"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "objectsNotImported":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpObjectInfo;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 453
    return-void
.end method

.method public onImportProgress(IILjava/lang/String;)V
    .locals 3
    .param p1, "visitedCount"    # I
    .param p2, "totalCount"    # I
    .param p3, "pathIfSuccessful"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->reset()V

    .line 441
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iput p2, v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->max:I

    .line 442
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iput p1, v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->current:I

    .line 443
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f04c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->title:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 445
    return-void
.end method

.method public onIndexFinish()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 435
    return-void
.end method

.method public onObjectIndexed(Landroid/mtp/MtpObjectInfo;I)V
    .locals 6
    .param p1, "object"    # Landroid/mtp/MtpObjectInfo;
    .param p2, "numVisited"    # I

    .prologue
    const/4 v5, 0x0

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->reset()V

    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iput v5, v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->max:I

    .line 417
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110001

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->message:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 419
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 196
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActiveActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/ingest/IngestService;->importSelectedItems(Landroid/util/SparseBooleanArray;Landroid/widget/Adapter;)V

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActiveActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPagerVisible:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setFullscreenPagerVisibility(Z)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x7f100b25
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestService;->setClientActivity(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    .line 239
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActive:Z

    .line 240
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->cleanupProgressDialog()V

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 242
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ingest/ui/DateTileView;->refreshLocale()Z

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActive:Z

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHelperService:Lcom/lenovo/scg/gallery3d/ingest/IngestService;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestService;->setClientActivity(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->updateWarningView()V

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 234
    return-void
.end method

.method public onSorting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->reset()V

    .line 425
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    iput v3, v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->max:I

    .line 426
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mProgressState:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f04c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$ProgressState;->message:Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    return-void
.end method
