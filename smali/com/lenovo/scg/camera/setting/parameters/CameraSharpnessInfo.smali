.class public Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;
.super Ljava/lang/Object;
.source "CameraSharpnessInfo.java"


# instance fields
.field private currntSharpness:I

.field private defSharpness:I

.field private isSupportSharpness:Z

.field private maxSharpness:I

.field private minSharpness:I

.field private sharpnessStepSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->maxSharpness:I

    .line 13
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->minSharpness:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->isSupportSharpness:Z

    .line 17
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->defSharpness:I

    .line 19
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->sharpnessStepSize:I

    .line 21
    iput v1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->currntSharpness:I

    return-void
.end method


# virtual methods
.method public getCurrntSharpness()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->currntSharpness:I

    return v0
.end method

.method public getDefSharpness()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->defSharpness:I

    return v0
.end method

.method public getMaxSharpness()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->maxSharpness:I

    return v0
.end method

.method public getMinSharpness()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->minSharpness:I

    return v0
.end method

.method public getSharpnessStepSize()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->sharpnessStepSize:I

    return v0
.end method

.method public isSupportSharpness()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->isSupportSharpness:Z

    return v0
.end method

.method public setCurrntSharpness(I)V
    .locals 0
    .param p1, "currntSharpness"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->currntSharpness:I

    .line 36
    return-void
.end method

.method public setDefSharpness(I)V
    .locals 0
    .param p1, "defSharpness"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->defSharpness:I

    .line 68
    return-void
.end method

.method public setMaxSharpness(I)V
    .locals 0
    .param p1, "maxSharpness"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->maxSharpness:I

    .line 44
    return-void
.end method

.method public setMinSharpness(I)V
    .locals 0
    .param p1, "minSharpness"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->minSharpness:I

    .line 52
    return-void
.end method

.method public setSharpnessStepSize(I)V
    .locals 0
    .param p1, "sharpnessStepSize"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->sharpnessStepSize:I

    .line 76
    return-void
.end method

.method public setSupportSharpness(Z)V
    .locals 0
    .param p1, "isSupportSharpness"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->isSupportSharpness:Z

    .line 60
    return-void
.end method
