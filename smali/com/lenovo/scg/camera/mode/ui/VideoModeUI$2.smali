.class Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;
.super Ljava/lang/Object;
.source "VideoModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->initFlashBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->isUnableFlash:Z

    if-eqz v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$300(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    # setter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$302(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;Z)Z

    .line 352
    const-string v1, "VideoModeUI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlashSwitch is changed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$300(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "on"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$100(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Lcom/lenovo/scg/camera/mode/VideoMode;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$300(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->setFlashStatus(Z)V

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFlashSwitch:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$400(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoFlashOn:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$300(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02036c

    :goto_3
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 352
    :cond_2
    const-string/jumbo v0, "off"

    goto :goto_2

    .line 355
    :cond_3
    const v0, 0x7f02036a

    goto :goto_3
.end method
