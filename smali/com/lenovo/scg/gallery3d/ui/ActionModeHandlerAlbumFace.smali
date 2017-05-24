.class public Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;
.super Ljava/lang/Object;
.source "ActionModeHandlerAlbumFace.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$ActionModeListener;
    }
.end annotation


# static fields
.field private static final SUPPORT_MULTIPLE_MASK:I = 0x907

.field private static final TAG:Ljava/lang/String; = "ActionModeHandler"

.field private static final THREAD_POOL_NAME_ACTIONMODEHANDLERALBUMFACE_UPDATESUPPORTEDOPERATION:Ljava/lang/String; = "pool_actionmodehandleralbumface_updatesupportedoperation"


# instance fields
.field private final mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mListener:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$ActionModeListener;

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


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .param p2, "selectionManager"    # Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 82
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 83
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMainHandler:Landroid/os/Handler;

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;)Lcom/lenovo/scg/gallery3d/ui/SelectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->computeMenuOptions(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->computeSharingIntent(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;Lcom/lenovo/scg/gallery3d/util/Future;)Lcom/lenovo/scg/gallery3d/util/Future;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/util/Future;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;)Landroid/widget/ShareActionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private computeMenuOptions(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)I
    .locals 10
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v8, 0x0

    .line 206
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, v8}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 207
    .local v7, "unexpandedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v8

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    const/4 v3, -0x1

    .line 213
    .local v3, "operation":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    .line 214
    .local v1, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const/4 v6, 0x0

    .line 215
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

    .line 216
    .local v4, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_2

    move v3, v8

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getSupportedOperations(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v5

    .line 218
    .local v5, "support":I
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaType(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v9

    or-int/2addr v6, v9

    .line 219
    and-int/2addr v3, v5

    .line 220
    goto :goto_1

    .line 222
    .end local v4    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "support":I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 230
    and-int/lit16 v3, v3, 0x907

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 226
    and-int/lit16 v3, v3, -0x201

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private computeSharingIntent(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 13
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 239
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    .local v0, "expandedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 241
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_0

    .line 242
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    :cond_0
    move-object v2, v10

    .line 281
    :cond_1
    :goto_0
    return-object v2

    .line 246
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v9, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    .line 248
    .local v3, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const/4 v8, 0x0

    .line 249
    .local v8, "type":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 250
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

    .line 251
    .local v5, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v2, v10

    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getSupportedOperations(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v7

    .line 253
    .local v7, "support":I
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaType(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v11

    or-int/2addr v8, v11

    .line 255
    and-int/lit8 v11, v7, 0x4

    if-eqz v11, :cond_3

    .line 256
    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    .end local v5    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v7    # "support":I
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 261
    .local v6, "size":I
    if-lez v6, :cond_7

    .line 262
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "mimeType":Ljava/lang/String;
    if-le v6, v12, :cond_6

    .line 264
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 270
    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v10, :cond_1

    .line 272
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/net/Uri;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    goto :goto_0

    .line 267
    :cond_6
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v11, "android.intent.extra.STREAM"

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 276
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v11, :cond_1

    .line 277
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v10, v12}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method private updateSelectionMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 156
    .local v0, "count":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110005

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "format":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->setTitle(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionMenu:Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

    const v4, 0x7f100027

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 162
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 163
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 165
    const v3, 0x7f0f0668

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 168
    const v3, 0x7f0f0667

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 118
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v4

    .line 119
    .local v4, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 126
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mListener:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$ActionModeListener;

    if-eqz v5, :cond_0

    .line 127
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mListener:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$ActionModeListener;

    invoke-interface {v5, p2}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$ActionModeListener;->onActionItemClicked(Landroid/view/MenuItem;)Z

    move-result v3

    .line 128
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 129
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 150
    .end local v3    # "result":Z
    :goto_0
    return v3

    .line 133
    :cond_0
    const/4 v2, 0x0

    .line 134
    .local v2, "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    const/4 v1, 0x0

    .line 135
    .local v1, "confirmMsg":Ljava/lang/String;
    :try_start_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 136
    .local v0, "action":I
    const v5, 0x7f100b28

    if-ne v0, v5, :cond_3

    .line 137
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;

    .end local v2    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v5}, Lcom/lenovo/scg/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    .line 142
    .restart local v2    # "listener":Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v5, p2, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 143
    const v5, 0x7f100027

    if-ne v0, v5, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->updateSupportedOperation()V

    .line 145
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->updateSelectionMenu()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :cond_2
    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 150
    const/4 v3, 0x1

    goto :goto_0

    .line 138
    :cond_3
    :try_start_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f100b2a

    if-ne v5, v6, :cond_1

    .line 139
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f110000

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 148
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
    .line 174
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 175
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f120010

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 177
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 178
    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;)V

    .line 185
    .local v1, "listener":Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 186
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenu:Landroid/view/Menu;

    .line 187
    const/4 v2, 0x1

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->onPsersonCenterToggleListen()V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 195
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->pause()V

    .line 340
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->updateSupportedOperation()V

    .line 344
    :cond_0
    return-void
.end method

.method public setActionModeListener(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$ActionModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$ActionModeListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mListener:Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$ActionModeListener;

    .line 114
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionMenu:Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public startActionMode()Landroid/view/ActionMode;
    .locals 7

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 90
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 91
    .local v1, "actionMode":Landroid/view/ActionMode;
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/CustomMenu;

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, "customMenu":Lcom/lenovo/scg/gallery3d/ui/CustomMenu;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 94
    .local v3, "customView":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 95
    const v4, 0x7f10007f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f120013

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mSelectionMenu:Lcom/lenovo/scg/gallery3d/ui/CustomMenu$DropDownMenu;

    .line 98
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->updateSelectionMenu()V

    .line 99
    new-instance v4, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$1;

    invoke-direct {v4, p0, v1}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/gallery3d/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 105
    return-object v1
.end method

.method public updateSupportedOperation()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    if-eqz v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/util/Future;->cancel()V

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->updateSelectionMenu()V

    .line 298
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenu:Landroid/view/Menu;

    const v4, 0x7f100b27

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 300
    .local v0, "item":Landroid/view/MenuItem;
    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 301
    .local v1, "supportShare":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/lenovo/scg/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace$3;-><init>(Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;ZLandroid/view/MenuItem;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/util/ThreadPool;->submit(Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;)Lcom/lenovo/scg/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->mMenuTask:Lcom/lenovo/scg/gallery3d/util/Future;

    .line 332
    return-void

    .line 298
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "supportShare":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "item":Landroid/view/MenuItem;
    :cond_3
    move v1, v2

    .line 300
    goto :goto_1
.end method

.method public updateSupportedOperation(Lcom/lenovo/scg/gallery3d/data/Path;Z)V
    .locals 0
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "selected"    # Z

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/ActionModeHandlerAlbumFace;->updateSupportedOperation()V

    .line 287
    return-void
.end method
