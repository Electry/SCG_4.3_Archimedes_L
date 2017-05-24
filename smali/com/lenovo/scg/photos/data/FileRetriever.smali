.class public Lcom/lenovo/scg/photos/data/FileRetriever;
.super Ljava/lang/Object;
.source "FileRetriever.java"

# interfaces
.implements Lcom/lenovo/scg/photos/data/MediaRetriever;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/lenovo/scg/photos/data/FileRetriever;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/photos/data/FileRetriever;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isVideo(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 104
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    .line 105
    .local v2, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "video/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFastImageSize(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/lenovo/scg/photos/data/FileRetriever;->isVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->TemporaryThumbnail:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    goto :goto_0
.end method

.method public getLocalFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMedia(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z
    .locals 7
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "imageSize"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .param p3, "tempFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v5, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Original:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne p2, v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v4

    .line 65
    :cond_1
    sget-object v5, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne p2, v5, :cond_2

    .line 66
    invoke-static {}, Lcom/lenovo/scg/photos/data/MediaCache;->getInstance()Lcom/lenovo/scg/photos/data/MediaCache;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Preview:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-virtual {v5, p1, v6}, Lcom/lenovo/scg/photos/data/MediaCache;->getCachedFile(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Ljava/io/File;

    move-result-object v3

    .line 67
    .local v3, "preview":Ljava/io/File;
    if-eqz v3, :cond_2

    .line 69
    invoke-static {v3, p2, p3}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->downsample(Ljava/io/File;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z

    move-result v4

    goto :goto_0

    .line 72
    .end local v3    # "preview":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "highRes":Ljava/io/File;
    invoke-static {p1}, Lcom/lenovo/scg/photos/data/FileRetriever;->isVideo(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 75
    invoke-static {v1, p2, p3}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->downsample(Ljava/io/File;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z

    move-result v4

    .local v4, "success":Z
    goto :goto_0

    .line 78
    .end local v4    # "success":Z
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 81
    sget-object v5, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    if-ne p2, v5, :cond_4

    sget-object v5, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Preview:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-static {v0, v5}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->needsDownsample(Landroid/graphics/Bitmap;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v0, p3}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->writeToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    invoke-static {}, Lcom/lenovo/scg/photos/data/MediaCache;->getInstance()Lcom/lenovo/scg/photos/data/MediaCache;

    move-result-object v2

    .line 85
    .local v2, "mediaCache":Lcom/lenovo/scg/photos/data/MediaCache;
    sget-object v5, Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;->Preview:Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    invoke-virtual {v2, p1, v5, p3}, Lcom/lenovo/scg/photos/data/MediaCache;->insertIntoCache(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Ljava/io/File;

    .line 88
    .end local v2    # "mediaCache":Lcom/lenovo/scg/photos/data/MediaCache;
    :cond_4
    invoke-static {v0, p2, p3}, Lcom/lenovo/scg/photos/data/MediaCacheUtils;->downsample(Landroid/graphics/Bitmap;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;Ljava/io/File;)Z

    move-result v4

    .restart local v4    # "success":Z
    goto :goto_0
.end method

.method public getTemporaryImage(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)[B
    .locals 5
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "fastImageSize"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 50
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v1}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 57
    .end local v1    # "exif":Landroid/media/ExifInterface;
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/lenovo/scg/photos/data/FileRetriever;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load exif for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public normalizeMediaSize(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 100
    return-object p2
.end method

.method public normalizeUri(Landroid/net/Uri;Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;)Landroid/net/Uri;
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Lcom/lenovo/scg/photos/data/MediaRetriever$MediaSize;

    .prologue
    .line 95
    return-object p1
.end method
