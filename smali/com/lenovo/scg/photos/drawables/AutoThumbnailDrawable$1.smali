.class Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;
.super Ljava/lang/Object;
.source "AutoThumbnailDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)V
    .locals 0

    .prologue
    .line 235
    .local p0, "this":Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;, "Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable.1;"
    iput-object p1, p0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 240
    .local p0, "this":Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;, "Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable.1;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 241
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    iget-object v3, v12, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mData:Ljava/lang/Object;

    .line 242
    .local v3, "data":Ljava/lang/Object;, "TT;"
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const/4 v9, 0x1

    .line 244
    .local v9, "preferredSampleSize":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v12, v3}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->getPreferredImageBytes(Ljava/lang/Object;)[B

    move-result-object v8

    .line 245
    .local v8, "preferred":[B
    if-eqz v8, :cond_2

    array-length v12, v8

    if-lez v12, :cond_2

    const/4 v5, 0x1

    .line 246
    .local v5, "hasPreferred":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    const/4 v12, 0x0

    array-length v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v14}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    invoke-static {v8, v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 252
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 253
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v12, v3}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 254
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 304
    :cond_1
    :goto_1
    return-void

    .line 242
    .end local v3    # "data":Ljava/lang/Object;, "TT;"
    .end local v5    # "hasPreferred":Z
    .end local v8    # "preferred":[B
    .end local v9    # "preferredSampleSize":I
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 245
    .restart local v3    # "data":Ljava/lang/Object;, "TT;"
    .restart local v8    # "preferred":[B
    .restart local v9    # "preferredSampleSize":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 256
    .restart local v5    # "hasPreferred":Z
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mImageWidth:I
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$200(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)I

    move-result v11

    .line 257
    .local v11, "width":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mImageHeight:I
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$300(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)I

    move-result v6

    .line 258
    .local v6, "height":I
    if-eqz v5, :cond_4

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v14}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    iget v14, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v15}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v15

    iget v15, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    # invokes: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->calculateSampleSizeLocked(II)I
    invoke-static {v12, v14, v15}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$400(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;II)I

    move-result v9

    .line 261
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->calculateSampleSizeLocked(II)I
    invoke-static {v12, v11, v6}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$400(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;II)I

    move-result v10

    .line 262
    .local v10, "sampleSize":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    const/4 v14, 0x0

    # setter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mIsQueued:Z
    invoke-static {v12, v14}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$502(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;Z)Z

    .line 263
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, "b":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 267
    .local v7, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_5

    .line 268
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    iput v9, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    invoke-static {}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$600()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v14}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    iget v14, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v14, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v15}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v15

    iget v15, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v15, v9

    invoke-virtual {v13, v14, v15}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 270
    const/4 v12, 0x0

    array-length v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v14}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    invoke-static {v8, v12, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 271
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    iget-object v12, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    iget-object v12, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v12, :cond_5

    .line 272
    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    invoke-static {}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$600()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v13}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v13

    iget-object v13, v13, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    const/4 v13, 0x0

    iput-object v13, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 276
    :cond_5
    if-nez v2, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v12, v3}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->getFallbackImageStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v7

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    iput v10, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    invoke-static {}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$600()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v13

    div-int v14, v11, v10

    div-int v15, v6, v10

    invoke-virtual {v13, v14, v15}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v13

    iput-object v13, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 280
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v13}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v13

    invoke-static {v7, v12, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    iget-object v12, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    iget-object v12, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v12, :cond_6

    .line 282
    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->sBitmapPool:Lcom/lenovo/scg/photos/data/GalleryBitmapPool;
    invoke-static {}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$600()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v13}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v13

    iget-object v13, v13, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    .line 283
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$100(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v12

    const/4 v13, 0x0

    iput-object v13, v12, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 291
    :cond_6
    if-eqz v7, :cond_7

    .line 292
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 295
    :cond_7
    :goto_2
    if-eqz v2, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 297
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v12, v3}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->setBitmapLocked(Landroid/graphics/Bitmap;)V
    invoke-static {v12, v2}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$700(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;Landroid/graphics/Bitmap;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$800(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Runnable;

    move-result-object v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 301
    :cond_8
    monitor-exit v13

    goto/16 :goto_1

    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v12

    .line 263
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v6    # "height":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "sampleSize":I
    .end local v11    # "width":I
    :catchall_2
    move-exception v12

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v12

    .line 286
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v6    # "height":I
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v10    # "sampleSize":I
    .restart local v11    # "width":I
    :catch_0
    move-exception v4

    .line 287
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v12, "AutoThumbnailDrawable"

    const-string v13, "Failed to fetch bitmap"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 291
    if-eqz v7, :cond_9

    .line 292
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 295
    :cond_9
    :goto_3
    if-eqz v2, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v12}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 297
    :try_start_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v12, v3}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->setBitmapLocked(Landroid/graphics/Bitmap;)V
    invoke-static {v12, v2}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$700(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;Landroid/graphics/Bitmap;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;
    invoke-static {v14}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$800(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Runnable;

    move-result-object v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v0, v1}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 301
    :cond_a
    monitor-exit v13

    goto/16 :goto_1

    :catchall_3
    move-exception v12

    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v12

    .line 290
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v12

    .line 291
    if-eqz v7, :cond_b

    .line 292
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 295
    :cond_b
    :goto_4
    if-eqz v2, :cond_d

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mLock:Ljava/lang/Object;
    invoke-static {v13}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$000(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 297
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    invoke-virtual {v14, v3}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->dataChangedLocked(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # invokes: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->setBitmapLocked(Landroid/graphics/Bitmap;)V
    invoke-static {v14, v2}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$700(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;Landroid/graphics/Bitmap;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable$1;->this$0:Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;

    # getter for: Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->mUpdateBitmap:Ljava/lang/Runnable;
    invoke-static {v15}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->access$800(Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;)Ljava/lang/Runnable;

    move-result-object v15

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/lenovo/scg/photos/drawables/AutoThumbnailDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 301
    :cond_c
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_d
    throw v12

    :catchall_5
    move-exception v12

    :try_start_d
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v12

    .line 294
    :catch_1
    move-exception v12

    goto/16 :goto_2

    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v12

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    goto :goto_4
.end method
