.class public Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"


# instance fields
.field private final callback:Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private final saveFileName:Ljava/lang/String;

.field private saveFolderName:Ljava/lang/String;

.field private savePath:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->savePath:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->context:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 75
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->callback:Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->saveFileName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private getSaveDirectory()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/io/File;

    .line 149
    .local v0, "dir":[Ljava/io/File;
    const-string v1, "jiaxiaowei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->savePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 151
    aget-object v1, v0, v4

    return-object v1
.end method

.method private insertContent(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v8, 0x0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 164
    .local v0, "now":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->saveFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v4, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v4, "date_modified"

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v4, "date_added"

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string/jumbo v4, "orientation"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v4, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    const-string/jumbo v4, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v4, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
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

    .line 184
    .local v2, "projection":[Ljava/lang/String;
    new-instance v4, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$1;

    invoke-direct {v4, p0, v3}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$1;-><init>(Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;Landroid/content/ContentValues;)V

    invoke-direct {p0, v2, v4}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 202
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$ContentResolverQueryCallback;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 127
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {p2, v6}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    if-eqz v6, :cond_1

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v1

    .line 134
    if-eqz v6, :cond_1

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 8
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 86
    aget-object v0, p1, v4

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v7

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->getSaveDirectory()Ljava/io/File;

    move-result-object v3

    .line 91
    .local v3, "saveDirectory":Ljava/io/File;
    if-nez v3, :cond_3

    .line 92
    new-instance v3, Ljava/io/File;

    .end local v3    # "saveDirectory":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "download"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .restart local v3    # "saveDirectory":Ljava/io/File;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->context:Landroid/content/Context;

    const v1, 0x7f0f06c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->saveFolderName:Ljava/lang/String;

    .line 98
    :goto_1
    aget-object v2, p1, v4

    .line 100
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 104
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->saveFileName:Ljava/lang/String;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;

    move-result-object v6

    .line 106
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_2

    invoke-direct {p0, v6, v2}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->insertContent(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v7

    .line 111
    .local v7, "uri":Landroid/net/Uri;
    :cond_2
    goto :goto_0

    .line 95
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->saveFolderName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 7
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 116
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0f0a11

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "message":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->context:Landroid/content/Context;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 118
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 119
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 120
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->callback:Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;

    invoke-interface {v2, p1}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 121
    return-void

    .line 116
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0f0a12

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->savePath:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/edit/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
