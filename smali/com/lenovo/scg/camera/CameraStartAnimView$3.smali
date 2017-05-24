.class Lcom/lenovo/scg/camera/CameraStartAnimView$3;
.super Ljava/lang/Object;
.source "CameraStartAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/CameraStartAnimView;->endDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraStartAnimView;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$3;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$3;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraStartAnimView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 231
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 232
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$3;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$3;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mAninFinishListener:Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$800(Lcom/lenovo/scg/camera/CameraStartAnimView;)Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$3;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mAninFinishListener:Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$800(Lcom/lenovo/scg/camera/CameraStartAnimView;)Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;->onFinish()V

    .line 236
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$3;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mAninFinishListener:Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$802(Lcom/lenovo/scg/camera/CameraStartAnimView;Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;)Lcom/lenovo/scg/camera/CameraStartAnimView$AninFinishListener;

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/CameraStartAnimView$3;->this$0:Lcom/lenovo/scg/camera/CameraStartAnimView;

    # getter for: Lcom/lenovo/scg/camera/CameraStartAnimView;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraStartAnimView;->access$500(Lcom/lenovo/scg/camera/CameraStartAnimView;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f10015a

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_2
    return-void
.end method
