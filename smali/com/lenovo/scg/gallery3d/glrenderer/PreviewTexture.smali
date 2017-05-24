.class public abstract Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;
.super Ljava/lang/Object;
.source "PreviewTexture.java"


# instance fields
.field protected mHeight:I

.field private mTexElementNum:I

.field protected mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

.field protected mWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 4
    .param p1, "nTexElements"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-array v1, p1, [Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    new-instance v2, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    const/16 v3, 0xde1

    invoke-direct {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;-><init>(II)V

    aput-object v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTexElementNum:I

    .line 24
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mWidth:I

    .line 25
    iput p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mHeight:I

    .line 26
    return-void
.end method


# virtual methods
.method protected SetElementData(IIIIIIIII[BI)V
    .locals 11
    .param p1, "nElement"    # I
    .param p2, "target"    # I
    .param p3, "level"    # I
    .param p4, "internalformat"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "border"    # I
    .param p8, "format"    # I
    .param p9, "type"    # I
    .param p10, "data"    # [B
    .param p11, "dataOffset"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    aget-object v0, v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->SetTextureData(IIIIIIII[BI)V

    .line 60
    return-void
.end method

.method public abstract SetElementsData([B)V
.end method

.method public deleteTextures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    array-length v1, v2

    .line 31
    .local v1, "nTexElements":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 32
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;->recycle()V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    .line 35
    iput v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTexElementNum:I

    .line 36
    iput v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mWidth:I

    .line 37
    iput v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mHeight:I

    .line 38
    return-void
.end method

.method public getElement(I)Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTextureElements:[Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexElement;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTexElementsNum()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mTexElementNum:I

    return v0
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mWidth:I

    .line 43
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexture;->mHeight:I

    .line 44
    return-void
.end method
