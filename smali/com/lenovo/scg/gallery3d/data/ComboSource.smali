.class Lcom/lenovo/scg/gallery3d/data/ComboSource;
.super Lcom/lenovo/scg/gallery3d/data/MediaSource;
.source "ComboSource.java"


# static fields
.field private static final COMBO_ALBUM:I = 0x1

.field private static final COMBO_ALBUMSET:I


# instance fields
.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 3
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 32
    const-string v0, "combo"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/ComboSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 34
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/combo/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/ComboSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/combo/*/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 5
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 42
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "segments":[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v3, :cond_0

    .line 44
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/ComboSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    .line 48
    .local v0, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/ComboSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->match(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 55
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 50
    :pswitch_0
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/ComboSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/lenovo/scg/gallery3d/data/ComboAlbumSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;[Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 53
    :pswitch_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v3

    aget-object v4, v1, v4

    invoke-direct {v2, p1, v3, v4}, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;[Lcom/lenovo/scg/gallery3d/data/MediaSet;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
