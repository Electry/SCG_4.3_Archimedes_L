.class Lcom/lenovo/scg/camera/PhotoUI$2;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI$2;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 293
    sub-int v3, p4, p2

    .line 294
    .local v3, "width":I
    sub-int v1, p5, p3

    .line 296
    .local v1, "height":I
    move v2, v3

    .line 297
    .local v2, "w":I
    move v0, v1

    .line 298
    .local v0, "h":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI$2;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v4}, Lcom/lenovo/scg/camera/PhotoUI;->access$200(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_0

    .line 299
    move v2, v1

    .line 300
    move v0, v3

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI$2;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPreviewWidth:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/PhotoUI;->access$300(Lcom/lenovo/scg/camera/PhotoUI;)I

    move-result v4

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI$2;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPreviewHeight:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/PhotoUI;->access$400(Lcom/lenovo/scg/camera/PhotoUI;)I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 303
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI$2;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # setter for: Lcom/lenovo/scg/camera/PhotoUI;->mPreviewWidth:I
    invoke-static {v4, v3}, Lcom/lenovo/scg/camera/PhotoUI;->access$302(Lcom/lenovo/scg/camera/PhotoUI;I)I

    .line 304
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI$2;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # setter for: Lcom/lenovo/scg/camera/PhotoUI;->mPreviewHeight:I
    invoke-static {v4, v1}, Lcom/lenovo/scg/camera/PhotoUI;->access$402(Lcom/lenovo/scg/camera/PhotoUI;I)I

    .line 305
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI$2;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v4}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v4

    invoke-interface {v4, v3, v1, v2, v0}, Lcom/lenovo/scg/camera/PhotoController;->onScreenSizeChanged(IIII)V

    .line 307
    :cond_2
    return-void
.end method
