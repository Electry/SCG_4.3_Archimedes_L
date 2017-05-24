.class public Lcom/lenovo/scg/common/le3d/Le3dGridYUVImage;
.super Lcom/lenovo/scg/common/le3d/Le3dYUVImage;
.source "Le3dGridYUVImage.java"


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 0
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 11
    return-void
.end method


# virtual methods
.method public setGridViewSize(II)V
    .locals 0
    .param p1, "showWidth"    # I
    .param p2, "showHeight"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGridYUVImage;->setViewSize(II)V

    .line 55
    return-void
.end method

.method public setYUVDataBuffer([B)V
    .locals 0
    .param p1, "yuvData"    # [B

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dGridYUVImage;->setYUVData([B)V

    .line 36
    return-void
.end method

.method public setYUVImageSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dGridYUVImage;->setYUVDataSize(II)V

    .line 24
    return-void
.end method
