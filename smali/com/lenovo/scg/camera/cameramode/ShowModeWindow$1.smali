.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initOtherProModeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 250
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraConfig;->isQRCodeSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v1

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->createCameraMode(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Lcom/lenovo/scg/camera/cameramode/CameraMode;

    move-result-object v0

    .line 256
    .local v0, "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initModeView(Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V
    invoke-static {v2, v0, v1, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 260
    .end local v0    # "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 263
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mFirstInitProModeViewsSize:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v1

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeViewsSize:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 264
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->PRO_MODES_CMCC:[Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/CameraModeFactory;->createCameraMode(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Lcom/lenovo/scg/camera/cameramode/CameraMode;

    move-result-object v0

    .line 265
    .restart local v0    # "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initModeView(Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V
    invoke-static {v2, v0, v1, v4}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    .end local v0    # "cameraMode":Lcom/lenovo/scg/camera/cameramode/CameraMode;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$700(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_4

    .line 270
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initMainHandler()V
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V

    .line 272
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$1;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$700(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x44c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
