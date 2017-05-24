.class Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCount:Ljava/lang/String;

.field private final mSourceType:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "sourceType"    # I

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 190
    iput p4, p0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mSourceType:I

    .line 191
    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const-string/jumbo v6, "pool_albumlabelmaker_albumlabeljob"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$100(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v18

    .line 202
    .local v18, "s":Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 203
    .local v4, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 206
    .local v8, "count":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCountBg:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$200(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 212
    .local v16, "icon":Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 213
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$300(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I

    move-result v17

    .line 214
    .local v17, "labelWidth":I
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapWidth:I
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapHeight:I
    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 215
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-nez v11, :cond_0

    .line 218
    const/4 v12, 0x2

    .line 219
    .local v12, "borders":I
    add-int v5, v17, v12

    move-object/from16 v0, v18

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v6, v12

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 222
    .end local v12    # "borders":I
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 225
    const/high16 v5, -0x80000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 227
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v11, 0x0

    .line 273
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v11

    .line 215
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v17    # "labelWidth":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 232
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "labelWidth":I
    :cond_1
    move-object/from16 v0, v18

    iget v2, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 235
    .local v2, "x":I
    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    .line 240
    .local v3, "y":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xe

    if-lt v5, v6, :cond_2

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v9, 0xe

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    :cond_2
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 247
    .local v13, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v4, v6, v7, v13}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 248
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 249
    .local v19, "textHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I

    move-result v5

    sub-int v5, v5, v19

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v5, -0x5

    .line 251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I

    move-result v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x78

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$600(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 254
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 256
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    .line 257
    const-string v8, "999+"

    .line 260
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [F

    move-object/from16 v20, v0

    .line 261
    .local v20, "widths":[F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 262
    const/4 v14, 0x0

    .line 263
    .local v14, "countWidth":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v20

    array-length v5, v0

    if-ge v15, v5, :cond_5

    .line 264
    aget v5, v20, v15

    add-float/2addr v14, v5

    .line 263
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 267
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v8, v6, v7, v13}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 268
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$500(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I

    move-result v5

    sub-int v5, v5, v19

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v5, -0xa

    .line 271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mBitmapWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$400(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)I

    move-result v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    sub-int/2addr v5, v6

    float-to-int v6, v14

    sub-int v6, v5, v6

    float-to-int v5, v14

    move-object/from16 v0, v18

    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    add-int v9, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->access$700(Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v10

    move-object v5, v1

    move v7, v3

    invoke-static/range {v5 .. v10}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/AlbumLabelMaker$AlbumLabelJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
