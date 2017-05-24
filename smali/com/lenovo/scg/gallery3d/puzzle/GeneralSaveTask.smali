.class public Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;
.super Landroid/os/AsyncTask;
.source "GeneralSaveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$ContentResolverQueryCallback;,
        Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;
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
.field private final callback:Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;

.field private final context:Landroid/content/Context;

.field private mFile:Ljava/io/File;

.field private saveFolderName:Ljava/lang/String;

.field private savePath:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;Ljava/io/File;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
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

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->savePath:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->context:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->sourceUri:Landroid/net/Uri;

    .line 72
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->callback:Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;

    .line 73
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->mFile:Ljava/io/File;

    .line 75
    return-void
.end method

.method private getSaveDirectory()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/io/File;

    .line 140
    .local v0, "dir":[Ljava/io/File;
    const-string v1, "jiaxiaowei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->savePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 142
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

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 155
    .local v2, "now":J
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v5, "_display_name"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v5, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v5, "date_modified"

    div-long v6, v2, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v5, "date_added"

    div-long v6, v2, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    const-string/jumbo v5, "orientation"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v5, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v5, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string/jumbo v5, "width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v5, "height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "datetaken"

    aput-object v5, v1, v8

    const/4 v5, 0x1

    const-string v6, "latitude"

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "longitude"

    aput-object v6, v1, v5

    .line 178
    .local v1, "projection":[Ljava/lang/String;
    new-instance v5, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$1;

    invoke-direct {v5, p0, v4}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$1;-><init>(Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;Landroid/content/ContentValues;)V

    invoke-direct {p0, v1, v5}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$ContentResolverQueryCallback;)V

    .line 197
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method private querySource([Ljava/lang/String;Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$ContentResolverQueryCallback;)V
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$ContentResolverQueryCallback;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 118
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->sourceUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {p2, v6}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    if-eqz v6, :cond_1

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 125
    if-eqz v6, :cond_1

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 6
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 83
    aget-object v3, p1, v5

    if-nez v3, :cond_0

    .line 100
    :goto_0
    return-object v2

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->getSaveDirectory()Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, "saveDirectory":Ljava/io/File;
    if-nez v1, :cond_2

    .line 90
    new-instance v1, Ljava/io/File;

    .end local v1    # "saveDirectory":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "download"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .restart local v1    # "saveDirectory":Ljava/io/File;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->context:Landroid/content/Context;

    const v4, 0x7f0f06c4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->saveFolderName:Ljava/lang/String;

    .line 96
    :goto_1
    aget-object v0, p1, v5

    .line 98
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->mFile:Ljava/io/File;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->mFile:Ljava/io/File;

    invoke-direct {p0, v3, v0}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->insertContent(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 100
    .local v2, "uri":Landroid/net/Uri;
    :cond_1
    goto :goto_0

    .line 93
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->saveFolderName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->callback:Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 112
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/puzzle/GeneralSaveTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
