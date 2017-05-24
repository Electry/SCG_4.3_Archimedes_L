.class public Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"


# instance fields
.field private mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 2
    .param p1, "set"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 34
    invoke-interface {p3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 3
    .param p1, "set"    # Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .param p2, "uris"    # [Landroid/net/Uri;
    .param p3, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 40
    invoke-interface {p3}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public fakeChange()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->onChange(Z)V

    .line 51
    return-void
.end method

.method public forceChange()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->onChange(Z)V

    .line 56
    return-void
.end method

.method public isDirty()Z
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ChangeNotifier;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 64
    :cond_0
    return-void
.end method
