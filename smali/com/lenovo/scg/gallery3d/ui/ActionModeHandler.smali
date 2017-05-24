.class public Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_ANYSHARE:Ljava/lang/String; = "com.lenovo.anyshare"

.field private static final PACKAGE_NAME_MMS_1:Ljava/lang/String; = "com.lenovo.ideafriend"

.field private static final PACKAGE_NAME_MMS_2:Ljava/lang/String; = "com.android.mms"

.field private static final PACKAGE_NAME_WEIBO:Ljava/lang/String; = "com.sina.weibo"

.field private static final PACKAGE_NAME_WEIXIN:Ljava/lang/String; = "com.tencent.mm"

.field private static final SUPPORT_MULTIPLE_MASK:I = 0x907

.field private static final TAG:Ljava/lang/String; = "ActionModeHandler"

.field private static final THREAD_POOL_NAME_ACTIONMODEHANDLER_UPDATESUPPORTEDOPERATION:Ljava/lang/String; = "pool_actionmodehandler_updatesupportedoperation"


# instance fields
.field private final mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mComponent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMenu:Landroid/view/Menu;

.field private final mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

.field private mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mSelectionMenu:Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

.field private mShareIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "selectionManager"    # Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mComponent:Ljava/util/ArrayList;

    .line 115
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 116
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 117
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->computeMenuOptions(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateShareMenu(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->computeSharingIntent(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/Future;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/Future;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->computeShareIntent(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private computeMenuOptions(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I
    .locals 10
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v8, 0x0

    .line 242
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v8}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 243
    .local v7, "unexpandedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v8

    .line 274
    :cond_0
    :goto_0
    return v3

    .line 248
    :cond_1
    const/4 v3, -0x1

    .line 249
    .local v3, "operation":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    .line 250
    .local v1, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const/4 v6, 0x0

    .line 251
    .local v6, "type":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 252
    .local v4, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_2

    move v3, v8

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getSupportedOperations(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v5

    .line 254
    .local v5, "support":I
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaType(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v9

    or-int/2addr v6, v9

    .line 255
    and-int/2addr v3, v5

    .line 256
    goto :goto_1

    .line 258
    .end local v4    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "support":I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 266
    and-int/lit16 v3, v3, 0x907

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 262
    and-int/lit16 v3, v3, -0x201

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private computeShareIntent(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 13
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 445
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 446
    .local v0, "expandedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 447
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_0

    .line 448
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_0
    move-object v2, v10

    .line 486
    :cond_1
    :goto_0
    return-object v2

    .line 452
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v9, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    .line 454
    .local v3, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const/4 v8, 0x0

    .line 455
    .local v8, "type":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 456
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 457
    .local v5, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v2, v10

    goto :goto_0

    .line 458
    :cond_4
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getSupportedOperations(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v7

    .line 459
    .local v7, "support":I
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaType(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v11

    or-int/2addr v8, v11

    .line 461
    and-int/lit8 v11, v7, 0x4

    if-eqz v11, :cond_3

    .line 462
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 466
    .end local v5    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v7    # "support":I
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 467
    .local v6, "size":I
    if-lez v6, :cond_7

    .line 468
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "mimeType":Ljava/lang/String;
    if-le v6, v12, :cond_6

    .line 470
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 476
    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v10, :cond_1

    .line 478
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/net/Uri;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_0

    .line 473
    :cond_6
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v11, "android.intent.extra.STREAM"

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 481
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_1

    .line 482
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method private computeSharingIntent(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 13
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 280
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 281
    .local v0, "expandedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 282
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_0

    .line 283
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_0
    move-object v2, v10

    .line 322
    :cond_1
    :goto_0
    return-object v2

    .line 287
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v9, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    .line 289
    .local v3, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const/4 v8, 0x0

    .line 290
    .local v8, "type":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 291
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/Path;

    .line 292
    .local v5, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v2, v10

    goto :goto_0

    .line 293
    :cond_4
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getSupportedOperations(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v7

    .line 294
    .local v7, "support":I
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaType(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v11

    or-int/2addr v8, v11

    .line 296
    and-int/lit8 v11, v7, 0x4

    if-eqz v11, :cond_3

    .line 297
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    .end local v5    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v7    # "support":I
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 302
    .local v6, "size":I
    if-lez v6, :cond_7

    .line 303
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "mimeType":Ljava/lang/String;
    if-le v6, v12, :cond_6

    .line 305
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 311
    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v10, :cond_1

    .line 313
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/net/Uri;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_0

    .line 308
    :cond_6
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v11, "android.intent.extra.STREAM"

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 317
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_1

    .line 318
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method private showAppNotinstalledMsg(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 713
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 714
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 715
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.lenovo.leos.appstore"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f07ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showMoreShareDialog()V
    .locals 6

    .prologue
    .line 678
    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f040169

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    .line 679
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 680
    .local v1, "listView":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getShareAdapter()Landroid/widget/SimpleAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 681
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$5;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$5;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 690
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$6;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)V

    .line 698
    .local v0, "cancelRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0f07d1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0f066c

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 699
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v1, v3, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setView(Landroid/view/View;II)V

    .line 700
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->showButtonText()V

    .line 701
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->setBackground(I)V

    .line 702
    return-void
.end method

.method private updateShareMenu(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p2, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 511
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 514
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 515
    const-string v7, "ActionModeHandler"

    const-string/jumbo v8, "share intent is null"

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    return-void

    .line 518
    :cond_1
    const-string v7, "ActionModeHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "share intent getType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v7, "ActionModeHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "share intent getAction:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setSelectedAction(Ljava/lang/String;)V

    .line 521
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setSelectedMimeType(Ljava/lang/String;)V

    .line 523
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 524
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 526
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v7

    if-nez v7, :cond_3

    .line 527
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 528
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "com.lenovo.ideafriend"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.android.mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.lenovo.anyshare"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.tencent.mm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.sina.weibo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 533
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 535
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "icon"

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v7, "label"

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public dismissMoreShareDialog()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    .line 708
    :cond_0
    return-void
.end method

.method public dismissRotateDialog()Z
    .locals 4

    .prologue
    .line 794
    const/4 v1, 0x0

    .line 796
    .local v1, "flag":Z
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->dismissSetasRotateDialog()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    const/4 v1, 0x1

    .line 802
    :cond_0
    :goto_0
    return v1

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActionModeHandler"

    const-string v3, "dismissRotateDialog exception "

    invoke-static {v2, v3, v0}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 152
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v4

    .line 153
    .local v4, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 160
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mListener:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;

    if-eqz v5, :cond_0

    .line 161
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mListener:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;

    invoke-interface {v5, p2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result v3

    .line 162
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 163
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 184
    .end local v3    # "result":Z
    :goto_0
    return v3

    .line 167
    :cond_0
    const/4 v2, 0x0

    .line 168
    .local v2, "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    const/4 v1, 0x0

    .line 169
    .local v1, "confirmMsg":Ljava/lang/String;
    :try_start_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 170
    .local v0, "action":I
    const v5, 0x7f100b28

    if-ne v0, v5, :cond_3

    .line 171
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;

    .end local v2    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v5}, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    .line 176
    .restart local v2    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v5, p2, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 177
    const v5, 0x7f100027

    if-ne v0, v5, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 179
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_2
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 184
    const/4 v3, 0x1

    goto :goto_0

    .line 172
    :cond_3
    :try_start_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f100b2a

    if-ne v5, v6, :cond_1

    .line 173
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f110000

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 182
    .end local v0    # "action":I
    .end local v1    # "confirmMsg":Ljava/lang/String;
    .end local v2    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v5
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 211
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f120010

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 213
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 214
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)V

    .line 221
    .local v1, "listener":Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 222
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    .line 223
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->onPsersonCenterToggleListen()V

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 231
    return-void
.end method

.method public onMenuItemClicked(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "menuItemText"    # Ljava/lang/String;
    .param p2, "result"    # Z

    .prologue
    .line 490
    if-eqz p2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 507
    :goto_0
    return-void

    .line 495
    :cond_0
    const/4 v1, 0x0

    .line 496
    .local v1, "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    const/4 v0, 0x0

    .line 497
    .local v0, "confirmMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f06b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;

    .end local v1    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    .line 502
    .restart local v1    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v2, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0661

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f110000

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->pause()V

    .line 381
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->resume()V

    .line 386
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 762
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public setActionModeListener(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mListener:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$ActionModeListener;

    .line 148
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public shareToOthers(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 544
    const-string v0, "ActionModeHandler"

    const-string/jumbo v1, "shareToOthers, share intent == null"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mComponent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 548
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0
.end method

.method public shareToOthers(Ljava/lang/String;)V
    .locals 9
    .param p1, "shareKey"    # Ljava/lang/String;

    .prologue
    .line 555
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    if-nez v7, :cond_1

    .line 556
    const-string v7, "ActionModeHandler"

    const-string/jumbo v8, "shareToOthers, share intent == null"

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 560
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getForeignPscenter()Z

    move-result v7

    if-nez v7, :cond_0

    .line 563
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0930

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 564
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showMoreShareDialog()V

    goto :goto_0

    .line 565
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f092f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 567
    const-string v6, "com.lenovo.ideafriend"

    .line 570
    .local v6, "packgeName":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7, v6}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 571
    .local v4, "isAppInstalled1":Z
    if-nez v4, :cond_3

    .line 573
    const-string v6, "com.android.mms"

    .line 575
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7, v6}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 576
    .local v5, "isAppInstalled2":Z
    if-nez v5, :cond_3

    .line 577
    const-string v7, "com.lenovo.ideafriend"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 578
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 584
    .end local v5    # "isAppInstalled2":Z
    :cond_3
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 589
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v7, "com.android.mms"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 591
    :catch_1
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "com.lenovo.ideafriend"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 596
    .end local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "isAppInstalled1":Z
    .end local v6    # "packgeName":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0931

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 599
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-string v8, "com.lenovo.anyshare"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 600
    .local v3, "isAppInstalled":Z
    if-nez v3, :cond_5

    .line 601
    const-string v7, "com.lenovo.anyshare"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 602
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 607
    :cond_5
    const-string v7, "com.lenovo.anyshare"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    :try_start_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 613
    :goto_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 610
    :catch_2
    move-exception v0

    .line 611
    .restart local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v7, "com.lenovo.anyshare"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_2

    .line 614
    .end local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    .end local v3    # "isAppInstalled":Z
    :cond_6
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0935

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 617
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-string v8, "com.tencent.mm"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 618
    .restart local v3    # "isAppInstalled":Z
    if-nez v3, :cond_7

    .line 619
    const-string v7, "com.tencent.mm"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 620
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 625
    :cond_7
    const-string v7, "com.tencent.mm"

    const-string v8, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    :try_start_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 631
    :goto_3
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 628
    :catch_3
    move-exception v0

    .line 629
    .restart local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v7, "com.tencent.mm"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_3

    .line 632
    .end local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    .end local v3    # "isAppInstalled":Z
    :cond_8
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0934

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 635
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-string v8, "com.sina.weibo"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 636
    .restart local v3    # "isAppInstalled":Z
    if-nez v3, :cond_9

    .line 637
    const-string v7, "com.sina.weibo"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 638
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 643
    :cond_9
    const-string v7, "com.sina.weibo"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    :try_start_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 649
    :goto_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 646
    :catch_4
    move-exception v0

    .line 647
    .restart local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v7, "com.sina.weibo"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_4

    .line 650
    .end local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    .end local v3    # "isAppInstalled":Z
    :cond_a
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f092e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 653
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-string v8, "com.tencent.mm"

    invoke-static {v7, v8}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 654
    .restart local v3    # "isAppInstalled":Z
    if-nez v3, :cond_b

    .line 655
    const-string v7, "com.tencent.mm"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    .line 656
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 661
    :cond_b
    const-string v7, "com.tencent.mm"

    const-string v8, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    :try_start_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 667
    :goto_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto/16 :goto_0

    .line 664
    :catch_5
    move-exception v0

    .line 665
    .restart local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v7, "com.tencent.mm"

    invoke-direct {p0, v7}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->showAppNotinstalledMsg(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public startActionMode()Landroid/view/ActionMode;
    .locals 7

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 124
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 125
    .local v1, "actionMode":Landroid/view/ActionMode;
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/CustomMenu;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 126
    .local v2, "customMenu":Lcom/lenovo/scg/gallery3d/ui/CustomMenu;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, "customView":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 129
    const v4, 0x7f10007f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f120013

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

    .line 132
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 133
    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 139
    return-object v1
.end method

.method public updateSelectionActionBarMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 767
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 768
    .local v0, "count":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110005

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, "format":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->setActionBarTitle(Ljava/lang/String;)V

    .line 772
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getSelectAdapterData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 776
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 777
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "icon"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v3, "label"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0668

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getSelectAdapterData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :goto_0
    return-void

    .line 783
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getSelectAdapterData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 784
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 785
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "icon"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string v3, "label"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0667

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getSelectAdapterData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 190
    .local v0, "count":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110005

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "format":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionMenu:Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

    const v4, 0x7f100027

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 196
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 197
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 200
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 201
    const v3, 0x7f0f0668

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 204
    const v3, 0x7f0f0667

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public updateSupportedMenuOperation()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSelectionActionBarMenu()V

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$4;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 440
    return-void
.end method

.method public updateSupportedOperation()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSelectionMenu()V

    .line 339
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;

    const v4, 0x7f100b27

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 341
    .local v0, "item":Landroid/view/MenuItem;
    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 342
    .local v1, "supportShare":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler$3;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;ZLandroid/view/MenuItem;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 373
    return-void

    .line 339
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "supportShare":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_3
    move v1, v2

    .line 341
    goto :goto_1
.end method

.method public updateSupportedOperation(Lcom/lenovo/scg/gallery3d/data/Path;Z)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "selected"    # Z

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 328
    return-void
.end method
