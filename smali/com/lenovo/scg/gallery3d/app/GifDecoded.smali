.class public Lcom/lenovo/scg/gallery3d/app/GifDecoded;
.super Ljava/lang/Object;
.source "GifDecoded.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;
    }
.end annotation


# static fields
.field protected static final MaxStackSize:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected delay:I

.field protected dispose:I

.field protected frameCount:I

.field protected frameindex:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/InputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastDispose:I

.field protected lastImage:Landroid/graphics/Bitmap;

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected lrh:I

.field protected lrw:I

.field protected lrx:I

.field protected lry:I

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->loopCount:I

    .line 57
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    .line 70
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->block:[B

    .line 71
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->blockSize:I

    .line 74
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->dispose:I

    .line 76
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastDispose:I

    .line 77
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transparency:Z

    .line 78
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->delay:I

    return-void
.end method


# virtual methods
.method protected decodeImageData()V
    .locals 25

    .prologue
    .line 266
    const/4 v2, -0x1

    .line 267
    .local v2, "NullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 270
    .local v17, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 271
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixels:[B

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 274
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->prefix:[S

    .line 276
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 277
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->suffix:[B

    .line 279
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 280
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixelStack:[B

    .line 283
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v11

    .line 284
    .local v11, "data_size":I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 285
    .local v6, "clear":I
    add-int/lit8 v13, v6, 0x1

    .line 286
    .local v13, "end_of_information":I
    add-int/lit8 v3, v6, 0x2

    .line 287
    .local v3, "available":I
    move/from16 v18, v2

    .line 288
    .local v18, "old_code":I
    add-int/lit8 v9, v11, 0x1

    .line 289
    .local v9, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 290
    .local v8, "code_mask":I
    const/4 v7, 0x0

    .local v7, "code":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 296
    :cond_5
    const/4 v4, 0x0

    .local v4, "bi":I
    move/from16 v19, v4

    .local v19, "pi":I
    move/from16 v21, v4

    .local v21, "top":I
    move v14, v4

    .local v14, "first":I
    move v10, v4

    .local v10, "count":I
    move v5, v4

    .local v5, "bits":I
    move v12, v4

    .line 297
    .local v12, "datum":I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v20, v19

    .end local v19    # "pi":I
    .local v20, "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .local v22, "top":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    .line 298
    if-nez v22, :cond_12

    .line 299
    if-ge v5, v9, :cond_8

    .line 301
    if-nez v10, :cond_7

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readBlock()I

    move-result v10

    .line 304
    if-gtz v10, :cond_6

    move/from16 v21, v22

    .line 368
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 368
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 307
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_6
    const/4 v4, 0x0

    .line 309
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 310
    add-int/lit8 v5, v5, 0x8

    .line 311
    add-int/lit8 v4, v4, 0x1

    .line 312
    add-int/lit8 v10, v10, -0x1

    .line 313
    goto :goto_1

    .line 316
    :cond_8
    and-int v7, v12, v8

    .line 317
    shr-int/2addr v12, v9

    .line 318
    sub-int/2addr v5, v9

    .line 321
    if-gt v7, v3, :cond_11

    if-ne v7, v13, :cond_9

    move/from16 v21, v22

    .line 322
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 324
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_9
    if-ne v7, v6, :cond_a

    .line 326
    add-int/lit8 v9, v11, 0x1

    .line 327
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 328
    add-int/lit8 v3, v6, 0x2

    .line 329
    move/from16 v18, v2

    .line 330
    goto :goto_1

    .line 332
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 334
    move/from16 v18, v7

    .line 335
    move v14, v7

    move/from16 v22, v21

    .line 336
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_1

    .line 338
    :cond_b
    move/from16 v16, v7

    .line 339
    .local v16, "in_code":I
    if-ne v7, v3, :cond_c

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 341
    move/from16 v7, v18

    move/from16 v22, v21

    .line 343
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_c
    :goto_4
    if-le v7, v6, :cond_d

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 347
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 349
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move/from16 v21, v22

    .line 350
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 352
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 355
    add-int/lit8 v3, v3, 0x1

    .line 356
    and-int v23, v3, v8

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_f

    .line 357
    add-int/lit8 v9, v9, 0x1

    .line 358
    add-int/2addr v8, v3

    .line 360
    :cond_f
    move/from16 v18, v16

    .line 364
    .end local v16    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 366
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 371
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :cond_10
    return-void

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_11
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_12
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->delay:I

    .line 111
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;

    iget v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;->delay:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->delay:I

    .line 114
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->delay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "im":Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;

    iget-object v0, v1, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 215
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameCount:I

    return v0
.end method

.method public getFrameindex()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    return v0
.end method

.method public getHeigh()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->loopCount:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 379
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    .line 380
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameCount:I

    .line 381
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    .line 382
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->gct:[I

    .line 383
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lct:[I

    .line 384
    return-void
.end method

.method public nextBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 229
    :goto_0
    return-object v0

    .line 221
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    .line 222
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;->image:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 229
    goto :goto_0
.end method

.method public nextDelay()I
    .locals 3

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;->delay:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0xc8

    goto :goto_0
.end method

.method protected read()I
    .locals 3

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 393
    :goto_0
    return v0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->init()V

    .line 244
    if-eqz p1, :cond_1

    .line 245
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->in:Ljava/io/InputStream;

    .line 247
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readHeader()V

    .line 248
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->err()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readContents()V

    .line 250
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameCount:I

    if-gez v1, :cond_0

    .line 251
    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    .line 258
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    return v1

    .line 255
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readBlock()I
    .locals 6

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->blockSize:I

    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, "n":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->blockSize:I

    if-lez v3, :cond_1

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->blockSize:I

    if-ge v2, v3, :cond_0

    .line 403
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->block:[B

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 404
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 412
    :cond_0
    :goto_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 413
    const/4 v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    .line 416
    .end local v0    # "count":I
    :cond_1
    return v2

    .line 407
    .restart local v0    # "count":I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 14
    .param p1, "ncolors"    # I

    .prologue
    .line 421
    mul-int/lit8 v9, p1, 0x3

    .line 422
    .local v9, "nbytes":I
    const/4 v11, 0x0

    .line 423
    .local v11, "tab":[I
    new-array v1, v9, [B

    .line 424
    .local v1, "c":[B
    const/4 v8, 0x0

    .line 426
    .local v8, "n":I
    :try_start_0
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 430
    :goto_0
    if-ge v8, v9, :cond_1

    .line 431
    const/4 v12, 0x1

    iput v12, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    .line 443
    :cond_0
    return-object v11

    .line 427
    :catch_0
    move-exception v2

    .line 428
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 433
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 434
    const/4 v4, 0x0

    .line 435
    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    move v5, v4

    .line 436
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 437
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 438
    .local v10, "r":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 439
    .local v3, "g":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 440
    .local v0, "b":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/high16 v12, -0x1000000

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v5, v4

    .line 441
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1
.end method

.method protected readContents()V
    .locals 6

    .prologue
    .line 449
    const/4 v2, 0x0

    .line 450
    .local v2, "done":Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->err()Z

    move-result v4

    if-nez v4, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v1

    .line 452
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 487
    const/4 v4, 0x1

    iput v4, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    goto :goto_0

    .line 454
    :sswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readImage()V

    goto :goto_0

    .line 457
    :sswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v1

    .line 458
    sparse-switch v1, :sswitch_data_1

    .line 476
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->skip()V

    goto :goto_0

    .line 460
    :sswitch_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readGraphicControlExt()V

    goto :goto_0

    .line 464
    :sswitch_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readBlock()I

    .line 465
    const-string v0, ""

    .line 466
    .local v0, "app":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 469
    :cond_0
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readNetscapeExt()V

    goto :goto_0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->skip()V

    goto :goto_0

    .line 481
    .end local v0    # "app":Ljava/lang/String;
    .end local v3    # "i":I
    :sswitch_5
    const/4 v2, 0x1

    .line 482
    goto :goto_0

    .line 490
    .end local v1    # "code":I
    :cond_2
    return-void

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 458
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 493
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    .line 494
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v0

    .line 495
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->dispose:I

    .line 496
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->dispose:I

    if-nez v2, :cond_0

    .line 497
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->dispose:I

    .line 499
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transparency:Z

    .line 500
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->delay:I

    .line 501
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transIndex:I

    .line 502
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    .line 503
    return-void

    .line 499
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 507
    const-string v1, ""

    .line 508
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 512
    const/4 v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    .line 520
    :cond_1
    :goto_1
    return-void

    .line 515
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readLSD()V

    .line 516
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 517
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->gct:[I

    .line 518
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->gct:[I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->bgColor:I

    goto :goto_1
.end method

.method protected readImage()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readShort()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->ix:I

    .line 526
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readShort()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->iy:I

    .line 528
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readShort()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->iw:I

    .line 530
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readShort()I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->ih:I

    .line 533
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v0

    .line 534
    .local v0, "packed":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lctFlag:Z

    .line 538
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->interlace:Z

    .line 541
    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lctSize:I

    .line 542
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lctFlag:Z

    if-eqz v2, :cond_6

    .line 543
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lctSize:I

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lct:[I

    .line 544
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lct:[I

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->act:[I

    .line 551
    :cond_0
    :goto_2
    const/4 v1, 0x0

    .line 552
    .local v1, "save":I
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transparency:Z

    if-eqz v2, :cond_1

    .line 553
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->act:[I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transIndex:I

    aget v1, v2, v5

    .line 554
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->act:[I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transIndex:I

    aput v4, v2, v5

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->act:[I

    if-nez v2, :cond_2

    .line 557
    iput v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->status:I

    .line 559
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->err()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 578
    :cond_3
    :goto_3
    return-void

    .end local v1    # "save":I
    :cond_4
    move v2, v4

    .line 534
    goto :goto_0

    :cond_5
    move v2, v4

    .line 538
    goto :goto_1

    .line 546
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->gct:[I

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->act:[I

    .line 547
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->bgIndex:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transIndex:I

    if-ne v2, v5, :cond_0

    .line 548
    iput v4, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->bgColor:I

    goto :goto_2

    .line 562
    .restart local v1    # "save":I
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->decodeImageData()V

    .line 563
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->skip()V

    .line 564
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->err()Z

    move-result v2

    if-nez v2, :cond_3

    .line 567
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameCount:I

    .line 569
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->image:Landroid/graphics/Bitmap;

    .line 571
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->setPixels()V

    .line 572
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->delay:I

    invoke-direct {v3, p0, v4, v5}, Lcom/lenovo/scg/gallery3d/app/GifDecoded$GifFrame;-><init>(Lcom/lenovo/scg/gallery3d/app/GifDecoded;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 574
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transparency:Z

    if-eqz v2, :cond_8

    .line 575
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->act:[I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transIndex:I

    aput v1, v2, v3

    .line 577
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->resetFrame()V

    goto :goto_3
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readShort()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    .line 584
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readShort()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->height:I

    .line 586
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v0

    .line 587
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->gctFlag:Z

    .line 590
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->gctSize:I

    .line 591
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->bgIndex:I

    .line 592
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixelAspect:I

    .line 593
    return-void

    .line 587
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readBlock()I

    .line 598
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 600
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 601
    .local v0, "b1":I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 602
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->loopCount:I

    .line 604
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 614
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->dispose:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastDispose:I

    .line 615
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->ix:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lrx:I

    .line 616
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->iy:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lry:I

    .line 617
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->iw:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lrw:I

    .line 618
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->ih:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lrh:I

    .line 619
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastImage:Landroid/graphics/Bitmap;

    .line 620
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->bgColor:I

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastBgColor:I

    .line 621
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->dispose:I

    .line 622
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transparency:Z

    .line 623
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->delay:I

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lct:[I

    .line 625
    return-void
.end method

.method public setFrameindex(I)V
    .locals 1
    .param p1, "frameindex"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameindex:I

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 66
    const/4 p1, 0x0

    .line 68
    :cond_0
    return-void
.end method

.method protected setPixels()V
    .locals 25

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->height:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 132
    .local v3, "dest":[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastDispose:I

    if-lez v2, :cond_4

    .line 133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastDispose:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->frameCount:I

    add-int/lit8 v19, v2, -0x2

    .line 136
    .local v19, "n":I
    if-lez v19, :cond_2

    .line 137
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastImage:Landroid/graphics/Bitmap;

    .line 142
    .end local v19    # "n":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 145
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastDispose:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 147
    const/4 v10, 0x0

    .line 148
    .local v10, "c":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->transparency:Z

    if-nez v2, :cond_1

    .line 149
    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastBgColor:I

    .line 151
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lrh:I

    if-ge v13, v2, :cond_4

    .line 152
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lry:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lrx:I

    add-int v20, v2, v4

    .line 153
    .local v20, "n1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lrw:I

    add-int v21, v20, v2

    .line 154
    .local v21, "n2":I
    move/from16 v17, v20

    .local v17, "k":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 155
    aput v10, v3, v17

    .line 154
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 139
    .end local v10    # "c":I
    .end local v13    # "i":I
    .end local v17    # "k":I
    .end local v20    # "n1":I
    .end local v21    # "n2":I
    .restart local v19    # "n":I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 151
    .end local v19    # "n":I
    .restart local v10    # "c":I
    .restart local v13    # "i":I
    .restart local v17    # "k":I
    .restart local v20    # "n1":I
    .restart local v21    # "n2":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 163
    .end local v10    # "c":I
    .end local v13    # "i":I
    .end local v17    # "k":I
    .end local v20    # "n1":I
    .end local v21    # "n2":I
    :cond_4
    const/16 v22, 0x1

    .line 164
    .local v22, "pass":I
    const/16 v15, 0x8

    .line 165
    .local v15, "inc":I
    const/4 v14, 0x0

    .line 166
    .local v14, "iline":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->ih:I

    if-ge v13, v2, :cond_a

    .line 167
    move/from16 v18, v13

    .line 168
    .local v18, "line":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->interlace:Z

    if-eqz v2, :cond_6

    .line 169
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->ih:I

    if-lt v14, v2, :cond_5

    .line 170
    add-int/lit8 v22, v22, 0x1

    .line 171
    packed-switch v22, :pswitch_data_0

    .line 184
    :cond_5
    :goto_4
    move/from16 v18, v14

    .line 185
    add-int/2addr v14, v15

    .line 187
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->iy:I

    add-int v18, v18, v2

    .line 188
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->height:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 189
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    mul-int v17, v18, v2

    .line 190
    .restart local v17    # "k":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->ix:I

    add-int v12, v17, v2

    .line 191
    .local v12, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->iw:I

    add-int v11, v12, v2

    .line 192
    .local v11, "dlim":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    add-int v2, v2, v17

    if-ge v2, v11, :cond_7

    .line 193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    add-int v11, v17, v2

    .line 195
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->iw:I

    mul-int v23, v13, v2

    .local v23, "sx":I
    move/from16 v24, v23

    .line 196
    .end local v23    # "sx":I
    .local v24, "sx":I
    :goto_5
    if-ge v12, v11, :cond_9

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sx":I
    .restart local v23    # "sx":I
    aget-byte v2, v2, v24

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 199
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->act:[I

    aget v10, v2, v16

    .line 200
    .restart local v10    # "c":I
    if-eqz v10, :cond_8

    .line 201
    aput v10, v3, v12

    .line 203
    :cond_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .line 204
    .end local v23    # "sx":I
    .restart local v24    # "sx":I
    goto :goto_5

    .line 173
    .end local v10    # "c":I
    .end local v11    # "dlim":I
    .end local v12    # "dx":I
    .end local v16    # "index":I
    .end local v17    # "k":I
    .end local v24    # "sx":I
    :pswitch_0
    const/4 v14, 0x4

    .line 174
    goto :goto_4

    .line 176
    :pswitch_1
    const/4 v14, 0x2

    .line 177
    const/4 v15, 0x4

    .line 178
    goto :goto_4

    .line 180
    :pswitch_2
    const/4 v14, 0x1

    .line 181
    const/4 v15, 0x2

    goto :goto_4

    .line 166
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 207
    .end local v18    # "line":I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->image:Landroid/graphics/Bitmap;

    .line 208
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->readBlock()I

    .line 633
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GifDecoded;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    :cond_1
    return-void
.end method
