.class Lcom/lenovo/scg/camera/smartengine/SmartEngineView$3;
.super Ljava/lang/Object;
.source "SmartEngineView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SmartEngineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$3;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSavePreview(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmpPreviewWithClip"    # Landroid/graphics/Bitmap;

    .prologue
    .line 907
    const-string/jumbo v1, "panhui1"

    const-string v2, "mISavePreviewWithClip, send message to hander!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 909
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 910
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 911
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$3;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 912
    return-void
.end method
