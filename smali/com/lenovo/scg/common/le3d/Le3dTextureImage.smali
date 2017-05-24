.class public Lcom/lenovo/scg/common/le3d/Le3dTextureImage;
.super Lcom/lenovo/scg/common/le3d/Le3dImage;
.source "Le3dTextureImage.java"


# instance fields
.field private mHeight:I

.field private mIsInitCoords:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;III)V
    .locals 2
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "textureId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 20
    iput p3, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mWidth:I

    .line 21
    iput p4, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mHeight:I

    .line 22
    iput p2, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mTextureId:I

    .line 23
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->setSize(FF)V

    .line 24
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mTextureId:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mIsInitCoords:Z

    if-nez v0, :cond_0

    .line 28
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->setSize(FF)V

    .line 29
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->initCoords()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mIsInitCoords:Z

    .line 32
    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->bind()V

    .line 33
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mTextureId:I

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mTextureId:I

    .line 40
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needRecycle"    # Z

    .prologue
    .line 43
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    :cond_0
    return-void
.end method

.method public updateTextureBuffer()V
    .locals 4

    .prologue
    .line 51
    const/16 v2, 0x8

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 52
    .local v1, "textureCoordinates":[F
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    .local v0, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 55
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 56
    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dTextureImage;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
