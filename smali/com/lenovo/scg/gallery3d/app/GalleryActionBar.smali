.class public Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
.super Ljava/lang/Object;
.source "GalleryActionBar.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;,
        Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterAdapter;,
        Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;,
        Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;,
        Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;
    }
.end annotation


# static fields
.field public static final ALBUM_FILMSTRIP_MODE_SELECTED:I = 0x0

.field public static final ALBUM_GRID_MODE_SELECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GalleryActionBar"

.field private static final sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenu:Landroid/view/Menu;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field private mAdapter:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterAdapter;

.field private mAlbumModeAdapter:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

.field private mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

.field private mAlbumModes:[Ljava/lang/CharSequence;

.field private mClusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastAlbumModeSelected:I

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mShareIntent:Landroid/content/Intent;

.field private mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharePanoramaIntent:Landroid/content/Intent;

.field private mTitles:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v6, 0x4

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 117
    new-array v11, v6, [Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    new-instance v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    const v4, 0x7f0f06bb

    const v5, 0x7f0f067c

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v0, v11, v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0f06bd

    const v9, 0x7f0f0692

    const v10, 0x7f0f0678

    move v5, v6

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v1

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    const v8, 0x7f0f06bc

    const v9, 0x7f0f0691

    const v10, 0x7f0f0679

    move v5, v12

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZIII)V

    aput-object v4, v11, v12

    const/4 v0, 0x3

    new-instance v4, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    const/16 v5, 0x8

    const v8, 0x7f0f06bf

    const v9, 0x7f0f067a

    move v6, v1

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;-><init>(IZZII)V

    aput-object v4, v11, v0

    sput-object v11, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterAdapter;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterAdapter;

    .line 200
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 201
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    .line 202
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 205
    return-void
.end method

.method static synthetic access$100()[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModes:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;)Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private createDialogData()V
    .locals 7

    .prologue
    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v4, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    .line 210
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 211
    .local v2, "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    iget-boolean v5, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    if-eqz v5, :cond_0

    .line 212
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    iget v6, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->dialogTitle:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    iget v6, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    .line 217
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public static getClusterByTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 191
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 192
    .local v2, "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_0

    .line 193
    iget v4, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->clusterBy:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 196
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    :goto_1
    return-object v4

    .line 191
    .restart local v2    # "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;
    .locals 3
    .param p0, "menu"    # Landroid/view/Menu;

    .prologue
    .line 445
    const v2, 0x7f100b27

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 446
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x0

    .line 447
    .local v1, "shareActionProvider":Landroid/widget/ShareActionProvider;
    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    .end local v1    # "shareActionProvider":Landroid/widget/ShareActionProvider;
    check-cast v1, Landroid/widget/ShareActionProvider;

    .line 450
    .restart local v1    # "shareActionProvider":Landroid/widget/ShareActionProvider;
    :cond_0
    return-object v1
.end method

.method private setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 360
    :cond_0
    return-void
.end method

.method public createActionBarMenu(ILandroid/view/Menu;)V
    .locals 3
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 411
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBarMenu:Landroid/view/Menu;

    .line 413
    const v1, 0x7f100b29

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 414
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 415
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    .line 416
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    const-string/jumbo v2, "panorama_share_history.xml"

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mSharePanoramaIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 420
    :cond_0
    const v1, 0x7f100b27

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_1

    .line 422
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v1

    check-cast v1, Landroid/widget/ShareActionProvider;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    .line 423
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    const-string/jumbo v2, "share_history.xml"

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 426
    :cond_1
    return-void
.end method

.method public disableAlbumModeMenu(Z)V
    .locals 2
    .param p1, "hideMenu"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 296
    if-eqz p1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 300
    :cond_0
    return-void
.end method

.method public disableClusterMenu(Z)V
    .locals 2
    .param p1, "hideMenu"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 263
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 267
    :cond_0
    return-void
.end method

.method public enableAlbumModeMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V
    .locals 6
    .param p1, "selected"    # I
    .param p2, "listener"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 277
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeAdapter:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 281
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0f04bb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0f04bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModes:[Ljava/lang/CharSequence;

    .line 282
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

    invoke-direct {v1, p0, v5}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeAdapter:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

    .line 284
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 285
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mLastAlbumModeSelected:I

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeAdapter:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$AlbumModeAdapter;

    invoke-virtual {v1, v2, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 287
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 288
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 289
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 291
    :cond_1
    return-void
.end method

.method public enableClusterMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "runner"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAdapter:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setSelectedAction(I)Z

    .line 253
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    .line 255
    :cond_0
    return-void
.end method

.method public getClusterTypeAction()I
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBarMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 356
    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    .line 272
    .local v0, "listener":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mLastAlbumModeSelected:I

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 274
    .end local v0    # "listener":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
    :cond_0
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    .line 382
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v0, :cond_2

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mAlbumModeListener:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;->onAlbumModeSelected(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 396
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 390
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mClusterRunner:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;->doCluster(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 364
    :cond_0
    return-void
.end method

.method public setClusterItemEnabled(IZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 225
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 226
    .local v2, "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 227
    iput-boolean p2, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->enabled:Z

    .line 231
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 225
    .restart local v2    # "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setClusterItemVisibility(IZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 234
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    .local v0, "arr$":[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 235
    .local v2, "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_1

    .line 236
    iput-boolean p2, v2, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->visible:Z

    .line 240
    .end local v2    # "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_0
    return-void

    .line 234
    .restart local v2    # "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDisplayOptions(ZZ)V
    .locals 3
    .param p1, "displayHomeAsUp"    # Z
    .param p2, "showTitle"    # Z

    .prologue
    .line 327
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    .line 329
    .local v0, "options":I
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 330
    :cond_1
    if-eqz p2, :cond_2

    or-int/lit8 v0, v0, 0x8

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 333
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method public setSelectedAction(I)Z
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v4, :cond_1

    .line 377
    :cond_0
    :goto_0
    return v3

    .line 369
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v4, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    array-length v2, v4

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 370
    sget-object v4, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->sClusterItems:[Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;

    aget-object v1, v4, v0

    .line 371
    .local v1, "item":Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;
    iget v4, v1, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ActionItem;->action:I

    if-ne v4, p1, :cond_2

    .line 372
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 373
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mCurrentIndex:I

    .line 374
    const/4 v3, 0x1

    goto :goto_0

    .line 369
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setShareIntents(Landroid/content/Intent;Landroid/content/Intent;Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 1
    .param p1, "sharePanoramaIntent"    # Landroid/content/Intent;
    .param p2, "shareIntent"    # Landroid/content/Intent;
    .param p3, "onShareListener"    # Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mSharePanoramaIntent:Landroid/content/Intent;

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mSharePanoramaActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 437
    :cond_0
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mShareIntent:Landroid/content/Intent;

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 440
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v0, p3}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 442
    :cond_1
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 348
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 352
    :cond_0
    return-void
.end method

.method public showClusterDialog(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;)V
    .locals 4
    .param p1, "clusterRunner"    # Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->createDialogData()V

    .line 304
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mActions:Ljava/util/ArrayList;

    .line 305
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f06c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->mTitles:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$1;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$ClusterRunner;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 319
    return-void
.end method
