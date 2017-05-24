.class Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;
.super Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCGCameraOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/CameraActivity;

    .line 249
    invoke-direct {p0, p2}, Lcom/lenovo/scg/common/utils/camera/CameraOrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 251
    return-void
.end method


# virtual methods
.method public onCameraOrientationChanged(I)V
    .locals 1
    .param p1, "neworiention"    # I

    .prologue
    .line 265
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraActivity$SCGCameraOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/CameraActivity;

    # getter for: Lcom/lenovo/scg/camera/CameraActivity;->mCurrentModule:Lcom/lenovo/scg/camera/CameraModule;
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraActivity;->access$100(Lcom/lenovo/scg/camera/CameraActivity;)Lcom/lenovo/scg/camera/CameraModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/CameraModule;->onOrientationChanged(I)V

    goto :goto_0
.end method

.method public onCameraOrientationChangedForPanorama(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 258
    return-void
.end method
