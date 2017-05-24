.class public Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;
.super Ljava/lang/Object;
.source "SyncAutoTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

.field private height:I

.field private final max:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;)V
    .locals 2
    .param p1, "engine"    # Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xa00

    iput v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->max:I

    .line 28
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    .line 29
    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    .line 33
    return-void
.end method

.method private HasCompressionFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa00

    .line 147
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->readBitmapFromUri(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    .line 151
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->needCompression()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "WYJ"

    const-string v2, "Start compression file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    if-gt v1, v3, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    if-le v1, v3, :cond_2

    .line 154
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    if-le v1, v2, :cond_3

    .line 155
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    mul-int/lit16 v1, v1, 0xa00

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    .line 156
    iput v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    .line 161
    :goto_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    if-lez v1, :cond_2

    .line 162
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    :cond_2
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudFileUtils;->bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 158
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    mul-int/lit16 v1, v1, 0xa00

    iget v2, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    .line 159
    iput v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 38

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->openOrCreateCloudDB()V

    .line 39
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getAllImage()Ljava/util/ArrayList;

    move-result-object v22

    .line 40
    .local v22, "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v33, "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    const/4 v11, 0x0

    .line 43
    .local v11, "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->queryAllImageFromDB()Landroid/database/Cursor;

    move-result-object v30

    .line 44
    .local v30, "imagesCursor":Landroid/database/Cursor;
    if-eqz v30, :cond_3

    .line 45
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 47
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>()V

    throw v7
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .end local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v30    # "imagesCursor":Landroid/database/Cursor;
    .end local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    :catch_0
    move-exception v25

    .line 133
    .local v25, "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :try_start_1
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncAutoTask run ,LcpPhotoException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncAutoStop()V

    .line 144
    .end local v25    # "e":Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;
    :goto_0
    return-void

    .line 48
    .restart local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .restart local v30    # "imagesCursor":Landroid/database/Cursor;
    .restart local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "image_path"

    move-object/from16 v0, v30

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v30

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 49
    .local v27, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 50
    new-instance v11, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .end local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-direct {v11}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;-><init>()V

    .line 51
    .restart local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmPath(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "image_size"

    move-object/from16 v0, v30

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v30

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 53
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_1
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    .end local v27    # "filePath":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_3
    if-eqz v22, :cond_8

    .line 63
    new-instance v34, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .local v34, "temPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .line 65
    .local v35, "temp1":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .line 66
    .local v36, "temp2":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>()V

    throw v7
    :try_end_2
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .end local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .end local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v30    # "imagesCursor":Landroid/database/Cursor;
    .end local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v34    # "temPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v35    # "temp1":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .end local v36    # "temp2":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :catch_1
    move-exception v25

    .line 135
    .local v25, "e":Ljava/io/IOException;
    :try_start_3
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncAutoTask run ,IOException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncAutoStop()V

    goto/16 :goto_0

    .line 55
    .end local v25    # "e":Ljava/io/IOException;
    .restart local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .restart local v27    # "filePath":Ljava/lang/String;
    .restart local v30    # "imagesCursor":Landroid/database/Cursor;
    .restart local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    :cond_6
    :try_start_4
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->delImageDataFromDB(Ljava/lang/String;)Z
    :try_end_4
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 136
    .end local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .end local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v27    # "filePath":Ljava/lang/String;
    .end local v30    # "imagesCursor":Landroid/database/Cursor;
    .end local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    :catch_2
    move-exception v25

    .line 137
    .local v25, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    :try_start_5
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncAutoTask run ,BusinessException:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncAutoStop()V

    goto/16 :goto_0

    .line 67
    .end local v25    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    .restart local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .restart local v29    # "i$":Ljava/util/Iterator;
    .restart local v30    # "imagesCursor":Landroid/database/Cursor;
    .restart local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .restart local v34    # "temPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .restart local v35    # "temp1":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v36    # "temp2":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :cond_7
    :try_start_6
    invoke-virtual/range {v35 .. v35}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 68
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 138
    .end local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .end local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v30    # "imagesCursor":Landroid/database/Cursor;
    .end local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v34    # "temPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v35    # "temp1":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .end local v36    # "temp2":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :catch_3
    move-exception v25

    .line 139
    .local v25, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncAutoTask run ,Exception:e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 141
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncAutoStop()V

    goto/16 :goto_0

    .line 73
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .restart local v30    # "imagesCursor":Landroid/database/Cursor;
    .restart local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    :cond_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>()V

    throw v7
    :try_end_8
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    .end local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .end local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .end local v30    # "imagesCursor":Landroid/database/Cursor;
    .end local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    :catchall_0
    move-exception v7

    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v8

    iget-object v8, v8, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 142
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncAutoStop()V

    throw v7

    .line 74
    .restart local v11    # "cloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    .restart local v22    # "cloudPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    .restart local v30    # "imagesCursor":Landroid/database/Cursor;
    .restart local v33    # "syncedPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;>;"
    :cond_9
    :try_start_9
    sget-object v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    sget-object v8, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mDefaultId:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;->albumById(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;

    move-result-object v2

    .line 75
    .local v2, "album":Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;
    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getPhotoCount()I

    move-result v24

    .line 83
    .local v24, "count":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    .line 84
    .local v37, "tempCloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    const-string v7, "WYJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SyncAutoTask run , filePath"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException;-><init>()V

    throw v7

    .line 86
    :cond_b
    new-instance v26, Ljava/io/File;

    invoke-virtual/range {v37 .. v37}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v26, "file":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "fileName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/CrcAdlerUtil;->getAdlerByFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    .local v10, "crcKey":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->HasCompressionFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 90
    .local v6, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    int-to-long v4, v7

    .line 91
    .local v4, "size":J
    invoke-virtual/range {v37 .. v37}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getSize()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-eqz v7, :cond_c

    .line 92
    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 94
    :cond_c
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->height:I

    invoke-interface/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->addPhoto(Ljava/lang/String;JLjava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IILjava/lang/String;)Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;

    move-result-object v31

    .line 95
    .local v31, "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    if-eqz v31, :cond_a

    .line 96
    sget-object v7, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    move-object/from16 v0, v31

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const/16 v17, 0x0

    .line 98
    .local v17, "bigThumbUrl":Ljava/lang/String;
    const/16 v16, 0x0

    .line 100
    .local v16, "smallThumbUrl":Ljava/lang/String;
    new-instance v23, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;

    invoke-direct/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;-><init>()V

    .line 101
    .local v23, "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoId(Ljava/lang/String;)V

    .line 102
    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoName(Ljava/lang/String;)V

    .line 103
    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getWidth()I

    move-result v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoWidth(I)V

    .line 104
    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getHeight()I

    move-result v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoHeight(I)V

    .line 105
    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentId(Ljava/lang/String;)V

    .line 106
    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmParentName(Ljava/lang/String;)V

    .line 107
    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getUrl()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmPhotoUri(Ljava/lang/String;)V

    .line 109
    sget v7, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbWidth:I

    sget v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mBigThumbHeight:I

    move-object/from16 v0, v31

    invoke-interface {v0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v32

    .line 110
    .local v32, "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    if-eqz v32, :cond_d

    .line 111
    invoke-interface/range {v32 .. v32}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v17

    .line 113
    :cond_d
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmBigThumbUrl(Ljava/lang/String;)V

    .line 115
    sget v7, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbWidth:I

    sget v8, Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;->mSmallThumbHeight:I

    move-object/from16 v0, v31

    invoke-interface {v0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getThumb(II)Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;

    move-result-object v32

    .line 116
    if-eqz v32, :cond_e

    .line 117
    invoke-interface/range {v32 .. v32}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 119
    :cond_e
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;->setmSmallThumbUrl(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual/range {v37 .. v37}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getmPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v37 .. v37}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->getSize()J

    move-result-wide v12

    invoke-virtual {v7, v8, v12, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToImageTable(Ljava/lang/String;J)V

    .line 121
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v12, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getUrl()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v31 .. v31}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;->getSize()J

    move-result-wide v20

    invoke-virtual/range {v12 .. v21}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->insertDataToAlbumTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 122
    add-int/lit8 v24, v24, 0x1

    .line 123
    const/4 v7, 0x1

    move/from16 v0, v24

    if-ne v0, v7, :cond_f

    .line 124
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v24

    int-to-long v12, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v8, v12, v13, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updateAlbumInfoDB(Ljava/lang/String;JLjava/lang/String;)Z

    .line 129
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncFinished(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;)V

    goto/16 :goto_3

    .line 126
    :cond_f
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;->getId()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v24

    int-to-long v12, v0

    invoke-virtual {v7, v8, v12, v13}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->updatePhotoCountDB(Ljava/lang/String;J)Z
    :try_end_9
    .catch Lcom/lenovo/leos/cloud/lcp/storage/photo/exception/LcpPhotoException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 141
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "size":J
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "crcKey":Ljava/lang/String;
    .end local v16    # "smallThumbUrl":Ljava/lang/String;
    .end local v17    # "bigThumbUrl":Ljava/lang/String;
    .end local v23    # "cloudPhoto":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;
    .end local v26    # "file":Ljava/io/File;
    .end local v31    # "photo":Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;
    .end local v32    # "photoThumb":Lcom/lenovo/leos/cloud/lcp/storage/photo/Thumb;
    .end local v37    # "tempCloudPath":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :cond_10
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v7

    iget-object v7, v7, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->mDBOperater:Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudDBOperation;->closeCloudDB()V

    .line 142
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/SyncAutoTask;->engine:Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/LoaderEngine;->setSyncAutoStop()V

    goto/16 :goto_0
.end method
