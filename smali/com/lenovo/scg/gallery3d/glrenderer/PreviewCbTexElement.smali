.class public Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;
.super Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
.source "PreviewCbTexElement.java"


# instance fields
.field private mPreviewTexDataBuf:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

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
    .line 30
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;-><init>()V

    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->sTextureId:[I

    .line 31
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTarget:I

    .line 32
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureUnitId:I

    .line 33
    return-void
.end method

.method private createTextureId()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mId:I

    if-gtz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->sTextureId:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 41
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 42
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mId:I

    .line 44
    :cond_0
    return-void
.end method

.method private updateTextureData()V
    .locals 11

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mPreviewTexDataBuf:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    if-eqz v0, :cond_0

    .line 116
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTarget:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureLevel:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureInternalformat:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mHeight:I

    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureBorder:I

    iget v7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureFormat:I

    iget v8, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureType:I

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mPreviewTexDataBuf:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    iget v10, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureDataOffset:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->updateTextureDataC(IIIIIIIILcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;I)V

    .line 119
    :cond_0
    return-void
.end method

.method private native updateTextureDataC(IIIIIIIILcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;I)V
.end method

.method private uploadToCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const v3, 0x812f

    const v2, 0x46180400    # 9729.0f

    .line 50
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->createTextureId()V

    .line 53
    const v0, 0x84c0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureUnitId:I

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 54
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTarget:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 56
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 58
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTarget:I

    const/16 v1, 0x2802

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 59
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTarget:I

    const/16 v1, 0x2803

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 61
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 63
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTarget:I

    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 64
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 65
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTarget:I

    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 66
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->setAssociatedCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 70
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->updateTextureData()V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mState:I

    .line 72
    return-void
.end method


# virtual methods
.method public SetTextureData(IIIIIIIILcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;I)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "dataBuf"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .param p10, "dataOffset"    # I

    .prologue
    .line 100
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureLevel:I

    .line 101
    iput p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureInternalformat:I

    .line 102
    iput p6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureBorder:I

    .line 103
    iput p7, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureFormat:I

    .line 104
    iput p8, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureType:I

    .line 105
    iput-object p9, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mPreviewTexDataBuf:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .line 106
    iput p10, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTextureDataOffset:I

    .line 108
    invoke-virtual {p0, p4, p5}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->setSize(II)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->setLoadState(I)V

    .line 111
    return-void
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->uploadToCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
