.class public Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;
.super Lcom/lenovo/scg/gallery3d/data/MediaSource;
.source "PicasaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource$EmptyAlbumSet;
    }
.end annotation


# static fields
.field public static final ALBUM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

.field private static final IMAGE_MEDIA_ID:I = 0x1

.field private static final MAP_BATCH_COUNT:I = 0x64

.field private static final NO_MATCH:I = -0x1

.field private static final PICASA_ALBUMSET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PicasaSource"


# instance fields
.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "/picasa/all"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->ALBUM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 3
    .param p1, "application"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    const/4 v2, 0x0

    .line 49
    const-string/jumbo v0, "picasa"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 51
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/all"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/image"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/picasa/video"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public static getContentType(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getDateTaken(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getFaceItem(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/MediaItem;I)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .param p2, "faceIndex"    # I

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getImageSize(Lcom/lenovo/scg/gallery3d/data/MediaObject;)I
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getImageTitle(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getLatitude(Lcom/lenovo/scg/gallery3d/data/MediaObject;)D
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getLongitude(Lcom/lenovo/scg/gallery3d/data/MediaObject;)D
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getPicasaId(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getRotation(Lcom/lenovo/scg/gallery3d/data/MediaObject;)I
    .locals 1
    .param p0, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getUserAccount(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    return-void
.end method

.method public static isPicasaImage(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Z
    .locals 1
    .param p0, "object"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public static onPackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 139
    return-void
.end method

.method public static onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public static onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public static openFile(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/MediaObject;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    return-void
.end method

.method public static showSignInReminder(Landroid/app/Activity;)V
    .locals 0
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 137
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 4
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->match(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource$EmptyAlbumSet;

    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource$EmptyAlbumSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;J)V

    return-object v0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
