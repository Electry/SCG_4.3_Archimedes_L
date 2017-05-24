.class public abstract Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;
.super Ljava/lang/Object;
.source "MiniCameraAbstractCallbackBase.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractCallbackBase"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFirst:Z

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mPreviewFormat:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mPreviewWidth:I

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 43
    iget-boolean v4, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mIsFirst:Z

    if-nez v4, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 47
    .local v2, "para":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 48
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iput v4, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mPreviewWidth:I

    .line 49
    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    iput v4, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mPreviewHeight:I

    .line 51
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mPreviewFormat:I

    .line 53
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setCameraBootEndTime()V

    .line 54
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->getCameraBootTime()J

    move-result-wide v0

    .line 55
    .local v0, "boottime":J
    const-string/jumbo v4, "minicameraboottime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "minicameraboottime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/minicamera/callback/MiniCameraAbstractCallbackBase;->mIsFirst:Z

    .line 63
    .end local v0    # "boottime":J
    .end local v2    # "para":Landroid/hardware/Camera$Parameters;
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    return-void
.end method
