.class final Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostViewPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/PhotoModule$1;

    .prologue
    .line 2333
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$4902(Lcom/lenovo/scg/camera/PhotoModule;J)J

    .line 2338
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToPostViewCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/lenovo/scg/camera/PhotoModule;->access$4900(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mShutterCallbackTime:J
    invoke-static {v4}, Lcom/lenovo/scg/camera/PhotoModule;->access$4700(Lcom/lenovo/scg/camera/PhotoModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    return-void
.end method
