.class public final Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;
.super Ljava/lang/Object;
.source "BestLive.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrontSurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "heigh"    # I

    .prologue
    .line 112
    const-string v0, "BestLive"

    const-string/jumbo v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x1

    .line 78
    :try_start_0
    const-string v3, "BestLive"

    const-string/jumbo v4, "surfaceCreated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$000(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)Landroid/hardware/Camera;

    move-result-object v3

    if-nez v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$002(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 81
    const-string v3, "BestLive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "open FrontCamera != null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$000(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$000(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 84
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontWidth:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$100(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontHeight:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$200(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)I

    move-result v4

    # invokes: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->isSupportedPreviewSize(Landroid/hardware/Camera$Parameters;II)Z
    invoke-static {v2, v1, v3, v4}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$300(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;Landroid/hardware/Camera$Parameters;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$100(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$200(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 94
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$000(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 95
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$000(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 96
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$000(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)Landroid/hardware/Camera;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 97
    const-string v2, "BestLive"

    const-string/jumbo v3, "prepare mFrontCamera.startPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # getter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mFrontCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$000(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 99
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    # invokes: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->activatePreviewCallBack()V
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$500(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;)V

    .line 100
    const-string v2, "BestLive"

    const-string/jumbo v3, "surfaceCreated done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_2
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 88
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 90
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;->this$0:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    const/4 v3, 0x1

    # setter for: Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->mNeedFrontYUVResize:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->access$402(Lcom/lenovo/scg/camera/mode/bestlive/BestLive;Z)Z

    .line 91
    const-string v2, "BestLive"

    const-string v3, "Need Front YUVResize!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 104
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BestLive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceCreated exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v2, "BestLive"

    const-string/jumbo v3, "surfaceCreated mFrontCamera != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 116
    const-string v0, "BestLive"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
