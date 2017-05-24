.class public Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;
.super Landroid/content/ContentProvider;
.source "GalleryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$PipeDataWriter;,
        Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$PicasaColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lenovo.scg.gallery3d.provider"

.field public static final BASE_URI:Landroid/net/Uri;

.field private static final SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GalleryProvider"

.field private static sBaseUri:Landroid/net/Uri;


# instance fields
.field private mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "content://com.lenovo.scg.gallery3d.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "user_account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "picasa_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 192
    return-void
.end method

.method public static getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 71
    sget-object v0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    .line 74
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->sBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static openPipeHelper(Ljava/lang/Object;Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "args":Ljava/lang/Object;, "TT;"
    .local p1, "func":Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$PipeDataWriter;, "Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 202
    .local v1, "pipe":[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$1;

    invoke-direct {v2, p1, v1, p0}, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$1;-><init>(Lcom/lenovo/scg/gallery3d/provider/GalleryProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V

    .line 214
    .local v2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/AsyncTaskUtil;->executeInParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 215
    const/4 v3, 0x0

    aget-object v3, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 216
    .end local v1    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v2    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "failure making pipe"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private queryPicasaItem(Lcom/lenovo/scg/gallery3d/data/MediaObject;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "image"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 130
    if-nez p2, :cond_0

    sget-object p2, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->SUPPORTED_PICASA_COLUMNS:[Ljava/lang/String;

    .line 131
    :cond_0
    array-length v10, p2

    new-array v1, v10, [Ljava/lang/Object;

    .line 132
    .local v1, "columnValues":[Ljava/lang/Object;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getLatitude(Lcom/lenovo/scg/gallery3d/data/MediaObject;)D

    move-result-wide v6

    .line 133
    .local v6, "latitude":D
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getLongitude(Lcom/lenovo/scg/gallery3d/data/MediaObject;)D

    move-result-wide v8

    .line 134
    .local v8, "longitude":D
    invoke-static {v6, v7, v8, v9}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    .line 136
    .local v4, "isValidLatlong":Z
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, p2

    .local v5, "n":I
    :goto_0
    if-ge v3, v5, :cond_c

    .line 137
    aget-object v0, p2, v3

    .line 138
    .local v0, "column":Ljava/lang/String;
    const-string/jumbo v10, "user_account"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getUserAccount(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    .line 136
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const-string/jumbo v10, "picasa_id"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 141
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getPicasaId(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 142
    :cond_2
    const-string v10, "_display_name"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 143
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getImageTitle(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 144
    :cond_3
    const-string v10, "_size"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 145
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getImageSize(Lcom/lenovo/scg/gallery3d/data/MediaObject;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 146
    :cond_4
    const-string/jumbo v10, "mime_type"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 147
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getContentType(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 148
    :cond_5
    const-string v10, "datetaken"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 149
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getDateTaken(Lcom/lenovo/scg/gallery3d/data/MediaObject;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v1, v3

    goto :goto_1

    .line 150
    :cond_6
    const-string v10, "latitude"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 151
    if-eqz v4, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :goto_2
    aput-object v10, v1, v3

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 152
    :cond_8
    const-string v10, "longitude"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 153
    if-eqz v4, :cond_9

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    :goto_3
    aput-object v10, v1, v3

    goto :goto_1

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 154
    :cond_a
    const-string/jumbo v10, "orientation"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 155
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->getRotation(Lcom/lenovo/scg/gallery3d/data/MediaObject;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v3

    goto/16 :goto_1

    .line 157
    :cond_b
    const-string v10, "GalleryProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unsupported column: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 160
    .end local v0    # "column":Ljava/lang/String;
    :cond_c
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 161
    .local v2, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 162
    return-object v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 88
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    .line 89
    .local v1, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 90
    .local v0, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 92
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 90
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 92
    .end local v0    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .end local v1    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 104
    .local v0, "app":Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    .line 105
    const/4 v1, 0x1

    return v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 169
    .local v2, "token":J
    :try_start_0
    const-string/jumbo v4, "w"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "cannot open file for write"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 172
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    .line 173
    .local v1, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v0

    .line 174
    .local v0, "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-nez v0, :cond_1

    .line 175
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    :cond_1
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, p2}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->openFile(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/data/MediaObject;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 183
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 180
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unspported type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 113
    .local v8, "token":J
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v6

    .line 114
    .local v6, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->mDataManager:Lcom/lenovo/scg/gallery3d/data/DataManager;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v1

    .line 115
    .local v1, "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    if-nez v1, :cond_0

    .line 116
    const-string v2, "GalleryProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v0

    .line 119
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/provider/GalleryProvider;->queryPicasaItem(Lcom/lenovo/scg/gallery3d/data/MediaObject;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 125
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "object":Lcom/lenovo/scg/gallery3d/data/MediaObject;
    .end local v6    # "path":Lcom/lenovo/scg/gallery3d/data/Path;
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
