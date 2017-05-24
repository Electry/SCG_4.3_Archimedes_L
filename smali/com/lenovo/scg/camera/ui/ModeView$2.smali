.class Lcom/lenovo/scg/camera/ui/ModeView$2;
.super Ljava/lang/Object;
.source "ModeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/ModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/ModeView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/ModeView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ModeView$2;->this$0:Lcom/lenovo/scg/camera/ui/ModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    const-string v1, "ModeView"

    const-string/jumbo v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    # getter for: Lcom/lenovo/scg/camera/ui/ModeView;->mMapId2Mode:Ljava/util/HashMap;
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ModeView;->access$000()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 114
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ModeView$2;->this$0:Lcom/lenovo/scg/camera/ui/ModeView;

    # getter for: Lcom/lenovo/scg/camera/ui/ModeView;->mController:Lcom/lenovo/scg/camera/cameramode/CameraModeController;
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ModeView;->access$100(Lcom/lenovo/scg/camera/ui/ModeView;)Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/cameramode/CameraModeController;->enterModeClick(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 115
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ModeView$2;->this$0:Lcom/lenovo/scg/camera/ui/ModeView;

    # getter for: Lcom/lenovo/scg/camera/ui/ModeView;->mModeListView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/ModeView;->access$200(Lcom/lenovo/scg/camera/ui/ModeView;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 117
    return-void
.end method
