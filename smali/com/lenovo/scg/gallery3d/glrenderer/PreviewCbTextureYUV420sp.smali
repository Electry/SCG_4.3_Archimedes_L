.class public Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;
.super Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexture;
.source "PreviewCbTextureYUV420sp.java"


# instance fields
.field private mSetData:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 10
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexture;-><init>(III)V

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->setSize(II)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mSetData:Z

    .line 13
    return-void
.end method


# virtual methods
.method public SetElementsData(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V
    .locals 12
    .param p1, "data"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .prologue
    const/16 v3, 0x1909

    const/16 v8, 0x1401

    const/16 v1, 0xde1

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    aget-object v0, v0, v2

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mHeight:I

    move v6, v2

    move v7, v3

    move-object v9, p1

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->SetTextureData(IIIIIIIILcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;I)V

    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    aget-object v0, v0, v11

    const/16 v3, 0x190a

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mHeight:I

    div-int/lit8 v5, v5, 0x2

    const/16 v7, 0x190a

    iget v6, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mWidth:I

    iget v9, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mHeight:I

    mul-int v10, v6, v9

    move v6, v2

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->SetTextureData(IIIIIIIILcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;I)V

    .line 23
    iput-boolean v11, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mSetData:Z

    .line 24
    return-void
.end method

.method public hasSetData()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mSetData:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public resetData()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->mSetData:Z

    .line 37
    return-void
.end method
