.class Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutFunctionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    const-string v0, "ShortcutFunctionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item click : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;->access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    const-string v1, "camera_setting_takepicture_type_key"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->showTips(Landroid/content/Context;I)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;->access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    move-result-object v0

    const-string v1, "function"

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;->hideBigPanel(Ljava/lang/String;)V

    .line 96
    return-void
.end method
