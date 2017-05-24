.class public Lcom/lenovo/scg/common/le3d/LeTextureData;
.super Ljava/lang/Object;
.source "LeTextureData.java"


# instance fields
.field private mData:[B

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/LeTextureData;->mData:[B

    .line 13
    iput p2, p0, Lcom/lenovo/scg/common/le3d/LeTextureData;->mWidth:I

    .line 14
    iput p3, p0, Lcom/lenovo/scg/common/le3d/LeTextureData;->mHeight:I

    .line 15
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/LeTextureData;->mData:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/scg/common/le3d/LeTextureData;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/common/le3d/LeTextureData;->mWidth:I

    return v0
.end method
