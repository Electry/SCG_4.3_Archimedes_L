.class public Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;
.super Ljava/lang/Object;
.source "CameraContrastInfo.java"


# instance fields
.field private contrastStepSize:I

.field private curContrast:I

.field private defContrast:I

.field private isSupportContrast:Z

.field private maxContrast:I

.field private minContrast:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->maxContrast:I

    .line 12
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->minContrast:I

    .line 14
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->defContrast:I

    .line 16
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->curContrast:I

    .line 18
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->contrastStepSize:I

    .line 20
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->isSupportContrast:Z

    return-void
.end method


# virtual methods
.method public getContrastStepSize()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->contrastStepSize:I

    return v0
.end method

.method public getCurContrast()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->curContrast:I

    return v0
.end method

.method public getDefContrast()I
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->getMaxContrast()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->getMinContrast()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->defContrast:I

    .line 84
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->defContrast:I

    return v0
.end method

.method public getMaxContrast()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->maxContrast:I

    return v0
.end method

.method public getMinContrast()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->minContrast:I

    return v0
.end method

.method public isSupportContrast()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->isSupportContrast:Z

    return v0
.end method

.method public setContrastStepSize(I)V
    .locals 0
    .param p1, "contrastStepSize"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->contrastStepSize:I

    .line 50
    return-void
.end method

.method public setCurContrast(I)V
    .locals 0
    .param p1, "curContrast"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->curContrast:I

    .line 100
    return-void
.end method

.method public setMaxContrast(I)V
    .locals 0
    .param p1, "maxContrast"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->maxContrast:I

    .line 58
    return-void
.end method

.method public setMinContrast(I)V
    .locals 0
    .param p1, "minContrast"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->minContrast:I

    .line 73
    return-void
.end method

.method public setSupportContrast(Z)V
    .locals 0
    .param p1, "isSupportContrast"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->isSupportContrast:Z

    .line 35
    return-void
.end method
