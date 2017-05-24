.class public Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;
.super Landroid/app/Activity;
.source "ShowWeiBoImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$ContentResolverQueryCallback;
    }
.end annotation


# static fields
.field public static final ALL_IMAGE_URLS:Ljava/lang/String; = "all_image_urls"

.field public static final IMAGE_NAME:Ljava/lang/String; = "image_name"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field private static SDCARD_PATH:Ljava/lang/String;

.field private static WEIBO_PATH:Ljava/lang/String;

.field public static screenHeight:I

.field public static screenWidth:I


# instance fields
.field private gallery:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

.field private imageName:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private image_top_views:Landroid/widget/RelativeLayout;

.field private mAllBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBackButton:Landroid/widget/ImageButton;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

.field private mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

.field private mImageView:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mPicNameString:Ljava/lang/String;

.field private mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

.field private mWebView:Landroid/webkit/WebView;

.field private saveImageButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getWeiBoPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->WEIBO_PATH:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pictures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->SDCARD_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mAllBitmaps:Ljava/util/List;

    .line 397
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->image_top_views:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private copyFileToNewPath(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    .param p1, "oldFile"    # Ljava/io/File;
    .param p2, "newFile"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 317
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 318
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 320
    .local v1, "byteReadCount":I
    const/4 v4, 0x0

    .line 321
    .local v4, "mInputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 323
    .local v6, "mOutputStream":Ljava/io/OutputStream;
    const/4 v3, 0x1

    .line 324
    .local v3, "isSuccessed":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 326
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .local v5, "mInputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .local v7, "mOutputStream":Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 330
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 333
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 335
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    :goto_1
    const/4 v3, 0x0

    .line 336
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 344
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    move v8, v3

    .line 354
    :cond_0
    return v8

    .line 343
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 344
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 348
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 345
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 347
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 350
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 345
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 347
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 337
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 339
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v3, 0x0

    .line 340
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 343
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 344
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 345
    :catch_4
    move-exception v2

    .line 347
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 342
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 343
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 344
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 348
    :goto_5
    throw v8

    .line 345
    :catch_5
    move-exception v2

    .line 347
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 342
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 337
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v2

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 333
    :catch_8
    move-exception v2

    goto :goto_1

    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private insertContent(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "saveFileName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "mUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 361
    .local v0, "now":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v4, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v4, "gif"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    const-string/jumbo v4, "mime_type"

    const-string v5, "image/gif"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string v4, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    const-string v4, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    const-string/jumbo v4, "orientation"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v4, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v4, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "datetaken"

    aput-object v4, v2, v8

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    .line 378
    .local v2, "projection":[Ljava/lang/String;
    new-instance v4, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$4;

    invoke-direct {v4, p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;Landroid/content/ContentValues;)V

    invoke-direct {p0, v2, v4, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$ContentResolverQueryCallback;Landroid/content/Context;Landroid/net/Uri;)V

    .line 394
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 367
    .end local v2    # "projection":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$ContentResolverQueryCallback;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$ContentResolverQueryCallback;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 403
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 406
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 407
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-interface {p2, v6}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_0
    if-eqz v6, :cond_1

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v1

    .line 413
    if-eqz v6, :cond_1

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 425
    :sswitch_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 426
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->finish()V

    goto :goto_0

    .line 433
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->WEIBO_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "fileCachePath":Ljava/lang/String;
    const-string/jumbo v4, "wangdiyuan weibo debug :"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileCachePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WeiboGallery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v3, "weiboGallery":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 438
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 439
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 445
    :cond_2
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v2, "needSaveFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "WeiboGallery/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mPicNameString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "dstFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    invoke-direct {p0, v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->copyFileToNewPath(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 450
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f08d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 452
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mPicNameString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v0, v4, p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->insertContent(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 442
    .end local v0    # "dstFile":Ljava/io/File;
    .end local v2    # "needSaveFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 455
    .restart local v0    # "dstFile":Ljava/io/File;
    .restart local v2    # "needSaveFile":Ljava/io/File;
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f08d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10082a -> :sswitch_0
        0x7f100ace -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v4, 0x400

    invoke-virtual {v1, v2, v4}, Landroid/view/Window;->setFlags(II)V

    .line 95
    const v1, 0x7f0401bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->setContentView(I)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    .line 101
    const v1, 0x7f100ac0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    .line 102
    const v1, 0x7f100ac3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mImageView:Landroid/widget/ImageView;

    .line 103
    const v1, 0x7f100829

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 104
    const v1, 0x7f10076d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->image_top_views:Landroid/widget/RelativeLayout;

    .line 105
    const v1, 0x7f10082a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 106
    const v1, 0x7f100ace

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->saveImageButton:Landroid/widget/ImageButton;

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->saveImageButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mBackButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;->POOL_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getInstance(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumPoolType;)Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->setContext(Landroid/content/Context;I)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mIntent:Landroid/content/Intent;

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "image_name"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageName:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "image_url"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "all_image_urls"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 134
    .local v8, "allPicURLs":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 136
    .local v16, "splitStrings":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v16, v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mPicNameString:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    .line 140
    if-eqz v8, :cond_0

    .line 141
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 142
    const-string/jumbo v2, "wangdiyuan getAllPics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v15, ""

    .line 148
    .local v15, "picurl":Ljava/lang/String;
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v15

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 154
    .local v13, "mSingleBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mAllBitmaps:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 158
    .end local v10    # "i":I
    .end local v13    # "mSingleBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "picurl":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mFileManager:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->readPictureFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v1, 0x7f100ac2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d005d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 193
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getInstance()Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    sget-object v5, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;->WEIBO_PICTURE:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;

    invoke-virtual {v1, v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/GalleryFileManager$FileType;)Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "path":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 197
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v9, "file":Ljava/io/File;
    const-string v7, "http%3A%2F%2Fww3.sinaimg.cn%2Flarge%2F6628711bjw1e5334rwku4g20ak3i4dmx.gif"

    .line 202
    .local v7, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///mnt/sdcard/.SCG/weibocache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 203
    .local v17, "str1":Ljava/lang/String;
    const-string/jumbo v1, "wangdiyuan"

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html>\n<head>\n     <style>\n          html,body{background:transparent;margin:0;padding:0;}          *{-webkit-tap-highlight-color:rgba(0, 0, 0, 0);}\n     </style>\n     <script type=\"text/javascript\">\n     var imgUrl = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     var objImage = new Image();\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     var realWidth = 0;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     var realHeight = 0;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     function onLoad() {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          objImage.onload = function() {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "               realWidth = objImage.width;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "               realHeight = objImage.height;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "               document.gagImg.src = imgUrl;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "               onResize();\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          objImage.src = imgUrl;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     function onResize() {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          var scale = 1;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          var newWidth = document.gagImg.width;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          if (realWidth > newWidth) {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "               scale = realWidth / newWidth;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          } else {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "               scale = newWidth / realWidth;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          hiddenHeight = Math.ceil(30 * scale);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          document.getElementById(\'hiddenBar\').style.height = hiddenHeight + \"px\";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          document.getElementById(\'hiddenBar\').style.marginTop = -hiddenHeight + \"px\";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     </script>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</head>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<body onload=\"onLoad()\" onresize=\"onResize()\" onclick=\"Android.toggleOverlayDisplay();\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     <table style=\"width: 100%;height:100%;\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          <tr style=\"width: 100%;\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "               <td valign=\"middle\" align=\"center\" style=\"width: 100%;\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                    <div style=\"display:block\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                         <img name=\"gagImg\" src=\"\" width=\"100%\" style=\"\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                    </div>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                    <div id=\"hiddenBar\" style=\"position:absolute; width: 100%; background: transparent;\"></div>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "               </td>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "          </tr>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     </table>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "str2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/"

    const-string/jumbo v4, "text/html"

    const-string/jumbo v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v3    # "str2":Ljava/lang/String;
    .end local v7    # "a":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v17    # "str1":Ljava/lang/String;
    :cond_1
    new-instance v12, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/.SCG/weibocache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 274
    .local v12, "mFile":Ljava/lang/String;
    const-string v1, "gif"

    invoke-virtual {v12, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    invoke-virtual {v1, v12}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->setGifPath(Ljava/lang/String;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mGifView:Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/WeiboGifView;->setVisibility(I)V

    .line 305
    :goto_2
    return-void

    .line 163
    .end local v12    # "mFile":Ljava/lang/String;
    .end local v14    # "path":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mPool:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    sget-object v2, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;->TASK_TYPE_WEIBO:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;

    sget-object v4, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;->ACTION_TYPE_GET:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->getTask(Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumTaskType;Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumActionType;)Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    move-result-object v18

    .line 164
    .local v18, "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;->DATA_TYPE_BYTES:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetDataType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->imageUrl:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/lenovo/scg/gallery3d/net/NetThreadTask;->setTaskPara(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 278
    .end local v18    # "task":Lcom/lenovo/scg/gallery3d/net/NetThreadTask;
    .restart local v12    # "mFile":Ljava/lang/String;
    .restart local v14    # "path":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v11, "mBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mAllBitmaps:Ljava/util/List;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mAllBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_4

    .line 280
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mAllBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mAllBitmaps:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 284
    .end local v10    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_5
    const v1, 0x7f100abf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->gallery:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->gallery:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->gallery:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->gallery:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcom/lenovo/scg/gallery3d/weibo/data/adpater/GalleryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->gallery:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->gallery:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->setVisibility(I)V

    goto/16 :goto_2
.end method
