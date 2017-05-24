.class Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$2;
.super Ljava/lang/Object;
.source "Panorama2DLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    const-string v0, "PanoramaModeUI_2D"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mClickable:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1500(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "PanoramaModeUI_2D"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    .line 226
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$300(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    :cond_0
    return-void
.end method
