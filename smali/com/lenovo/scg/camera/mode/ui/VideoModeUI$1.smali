.class Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;
.super Ljava/lang/Object;
.source "VideoModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->initViews()V
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
    .line 268
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mBestLiveOn:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$200(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mBestLiveOn:Z
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$202(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;Z)Z

    .line 273
    const-string v1, "VideoModeUI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBestLiveOn is changed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mBestLiveOn:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$200(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "on"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mBestLiveOn:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$200(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->setBestLive(Z)V

    .line 276
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_1
.end method
