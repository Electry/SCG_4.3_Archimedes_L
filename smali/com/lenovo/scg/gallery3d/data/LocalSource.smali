.class Lcom/lenovo/scg/gallery3d/data/LocalSource;
.super Lcom/lenovo/scg/gallery3d/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/data/LocalSource$1;,
        Lcom/lenovo/scg/gallery3d/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"

.field private static final LOCAL_ALL_ALBUM:I = 0x7

.field private static final LOCAL_ALL_ALBUMSET:I = 0x6

.field private static final LOCAL_ALL_TIME:I = 0x8

.field private static final LOCAL_CAMERA_ALBUMSET:I = 0x64

.field private static final LOCAL_IMAGE_ALBUM:I = 0x2

.field private static final LOCAL_IMAGE_ALBUMSET:I = 0x0

.field private static final LOCAL_IMAGE_ITEM:I = 0x4

.field private static final LOCAL_VIDEO_ALBUM:I = 0x3

.field private static final LOCAL_VIDEO_ALBUMSET:I = 0x1

.field private static final LOCAL_VIDEO_ITEM:I = 0x5

.field private static final MEDIA_TYPE_ALL:I = 0x0

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final NO_MATCH:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalSource"

.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/data/LocalSource$IdComparator;-><init>(Lcom/lenovo/scg/gallery3d/data/LocalSource$1;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V
    .locals 8
    .param p1, "context"    # Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 73
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 75
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/time"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/*"

    invoke-virtual {v0, v1, v7}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    const-string v1, "/local/camera"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "media"

    const-string v2, "external/file"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "defaultType"    # I

    .prologue
    .line 177
    const-string/jumbo v4, "mediaTypes"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/lenovo/scg/gallery3d/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result v3

    .line 178
    .local v3, "mediaType":I
    const-string v4, "bucketId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "bucketId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 181
    .local v2, "id":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 186
    packed-switch v3, :pswitch_data_0

    .line 192
    :pswitch_0
    const-string v4, "/local/all"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    :goto_0
    return-object v4

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid bucket id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v4, 0x0

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    const-string v4, "/local/image"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 190
    :pswitch_2
    const-string v4, "/local/video"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "defaultType"    # I

    .prologue
    .line 159
    if-nez p0, :cond_1

    .line 166
    .end local p1    # "defaultType":I
    :cond_0
    :goto_0
    return p1

    .line 161
    .restart local p1    # "defaultType":I
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    .local v1, "value":I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_0

    .line 163
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;Z)V
    .locals 12
    .param p2, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    .param p3, "isImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    sget-object v10, Lcom/lenovo/scg/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 258
    .local v6, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 259
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    .line 262
    .local v7, "pid":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, v7, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 264
    .local v9, "startId":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v4, v1, 0x1

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 268
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    .line 269
    .local v8, "pid2":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    iget-object v10, v8, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, "curId":I
    sub-int v10, v0, v9

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_1

    .line 276
    .end local v0    # "curId":I
    .end local v8    # "pid2":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    :cond_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-static {v10, p3, v2}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;->getMediaItemById(Lcom/lenovo/scg/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v3

    .line 277
    .local v3, "items":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    move v5, v1

    .local v5, "k":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 278
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    .line 279
    .restart local v8    # "pid2":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    iget v10, v8, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->id:I

    sub-int v11, v5, v1

    aget-object v11, v3, v11

    invoke-interface {p2, v10, v11}, Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 273
    .end local v3    # "items":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v5    # "k":I
    .restart local v0    # "curId":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 282
    .end local v0    # "curId":I
    .end local v8    # "pid2":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    .restart local v3    # "items":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .restart local v5    # "k":I
    :cond_2
    move v1, v4

    .line 283
    goto :goto_0

    .line 284
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "items":[Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v7    # "pid":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    .end local v9    # "startId":I
    :cond_3
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .locals 11
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 100
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 101
    .local v6, "app":Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->match(Lcom/lenovo/scg/gallery3d/data/Path;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad path: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :sswitch_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/LocalTimeAlbumSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    .line 152
    :goto_0
    return-object v0

    .line 109
    :sswitch_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 111
    :sswitch_2
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-direct {v0, p1, v6, v1, v4}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    .line 113
    :sswitch_3
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v1

    invoke-direct {v0, p1, v6, v1, v5}, Lcom/lenovo/scg/gallery3d/data/LocalAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;IZ)V

    goto :goto_0

    .line 115
    :sswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v7

    .line 116
    .local v7, "bucketId":I
    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v8

    .line 117
    .local v8, "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->PATH_IMAGE:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 118
    .local v9, "imageSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    sget-object v0, Lcom/lenovo/scg/gallery3d/data/LocalAlbumSet;->PATH_VIDEO:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/gallery3d/data/MediaSet;

    .line 119
    .local v10, "videoSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    sget-object v2, Lcom/lenovo/scg/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 120
    .local v2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/lenovo/scg/gallery3d/data/MediaSet;

    aput-object v9, v1, v5

    aput-object v10, v1, v4

    invoke-direct {v0, p1, v2, v1, v7}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/lenovo/scg/gallery3d/data/MediaSet;I)V

    goto :goto_0

    .line 123
    .end local v2    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    .end local v7    # "bucketId":I
    .end local v8    # "dataManager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    .end local v9    # "imageSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .end local v10    # "videoSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :sswitch_5
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalImage;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    invoke-direct {v0, p1, v1, v4}, Lcom/lenovo/scg/gallery3d/data/LocalImage;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    .line 125
    :sswitch_6
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalVideo;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mMatcher:Lcom/lenovo/scg/gallery3d/data/PathMatcher;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v4

    invoke-direct {v0, p1, v1, v4}, Lcom/lenovo/scg/gallery3d/data/LocalVideo;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Lcom/lenovo/scg/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    .line 127
    :sswitch_7
    sget-object v2, Lcom/lenovo/scg/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 150
    .restart local v2    # "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/lenovo/scg/gallery3d/data/MediaItem;>;"
    const/4 v3, 0x0

    .line 152
    .local v3, "sets":[Lcom/lenovo/scg/gallery3d/data/MediaSet;
    new-instance v0, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;

    const/16 v4, 0x7b

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;-><init>(Lcom/lenovo/scg/gallery3d/data/Path;Ljava/util/Comparator;[Lcom/lenovo/scg/gallery3d/data/MediaSet;ILcom/lenovo/scg/gallery3d/app/GalleryApp;)V

    goto :goto_0

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x7 -> :sswitch_4
        0x8 -> :sswitch_0
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 201
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 202
    .local v2, "id":J
    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v4, v2, v3}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(J)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    .line 205
    .end local v2    # "id":J
    :pswitch_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 206
    .restart local v2    # "id":J
    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v4, v2, v3}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(J)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    .line 209
    .end local v2    # "id":J
    :pswitch_3
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/lenovo/scg/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    .line 212
    :pswitch_4
    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Lcom/lenovo/scg/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    .line 215
    :pswitch_5
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/lenovo/scg/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcom/lenovo/scg/gallery3d/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 3
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    .line 227
    .local v0, "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    instance-of v1, v0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "/local/all"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .end local v0    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    .restart local v0    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 7
    .param p2, "consumer"    # Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v1, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v5, "videoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 238
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 239
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;

    .line 242
    .local v4, "pid":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    iget-object v6, v4, Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;->path:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/data/Path;->getParent()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 243
    .local v3, "parent":Lcom/lenovo/scg/gallery3d/data/Path;
    sget-object v6, Lcom/lenovo/scg/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v3, v6, :cond_1

    .line 244
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    sget-object v6, Lcom/lenovo/scg/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/lenovo/scg/gallery3d/data/Path;

    if-ne v3, v6, :cond_0

    .line 246
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v3    # "parent":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v4    # "pid":Lcom/lenovo/scg/gallery3d/data/MediaSource$PathId;
    :cond_2
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/lenovo/scg/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 251
    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/lenovo/scg/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/lenovo/scg/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 252
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 314
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 308
    return-void
.end method
