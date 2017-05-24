.class public abstract Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "CameraOrientationEventListener.java"


# static fields
.field public static final ORIENTATION_UNKNOWN:I = -0x1


# instance fields
.field private oldOri:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;->oldOri:I

    .line 27
    return-void
.end method


# virtual methods
.method public abstract onCameraOrientationChanged(I)V
.end method

.method public abstract onCameraOrientationChangedForPanorama(I)V
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;->onCameraOrientationChangedForPanorama(I)V

    .line 46
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    add-int/lit8 v1, p1, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v0, v1, 0x168

    .line 50
    .local v0, "newOriention":I
    iget v1, p0, Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;->oldOri:I

    if-eq v0, v1, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    .line 52
    iput v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;->oldOri:I

    goto :goto_0
.end method

.method public resetOrientationToDefault()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;->oldOri:I

    .line 40
    return-void
.end method
