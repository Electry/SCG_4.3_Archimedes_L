.class public Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;
.super Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;
.source "PreviewTextureYUV420sp.java"


# instance fields
.field private mSetData:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 14
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;-><init>(III)V

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->setSize(II)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mSetData:Z

    .line 17
    return-void
.end method


# virtual methods
.method public SetElementsData([B)V
    .locals 13
    .param p1, "data"    # [B

    .prologue
    const/4 v12, 0x1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1909

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1909

    const/16 v8, 0x1401

    const/4 v10, 0x0

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->SetTextureData(IIIIIIII[BI)V

    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x190a

    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mHeight:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x190a

    const/16 v8, 0x1401

    iget v9, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mWidth:I

    iget v10, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mHeight:I

    mul-int/2addr v10, v9

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->SetTextureData(IIIIIIII[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    iput-boolean v12, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mSetData:Z

    .line 32
    return-void

    .line 27
    :catch_0
    move-exception v11

    .line 28
    .local v11, "e":Ljava/lang/Exception;
    const-string v0, "PreviewTexture.SetElementsData"

    invoke-static {v0, v11}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 29
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public hasSetData()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mSetData:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public resetData()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;->mSetData:Z

    .line 45
    return-void
.end method
