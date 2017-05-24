.class public Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;
.super Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexture;
.source "PreviewCbTextureRGBA8888.java"


# instance fields
.field private mSetData:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 10
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexture;-><init>(III)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->mSetData:Z

    .line 13
    return-void
.end method


# virtual methods
.method public SetElementsData(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V
    .locals 11
    .param p1, "data"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .prologue
    const/16 v3, 0x1908

    const/4 v2, 0x0

    .line 16
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;

    aget-object v0, v0, v2

    const/16 v1, 0xde1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->mHeight:I

    const/16 v8, 0x1401

    move v6, v2

    move v7, v3

    move-object v9, p1

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTexElement;->SetTextureData(IIIIIIIILcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;I)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->mSetData:Z

    .line 19
    return-void
.end method

.method public hasSetData()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->mSetData:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public resetData()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->mSetData:Z

    .line 32
    return-void
.end method
