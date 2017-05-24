.class public Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;
.super Landroid/os/AsyncTask;
.source "WeiboSaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask$ContentResolverQueryCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPicNameString:Ljava/lang/String;

.field newFile:Ljava/io/File;

.field oldFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContent"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private insertContent(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "saveFileName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "mUri"    # Landroid/net/Uri;

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 110
    .local v2, "now":J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v6, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v6, "gif"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    const-string/jumbo v6, "mime_type"

    const-string v7, "image/gif"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    const-string v6, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string v6, "date_modified"

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string v6, "date_added"

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string/jumbo v6, "orientation"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v6, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v6, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 127
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const-string/jumbo v6, "width"

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v6, "height"

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "datetaken"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "latitude"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "longitude"

    aput-object v7, v4, v6

    .line 142
    .local v4, "projection":[Ljava/lang/String;
    new-instance v6, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask$1;

    invoke-direct {v6, p0, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;Landroid/content/ContentValues;)V

    invoke-direct {p0, v4, v6, p3, p4}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask$ContentResolverQueryCallback;Landroid/content/Context;Landroid/net/Uri;)V

    .line 158
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    return-object v6

    .line 116
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "projection":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "mime_type"

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask$ContentResolverQueryCallback;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask$ContentResolverQueryCallback;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "sourceUri"    # Landroid/net/Uri;

    .prologue
    .line 167
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 170
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {p2, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    if-eqz v6, :cond_1

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 177
    if-eqz v6, :cond_1

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "file"    # [Ljava/io/File;

    .prologue
    const/4 v9, 0x0

    .line 44
    aget-object v8, p1, v9

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->oldFile:Ljava/io/File;

    .line 45
    const/4 v8, 0x1

    aget-object v8, p1, v8

    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->newFile:Ljava/io/File;

    .line 47
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->oldFile:Ljava/io/File;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->newFile:Ljava/io/File;

    if-nez v8, :cond_1

    .line 48
    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 88
    :goto_0
    return-object v8

    .line 51
    :cond_1
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 52
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 54
    .local v1, "byteReadCount":I
    const/4 v4, 0x0

    .line 55
    .local v4, "mInputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 57
    .local v6, "mOutputStream":Ljava/io/OutputStream;
    const/4 v3, 0x1

    .line 58
    .local v3, "isSuccessed":Z
    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->oldFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->oldFile:Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .local v5, "mInputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->newFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .local v7, "mOutputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 64
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 67
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 69
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    :goto_2
    const/4 v3, 0x0

    .line 70
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 78
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 86
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 77
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 78
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 82
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 79
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .end local v6    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v7    # "mOutputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "mOutputStream":Ljava/io/OutputStream;
    .restart local v6    # "mOutputStream":Ljava/io/OutputStream;
    move-object v4, v5

    .line 84
    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 79
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 71
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 73
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v3, 0x0

    .line 74
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 77
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 78
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 79
    :catch_4
    move-exception v2

    .line 81
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 76
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 77
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 78
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 82
    :goto_6
    throw v8

    .line 79
    :catch_5
    move-exception v2

    .line 81
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 88
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 76
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_5

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
    goto :goto_5

    .line 71
    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_4

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
    goto :goto_4

    .line 67
    :catch_8
    move-exception v2

    goto :goto_2

    .end local v4    # "mInputStream":Ljava/io/InputStream;
    .restart local v5    # "mInputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5    # "mInputStream":Ljava/io/InputStream;
    .restart local v4    # "mInputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, [Ljava/io/File;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->doInBackground([Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f08d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->newFile:Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->mPicNameString:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->newFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->insertContent(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f08d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setSaveFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPicNameString"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboSaveCopyTask;->mPicNameString:Ljava/lang/String;

    .line 40
    return-void
.end method
