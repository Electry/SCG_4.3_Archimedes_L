.class public Lcom/lenovo/scg/common/le3d/Le3dImage;
.super Lcom/lenovo/scg/common/le3d/Le3dView;
.source "Le3dImage.java"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mNeedRecycle:Z

.field protected mTexEX:F

.field protected mTexEY:F

.field protected mTexSX:F

.field protected mTexSY:F

.field protected mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mTextureHeight:I

.field protected mTextureId:I

.field private mTextureWidth:I

.field private mVerticesBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V
    .locals 3
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    .line 30
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexSX:F

    .line 32
    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexSY:F

    .line 34
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexEX:F

    .line 36
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexEY:F

    .line 49
    sget v0, Lcom/lenovo/scg/common/le3d/Le3dView;->EVENT_ABILITY_CLICKED:I

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->addEventAbility(I)V

    .line 50
    return-void
.end method

.method private updateIndexBuffer()V
    .locals 4

    .prologue
    .line 185
    const/4 v2, 0x4

    new-array v1, v2, [S

    fill-array-data v1, :array_0

    .line 186
    .local v1, "indices":[S
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    .local v0, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 189
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 190
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    return-void

    .line 185
    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method private updateVerticesBuffer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "vertices":[F
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getScaleFactor()F

    move-result v0

    .line 159
    .local v0, "fac":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mX:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mCenterX:F

    add-float v3, v6, v7

    .line 160
    .local v3, "x":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mY:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mCenterY:F

    add-float v4, v6, v7

    .line 161
    .local v4, "y":F
    iget v6, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mZ:F

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mCenterZ:F

    add-float v5, v6, v7

    .line 162
    .local v5, "z":F
    const/16 v6, 0xc

    new-array v2, v6, [F

    .end local v2    # "vertices":[F
    div-float v6, v3, v0

    aput v6, v2, v8

    const/4 v6, 0x1

    div-float v7, v4, v0

    aput v7, v2, v6

    const/4 v6, 0x2

    div-float v7, v5, v0

    aput v7, v2, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mWidth:F

    add-float/2addr v7, v3

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/4 v6, 0x4

    div-float v7, v4, v0

    aput v7, v2, v6

    const/4 v6, 0x5

    div-float v7, v5, v0

    aput v7, v2, v6

    const/4 v6, 0x6

    div-float v7, v3, v0

    aput v7, v2, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mHeight:F

    add-float/2addr v7, v4

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0x8

    div-float v7, v5, v0

    aput v7, v2, v6

    const/16 v6, 0x9

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mWidth:F

    add-float/2addr v7, v3

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0xa

    iget v7, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mHeight:F

    add-float/2addr v7, v4

    div-float/2addr v7, v0

    aput v7, v2, v6

    const/16 v6, 0xb

    div-float v7, v5, v0

    aput v7, v2, v6

    .line 166
    .restart local v2    # "vertices":[F
    array-length v6, v2

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 167
    .local v1, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 169
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 170
    iget-object v6, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 9

    .prologue
    const v8, 0x812f

    const v7, 0x46180400    # 9729.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xde1

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->onBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 69
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind mBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 72
    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    if-nez v1, :cond_0

    .line 73
    new-array v0, v6, [I

    .line 74
    .local v0, "textures":[I
    invoke-static {v6, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 75
    aget v1, v0, v5

    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    .line 77
    .end local v0    # "textures":[I
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 79
    const/16 v1, 0x2801

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 80
    const/16 v1, 0x2800

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 83
    const/16 v1, 0x2802

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 84
    const/16 v1, 0x2803

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5, v1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureWidth:I

    .line 88
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureHeight:I

    .line 89
    iget-boolean v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mNeedRecycle:Z

    if-ne v1, v6, :cond_1

    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->initCoords()V

    .line 101
    :cond_2
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 102
    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 104
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    if-eqz v0, :cond_0

    .line 110
    new-array v0, v3, [I

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 111
    iput v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mNeedRecycle:Z

    if-ne v0, v3, :cond_1

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 122
    :cond_2
    return-void
.end method

.method public destory()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->delete()V

    .line 198
    return-void
.end method

.method protected getTextureId()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    return v0
.end method

.method public initCoords()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->updateVerticesBuffer()V

    .line 151
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->updateTextureBuffer()V

    .line 152
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->updateIndexBuffer()V

    .line 153
    return-void
.end method

.method protected onBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onDraw()V
    .locals 5

    .prologue
    const/16 v4, 0x1406

    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->saveProgram()V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    sget-object v1, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Bitmap_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setProgram(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dContext;->updateTextureAlpha(F)V

    .line 207
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->bind()V

    .line 209
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureId:I

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "onDraw in LeImage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setVertexPointer(IIILjava/nio/Buffer;)V

    .line 218
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->loadMatrix()V

    .line 219
    sget-object v0, Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;->Le_Bitmap_Type:Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setMatrix(Lcom/lenovo/scg/common/le3d/LeTextureDataType$TextureDataType;)V

    .line 224
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->restoreProgram()V

    .line 227
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needRecycle"    # Z

    .prologue
    const/4 v3, 0x0

    .line 53
    const-string/jumbo v0, "tyl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-boolean p2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mNeedRecycle:Z

    .line 56
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mWidth:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mHeight:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mWidth:F

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mHeight:F

    .line 60
    :cond_1
    return-void
.end method

.method public setCenter(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(FFF)V

    .line 138
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->updateVerticesBuffer()V

    .line 139
    return-void
.end method

.method public setCenter(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dView;->setCenter(I)V

    .line 133
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->updateVerticesBuffer()V

    .line 134
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dView;->setSize(FF)V

    .line 128
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->updateVerticesBuffer()V

    .line 129
    return-void
.end method

.method public setTexCoord(FFFF)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    .line 142
    iput p1, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexSX:F

    .line 143
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexSY:F

    .line 144
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexEX:F

    .line 145
    iput p4, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexEY:F

    .line 146
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->updateTextureBuffer()V

    .line 147
    return-void
.end method

.method public updateTextureBuffer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 175
    const/16 v2, 0x8

    new-array v1, v2, [F

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexSX:F

    aput v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexEY:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexEX:F

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexEY:F

    aput v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexSX:F

    aput v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexSY:F

    aput v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexEX:F

    aput v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTexSY:F

    aput v3, v1, v2

    .line 176
    .local v1, "textureCoordinates":[F
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 177
    .local v0, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 179
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 180
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    return-void
.end method
