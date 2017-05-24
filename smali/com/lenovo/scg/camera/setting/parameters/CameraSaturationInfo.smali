.class public Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
.super Ljava/lang/Object;
.source "CameraSaturationInfo.java"


# instance fields
.field private SaturationStepSize:I

.field private curSaturation:I

.field private defSaturation:I

.field private isSupportSaturation:Z

.field private maxSaturation:I

.field private minSaturation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->maxSaturation:I

    .line 11
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->minSaturation:I

    .line 12
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->curSaturation:I

    .line 13
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->SaturationStepSize:I

    .line 14
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->isSupportSaturation:Z

    .line 15
    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->defSaturation:I

    return-void
.end method


# virtual methods
.method public getCurSaturation()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->curSaturation:I

    return v0
.end method

.method public getDefSaturation()I
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->getMaxSaturation()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->getMinSaturation()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->defSaturation:I

    .line 26
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->defSaturation:I

    return v0
.end method

.method public getMaxSaturation()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->maxSaturation:I

    return v0
.end method

.method public getMinSaturation()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->minSaturation:I

    return v0
.end method

.method public getSaturationStepSize()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->SaturationStepSize:I

    return v0
.end method

.method public isSupportSaturation()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->isSupportSaturation:Z

    return v0
.end method

.method public setCurSaturation(I)V
    .locals 0
    .param p1, "curSaturation"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->curSaturation:I

    .line 79
    return-void
.end method

.method public setMaxSaturation(I)V
    .locals 0
    .param p1, "maxSaturation"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->maxSaturation:I

    .line 53
    return-void
.end method

.method public setMinSaturation(I)V
    .locals 0
    .param p1, "minSaturation"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->minSaturation:I

    .line 66
    return-void
.end method

.method public setSaturationStepSize(I)V
    .locals 0
    .param p1, "saturationStepSize"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->SaturationStepSize:I

    .line 92
    return-void
.end method

.method public setSupportSaturation(Z)V
    .locals 0
    .param p1, "isSupportSaturation"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->isSupportSaturation:Z

    .line 40
    return-void
.end method
