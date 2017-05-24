.class Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private final mContainer:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .param p1, "container"    # Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mContainer:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    .line 49
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 50
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 165
    :goto_0
    return-object v1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPFD()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 178
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    const-string/jumbo v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 184
    .local v0, "input":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 191
    :goto_0
    return-object v1

    .line 186
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 187
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method


# virtual methods
.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "minSideLength"    # I
    .param p2, "maxNumberOfPixels"    # I

    .prologue
    .line 55
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "minSideLength"    # I
    .param p2, "maxNumberOfPixels"    # I
    .param p3, "rotateAsNeeded"    # Z

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "minSideLength"    # I
    .param p2, "maxNumberOfPixels"    # I
    .param p3, "rotateAsNeeded"    # Z
    .param p4, "useNative"    # Z

    .prologue
    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 66
    .local v2, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-static {p1, p2, v2, p4}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->makeBitmap(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    .end local v2    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "UriImage"

    const-string v4, "got exception decoding bitmap "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContainer()Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mContainer:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 107
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 112
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 118
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 129
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "rotateAsNeeded"    # Z

    .prologue
    .line 154
    const/16 v0, 0x140

    const/high16 v1, 0x30000

    invoke-virtual {p0, v0, v1, p1}, Lcom/lenovo/scg/gallery3d/boxcontrol/UriImage;->fullSizeBitmap(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
