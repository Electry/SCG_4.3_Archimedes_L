.class Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PanoramaModule;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    .line 273
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 274
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 281
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientation:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$000(Lcom/lenovo/scg/camera/PanoramaModule;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/lenovo/scg/camera/CameraUtil;->roundOrientation(II)I

    move-result v2

    # setter for: Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientation:I
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$002(Lcom/lenovo/scg/camera/PanoramaModule;I)I

    .line 285
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$000(Lcom/lenovo/scg/camera/PanoramaModule;)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v2}, Lcom/lenovo/scg/camera/PanoramaModule;->access$100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    add-int v0, v1, v2

    .line 286
    .local v0, "orientationCompensation":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$200(Lcom/lenovo/scg/camera/PanoramaModule;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # setter for: Lcom/lenovo/scg/camera/PanoramaModule;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->access$202(Lcom/lenovo/scg/camera/PanoramaModule;I)I

    .line 288
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    goto :goto_0
.end method
