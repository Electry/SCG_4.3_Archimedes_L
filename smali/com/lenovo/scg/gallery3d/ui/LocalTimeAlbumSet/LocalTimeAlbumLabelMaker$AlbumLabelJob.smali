.class Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "LocalTimeAlbumLabelMaker.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;
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

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/String;
    .param p4, "sourceType"    # I

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 31
    .param p1, "jc"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 170
    const-string/jumbo v8, "wwf6"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "kakakak mTitle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mSpec:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;

    move-result-object v24

    .line 173
    .local v24, "s":Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 175
    .local v28, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mIsChineseLangure:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mItemsHeadString:Ljava/lang/String;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mItemsTailString:Ljava/lang/String;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$300(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "countText":Ljava/lang/String;
    :goto_0
    sget v8, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->WM_WIDTH:I

    move-object/from16 v0, v24

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    .line 183
    .local v6, "labelWidth":I
    move-object/from16 v0, v24

    iget v0, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    move/from16 v23, v0

    .line 184
    .local v23, "labelHeight":I
    monitor-enter p0

    .line 186
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->getInstance()Lcom/lenovo/scg/photos/data/GalleryBitmapPool;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBitmapWidth:I
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$400(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBitmapHeight:I
    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$500(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/lenovo/scg/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 187
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-nez v14, :cond_0

    .line 190
    const/4 v15, 0x2

    .line 191
    .local v15, "borders":I
    add-int v8, v6, v15

    move-object/from16 v0, v24

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumSetSlotRenderer$LabelSpec;->labelBackgroundHeight:I

    add-int/2addr v9, v15

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 194
    .end local v15    # "borders":I
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 196
    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 198
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v14, 0x0

    .line 270
    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v14

    .line 178
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "labelWidth":I
    .end local v16    # "countText":Ljava/lang/String;
    .end local v23    # "labelHeight":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mItemsHeadString:Ljava/lang/String;
    invoke-static {v9}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$200(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "countText":Ljava/lang/String;
    goto/16 :goto_0

    .line 187
    .restart local v6    # "labelWidth":I
    .restart local v23    # "labelHeight":I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 203
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v14    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/16 v30, 0x0

    .line 204
    .local v30, "x":I
    move/from16 v3, v30

    .line 205
    .local v3, "headTextX":I
    mul-int/lit8 v8, v23, 0x23

    div-int/lit16 v4, v8, 0xe6

    .line 209
    .local v4, "headTextY":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mMonthCap:Ljava/lang/String;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$600(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 210
    .local v20, "headTextIndex":I
    if-gez v20, :cond_b

    .line 211
    const/16 v20, 0x0

    .line 212
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBigTextPaint:Landroid/text/TextPaint;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    .line 213
    .local v7, "headPaint":Landroid/text/TextPaint;
    move-object/from16 v5, v28

    .line 214
    .local v5, "headText":Ljava/lang/String;
    const/16 v19, -0x1

    .line 215
    .local v19, "headResId":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mIsChineseLangure:Z
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$100(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 216
    const-string v8, "Today"

    if-ne v5, v8, :cond_5

    .line 217
    const v19, 0x7f0206fb

    .line 225
    :cond_3
    :goto_2
    if-lez v19, :cond_7

    .line 226
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v0, v19

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 227
    .local v18, "headBitmap":Landroid/graphics/Bitmap;
    int-to-float v8, v3

    int-to-float v9, v4

    const v10, 0x3fe66666    # 1.8f

    mul-float/2addr v9, v10

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 228
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 229
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    .end local v18    # "headBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "headResId":I
    :cond_4
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    new-array v0, v8, [F

    move-object/from16 v29, v0

    .line 262
    .local v29, "widths":[F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mSmallTextPaint:Landroid/text/TextPaint;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$1000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v8

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 263
    const/16 v17, 0x0

    .line 264
    .local v17, "countWidth":F
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_4
    move-object/from16 v0, v29

    array-length v8, v0

    move/from16 v0, v22

    if-ge v0, v8, :cond_d

    .line 265
    aget v8, v29, v22

    add-float v17, v17, v8

    .line 264
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 218
    .end local v17    # "countWidth":F
    .end local v22    # "i":I
    .end local v29    # "widths":[F
    .restart local v19    # "headResId":I
    :cond_5
    const-string v8, "Week"

    if-ne v5, v8, :cond_6

    .line 219
    const v19, 0x7f0206fc

    goto :goto_2

    .line 220
    :cond_6
    const-string v8, "Fature"

    if-ne v5, v8, :cond_3

    .line 221
    const v19, 0x7f0206f9

    goto :goto_2

    .line 233
    :cond_7
    const-string v8, "Today"

    if-ne v5, v8, :cond_9

    .line 234
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f06db

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    :cond_8
    :goto_5
    invoke-static/range {v2 .. v7}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    goto :goto_3

    .line 235
    :cond_9
    const-string v8, "Week"

    if-ne v5, v8, :cond_a

    .line 236
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f06ea

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 237
    :cond_a
    const-string v8, "Fature"

    if-ne v5, v8, :cond_8

    .line 238
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$800(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0966

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 244
    .end local v5    # "headText":Ljava/lang/String;
    .end local v7    # "headPaint":Landroid/text/TextPaint;
    .end local v19    # "headResId":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mBigTextPaint:Landroid/text/TextPaint;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$700(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    .line 245
    .restart local v7    # "headPaint":Landroid/text/TextPaint;
    const/4 v8, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 246
    .restart local v5    # "headText":Ljava/lang/String;
    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v29, v0

    .line 247
    .restart local v29    # "widths":[F
    move-object/from16 v0, v29

    invoke-virtual {v7, v5, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 248
    const/16 v21, 0x0

    .line 249
    .local v21, "headWidth":F
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_6
    move-object/from16 v0, v29

    array-length v8, v0

    move/from16 v0, v22

    if-ge v0, v8, :cond_c

    .line 250
    aget v8, v29, v22

    add-float v21, v21, v8

    .line 249
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 252
    :cond_c
    int-to-float v8, v3

    add-float v8, v8, v21

    float-to-int v0, v8

    move/from16 v26, v0

    .line 253
    .local v26, "smallTextX":I
    move/from16 v0, v23

    mul-int/lit16 v8, v0, 0x8f

    div-int/lit16 v0, v8, 0xe6

    move/from16 v27, v0

    .line 255
    .local v27, "smallTextY":I
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 257
    .local v25, "smallText":Ljava/lang/String;
    add-int/lit8 v12, v6, 0x0

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    move-object v13, v7

    invoke-static/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    .line 258
    sub-int v12, v6, v26

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mMiddleTextPaint:Landroid/text/TextPaint;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$900(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v13

    move-object v8, v2

    move/from16 v9, v26

    move/from16 v10, v27

    move-object/from16 v11, v25

    invoke-static/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    goto/16 :goto_3

    .line 267
    .end local v21    # "headWidth":F
    .end local v25    # "smallText":Ljava/lang/String;
    .end local v26    # "smallTextX":I
    .end local v27    # "smallTextY":I
    .restart local v17    # "countWidth":F
    :cond_d
    move/from16 v0, v17

    float-to-int v8, v0

    sub-int v8, v6, v8

    add-int/lit8 v9, v8, -0x1

    move/from16 v0, v23

    mul-int/lit16 v8, v0, 0xaf

    div-int/lit16 v10, v8, 0xe6

    move/from16 v0, v17

    float-to-int v8, v0

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->mSmallTextPaint:Landroid/text/TextPaint;
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->access$1000(Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v13

    move-object v8, v2

    move-object/from16 v11, v16

    invoke-static/range {v8 .. v13}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker;->drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeAlbumLabelMaker$AlbumLabelJob;->run(Lcom/lenovo/scg/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
