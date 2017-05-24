.class public Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;
.super Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
.source "PreviewTexElement.java"


# instance fields
.field private mPreviewTexData:[B

.field private mTarget:I

.field private mTextureBorder:I

.field private mTextureDataOffset:I

.field private mTextureFormat:I

.field private mTextureInternalformat:I

.field private mTextureLevel:I

.field private mTextureType:I

.field private sTextureId:[I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "nTexUnitID"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;-><init>()V

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->sTextureId:[I

    .line 28
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTarget:I

    .line 29
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureUnitId:I

    .line 30
    return-void
.end method

.method private createTextureId()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mId:I

    if-gtz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->sTextureId:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 38
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mId:I

    .line 41
    :cond_0
    return-void
.end method

.method private updateTextureData()V
    .locals 11

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mPreviewTexData:[B

    if-eqz v0, :cond_0

    .line 113
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTarget:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureLevel:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureInternalformat:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureBorder:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureFormat:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureType:I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mPreviewTexData:[B

    iget v10, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureDataOffset:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->updateTextureDataC(IIIIIIII[BI)V

    .line 116
    :cond_0
    return-void
.end method

.method private native updateTextureDataC(IIIIIIII[BI)V
.end method

.method private uploadToCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const v3, 0x812f

    const v2, 0x46180400    # 9729.0f

    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->createTextureId()V

    .line 50
    const v0, 0x84c0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureUnitId:I

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 51
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 52
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTarget:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 53
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTarget:I

    const/16 v1, 0x2802

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 56
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 57
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTarget:I

    const/16 v1, 0x2803

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 58
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTarget:I

    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 61
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 62
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTarget:I

    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 63
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->setAssociatedCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 67
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->updateTextureData()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mState:I

    .line 69
    return-void
.end method


# virtual methods
.method public SetTextureData(IIIIIIII[BI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "dataBuf"    # [B
    .param p10, "dataOffset"    # I

    .prologue
    .line 97
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureLevel:I

    .line 98
    iput p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureInternalformat:I

    .line 99
    iput p6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureBorder:I

    .line 100
    iput p7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureFormat:I

    .line 101
    iput p8, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureType:I

    .line 102
    iput-object p9, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mPreviewTexData:[B

    .line 103
    iput p10, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTextureDataOffset:I

    .line 105
    invoke-virtual {p0, p4, p5}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->setSize(II)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->setLoadState(I)V

    .line 108
    return-void
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->uploadToCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 77
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
