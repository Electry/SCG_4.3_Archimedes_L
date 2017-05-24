.class public Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
.source "Le3DFBOTexture.java"


# instance fields
.field private mTarget:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 2
    .param p1, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getTexture()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mId:I

    .line 15
    const/16 v0, 0xde1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mTarget:I

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mTextureUnitId:I

    .line 17
    invoke-virtual {p1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->setSize(II)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;I)V
    .locals 1
    .param p1, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;
    .param p2, "texUnitID"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getTexture()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mId:I

    .line 22
    const/16 v0, 0xde1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mTarget:I

    .line 23
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mTextureUnitId:I

    .line 24
    return-void
.end method

.method private uploadToCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mTarget:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 30
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkError()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->setAssociatedCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mState:I

    .line 33
    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)Z
    .locals 2
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 37
    const v0, 0x84c0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->mTextureUnitId:I

    add-int/2addr v0, v1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 38
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;->uploadToCanvas(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 42
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
