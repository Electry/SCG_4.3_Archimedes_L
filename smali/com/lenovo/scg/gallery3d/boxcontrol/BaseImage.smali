.class public abstract Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/boxcontrol/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final UNKNOWN_LENGTH:I = -0x1


# instance fields
.field protected mContainer:Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDataPath:Ljava/lang/String;

.field private final mDateTaken:J

.field private mHeight:I

.field protected mId:J

.field protected final mIndex:I

.field protected mMimeType:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "container"    # Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "id"    # J
    .param p5, "index"    # I
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "dataPath"    # Ljava/lang/String;
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "dateTaken"    # J
    .param p11, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mHeight:I

    .line 53
    iput v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mWidth:I

    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContainer:Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;

    .line 72
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 73
    iput-wide p3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mId:J

    .line 74
    iput p5, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mIndex:I

    .line 75
    iput-object p6, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mUri:Landroid/net/Uri;

    .line 76
    iput-object p7, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mDataPath:Ljava/lang/String;

    .line 77
    iput-object p8, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mMimeType:Ljava/lang/String;

    .line 78
    iput-wide p9, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mDateTaken:J

    .line 79
    iput-object p11, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mTitle:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private setupDimension()V
    .locals 6

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "input":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mUri:Landroid/net/Uri;

    const-string/jumbo v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 221
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 222
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 223
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 224
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mWidth:I

    .line 225
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mHeight:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 232
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mWidth:I

    .line 228
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 85
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "minSideLength"    # I
    .param p2, "maxNumberOfPixels"    # I

    .prologue
    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "minSideLength"    # I
    .param p2, "maxNumberOfPixels"    # I
    .param p3, "rotateAsNeeded"    # Z
    .param p4, "useNative"    # Z

    .prologue
    .line 95
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContainer:Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;

    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mId:J

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, "url":Landroid/net/Uri;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, v1, v2, p4}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContainer()Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContainer:Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->setupDimension()V

    .line 145
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mHeight:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mId:J

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->setupDimension()V

    .line 170
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mWidth:I

    return v0
.end method

.method public getmUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 180
    const/4 v7, 0x0

    .line 182
    .local v7, "b":Landroid/graphics/Bitmap;
    :try_start_0
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mId:J

    .line 183
    .local v2, "id":J
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 188
    if-eqz v7, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->getDegreesRotated()I

    move-result v0

    invoke-static {v7, v0}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    move-object v0, v7

    .line 191
    .end local v2    # "id":J
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v8

    .line 185
    .local v8, "ex":Ljava/lang/Throwable;
    const-string v0, "BaseImage"

    const-string/jumbo v1, "miniThumbBitmap got exception"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 186
    goto :goto_0
.end method

.method public miniThumbBitmap(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x0

    .line 195
    const/4 v7, 0x0

    .line 197
    .local v7, "b":Landroid/graphics/Bitmap;
    :try_start_0
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mId:J

    .line 198
    .local v2, "id":J
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 199
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 201
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->instance()Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/boxcontrol/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 206
    if-eqz v7, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->getDegreesRotated()I

    move-result v0

    invoke-static {v7, v0}, Lcom/lenovo/scg/common/utils/bitmap/BoxCtrolUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_1
    move-object v0, v7

    .line 209
    .end local v2    # "id":J
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v8

    .line 203
    .local v8, "ex":Ljava/lang/Throwable;
    const-string v0, "BaseImage"

    const-string/jumbo v1, "miniThumbBitmap got exception"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 204
    goto :goto_0
.end method

.method protected onRemove()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
