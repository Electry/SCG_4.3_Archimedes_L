.class Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# static fields
.field private static final INDEX_BUFFER_SIZE:I = 0x18

.field private static final TAG:Ljava/lang/String; = "NinePatchInstance"

.field private static final VERTEX_BUFFER_SIZE:I = 0x20


# instance fields
.field private mIdxCount:I

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mIndexBufferName:I

.field private mUvBuffer:Ljava/nio/FloatBuffer;

.field private mUvBufferName:I

.field private mXyBuffer:Ljava/nio/FloatBuffer;

.field private mXyBufferName:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;II)V
    .locals 10
    .param p1, "tex"    # Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x4

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    .line 215
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getNinePatchChunk()Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchChunk;

    move-result-object v8

    .line 217
    .local v8, "chunk":Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchChunk;
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "invalid dimension"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    array-length v0, v0

    if-ne v0, v9, :cond_2

    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    array-length v0, v0

    if-eq v0, v9, :cond_3

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "unsupported nine patch"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_3
    new-array v1, v7, [F

    .line 229
    .local v1, "divX":[F
    new-array v2, v7, [F

    .line 230
    .local v2, "divY":[F
    new-array v3, v7, [F

    .line 231
    .local v3, "divU":[F
    new-array v4, v7, [F

    .line 233
    .local v4, "divV":[F
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getWidth()I

    move-result v7

    invoke-static {v1, v3, v0, v7, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->stretch([F[F[III)I

    move-result v5

    .line 234
    .local v5, "nx":I
    iget-object v0, v8, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v7

    invoke-static {v2, v4, v0, v7, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->stretch([F[F[III)I

    move-result v6

    .line 236
    .local v6, "ny":I
    iget-object v7, v8, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchChunk;->mColor:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->prepareVertexData([F[F[F[FII[I)V

    .line 237
    return-void
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 401
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private prepareBuffers(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v1, 0x0

    .line 405
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    .line 406
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    .line 410
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    .line 411
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    .line 412
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 413
    return-void
.end method

.method private prepareVertexData([F[F[F[FII[I)V
    .locals 27
    .param p1, "x"    # [F
    .param p2, "y"    # [F
    .param p3, "u"    # [F
    .param p4, "v"    # [F
    .param p5, "nx"    # I
    .param p6, "ny"    # I
    .param p7, "color"    # [I

    .prologue
    .line 339
    const/4 v15, 0x0

    .line 340
    .local v15, "pntCount":I
    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 341
    .local v22, "xy":[F
    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 342
    .local v20, "uv":[F
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move/from16 v0, p6

    if-ge v13, v0, :cond_1

    .line 343
    const/4 v7, 0x0

    .local v7, "i":I
    move/from16 v16, v15

    .end local v15    # "pntCount":I
    .local v16, "pntCount":I
    :goto_1
    move/from16 v0, p5

    if-ge v7, v0, :cond_0

    .line 344
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "pntCount":I
    .restart local v15    # "pntCount":I
    shl-int/lit8 v21, v16, 0x1

    .line 345
    .local v21, "xIndex":I
    add-int/lit8 v23, v21, 0x1

    .line 346
    .local v23, "yIndex":I
    aget v24, p1, v7

    aput v24, v22, v21

    .line 347
    aget v24, p2, v13

    aput v24, v22, v23

    .line 348
    aget v24, p3, v7

    aput v24, v20, v21

    .line 349
    aget v24, p4, v13

    aput v24, v20, v23

    .line 343
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15    # "pntCount":I
    .restart local v16    # "pntCount":I
    goto :goto_1

    .line 342
    .end local v21    # "xIndex":I
    .end local v23    # "yIndex":I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v16

    .end local v16    # "pntCount":I
    .restart local v15    # "pntCount":I
    goto :goto_0

    .line 353
    .end local v7    # "i":I
    :cond_1
    const/4 v8, 0x1

    .line 354
    .local v8, "idxCount":I
    const/4 v12, 0x0

    .line 355
    .local v12, "isForward":Z
    const/16 v24, 0x18

    move/from16 v0, v24

    new-array v11, v0, [B

    .line 356
    .local v11, "index":[B
    const/16 v17, 0x0

    .local v17, "row":I
    :goto_2
    add-int/lit8 v24, p6, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 357
    add-int/lit8 v8, v8, -0x1

    .line 358
    if-nez v12, :cond_4

    const/4 v12, 0x1

    .line 361
    :goto_3
    if-eqz v12, :cond_5

    .line 362
    const/16 v19, 0x0

    .line 363
    .local v19, "start":I
    move/from16 v6, p5

    .line 364
    .local v6, "end":I
    const/4 v10, 0x1

    .line 371
    .local v10, "inc":I
    :goto_4
    move/from16 v4, v19

    .local v4, "col":I
    :goto_5
    if-eq v4, v6, :cond_6

    .line 372
    mul-int v24, v17, p5

    add-int v14, v24, v4

    .line 373
    .local v14, "k":I
    move/from16 v0, v19

    if-eq v4, v0, :cond_3

    .line 374
    add-int/lit8 v24, p5, -0x1

    mul-int v24, v24, v17

    add-int v5, v24, v4

    .line 375
    .local v5, "colorIdx":I
    if-eqz v12, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 376
    :cond_2
    aget v24, p7, v5

    if-nez v24, :cond_3

    .line 377
    add-int/lit8 v24, v8, -0x1

    aget-byte v24, v11, v24

    aput-byte v24, v11, v8

    .line 378
    add-int/lit8 v8, v8, 0x1

    .line 379
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idxCount":I
    .local v9, "idxCount":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v11, v8

    move v8, v9

    .line 383
    .end local v5    # "colorIdx":I
    .end local v9    # "idxCount":I
    .restart local v8    # "idxCount":I
    :cond_3
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "idxCount":I
    .restart local v9    # "idxCount":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v11, v8

    .line 384
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "idxCount":I
    .restart local v8    # "idxCount":I
    add-int v24, v14, p5

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v11, v9

    .line 371
    add-int/2addr v4, v10

    goto :goto_5

    .line 358
    .end local v4    # "col":I
    .end local v6    # "end":I
    .end local v10    # "inc":I
    .end local v14    # "k":I
    .end local v19    # "start":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 366
    :cond_5
    add-int/lit8 v19, p5, -0x1

    .line 367
    .restart local v19    # "start":I
    const/4 v6, -0x1

    .line 368
    .restart local v6    # "end":I
    const/4 v10, -0x1

    .restart local v10    # "inc":I
    goto :goto_4

    .line 356
    .restart local v4    # "col":I
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 388
    .end local v4    # "col":I
    .end local v6    # "end":I
    .end local v10    # "inc":I
    .end local v19    # "start":I
    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    .line 390
    mul-int/lit8 v24, v15, 0x2

    mul-int/lit8 v18, v24, 0x4

    .line 391
    .local v18, "size":I
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    .line 392
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    mul-int/lit8 v26, v15, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    mul-int/lit8 v26, v15, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 398
    return-void
.end method

.method private static stretch([F[F[III)I
    .locals 15
    .param p0, "x"    # [F
    .param p1, "u"    # [F
    .param p2, "div"    # [I
    .param p3, "source"    # I
    .param p4, "target"    # I

    .prologue
    .line 272
    invoke-static/range {p3 .. p3}, Lcom/lenovo/scg/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v11

    .line 273
    .local v11, "textureSize":I
    move/from16 v0, p3

    int-to-float v12, v0

    int-to-float v13, v11

    div-float v10, v12, v13

    .line 275
    .local v10, "textureBound":F
    const/4 v9, 0x0

    .line 276
    .local v9, "stretch":F
    const/4 v1, 0x0

    .local v1, "i":I
    move-object/from16 v0, p2

    array-length v5, v0

    .local v5, "n":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 277
    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    aget v13, p2, v1

    sub-int/2addr v12, v13

    int-to-float v12, v12

    add-float/2addr v9, v12

    .line 276
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 280
    :cond_0
    sub-int v12, p4, p3

    int-to-float v12, v12

    add-float v8, v12, v9

    .line 282
    .local v8, "remaining":F
    const/4 v4, 0x0

    .line 283
    .local v4, "lastX":F
    const/4 v3, 0x0

    .line 285
    .local v3, "lastU":F
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p0, v12

    .line 286
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p1, v12

    .line 287
    const/4 v1, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 291
    add-int/lit8 v12, v1, 0x1

    aget v13, p2, v1

    int-to-float v13, v13

    sub-float/2addr v13, v3

    add-float/2addr v13, v4

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    aput v13, p0, v12

    .line 292
    add-int/lit8 v12, v1, 0x1

    aget v13, p2, v1

    int-to-float v13, v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, p1, v12

    .line 295
    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    aget v13, p2, v1

    sub-int/2addr v12, v13

    int-to-float v6, v12

    .line 296
    .local v6, "partU":F
    mul-float v12, v8, v6

    div-float v7, v12, v9

    .line 297
    .local v7, "partX":F
    sub-float/2addr v8, v7

    .line 298
    sub-float/2addr v9, v6

    .line 300
    add-int/lit8 v12, v1, 0x1

    aget v12, p0, v12

    add-float v4, v12, v7

    .line 301
    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    int-to-float v3, v12

    .line 302
    add-int/lit8 v12, v1, 0x2

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float v13, v4, v13

    aput v13, p0, v12

    .line 303
    add-int/lit8 v12, v1, 0x2

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float v13, v3, v13

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, p1, v12

    .line 287
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 306
    .end local v6    # "partU":F
    .end local v7    # "partX":F
    :cond_1
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p4

    int-to-float v13, v0

    aput v13, p0, v12

    .line 307
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    aput v10, p1, v12

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "last":I
    const/4 v1, 0x1

    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v5, v12, 0x2

    :goto_2
    if-ge v1, v5, :cond_3

    .line 312
    aget v12, p0, v1

    aget v13, p0, v2

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 311
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    :cond_2
    add-int/lit8 v2, v2, 0x1

    aget v12, p0, v1

    aput v12, p0, v2

    .line 314
    aget v12, p1, v1

    aput v12, p1, v2

    goto :goto_3

    .line 316
    :cond_3
    add-int/lit8 v12, v2, 0x1

    return v12
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;II)V
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "tex"    # Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchTexture;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 416
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->prepareBuffers(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 419
    :cond_0
    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawMesh(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIIIII)V

    .line 420
    return-void
.end method

.method public recycle(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 424
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    .line 425
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    .line 426
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    .line 429
    :cond_0
    return-void
.end method
