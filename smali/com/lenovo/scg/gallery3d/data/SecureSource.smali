.class public Lcom/lenovo/scg/gallery3d/data/SecureSource;
.super Lcom/lenovo/scg/gallery3d/data/MediaSource;
.source "SecureSource.java"


# static fields
.field private static final SECURE_ALBUM:I = 0x0

.field private static final SECURE_UNLOCK:I = 0x1

.field private static mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;


# instance fields
.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    .line 32
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/secure/all/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/secure/unlock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 1
    .param p1, "context"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    .line 37
    const-string/jumbo v0, "secure"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 39
    return-void
.end method

.method public static isSecurePath(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->match(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 5
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 47
    sget-object v2, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->match(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 56
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

    .line 49
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v0

    .line 50
    .local v0, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    const-string v2, "/secure/unlock"

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 51
    .local v1, "unlock":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, p1, v3, v1}, Lcom/lenovo/scg/gallery3d/data/SecureAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 54
    .end local v0    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .end local v1    # "unlock":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :goto_0
    return-object v2

    :pswitch_1
    new-instance v2, Lcom/lenovo/scg/gallery3d/data/UnlockImage;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/data/SecureSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/data/UnlockImage;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
