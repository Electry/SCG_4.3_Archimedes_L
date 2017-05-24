.class Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutMeteringAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    const-string v0, "ShortcutMeteringAdapter"

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

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    const-string v2, "camera_setting_ce_guang_key"

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mValueList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;->access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    move-result-object v0

    const-string/jumbo v1, "metering"

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;->hideBigPanel(Ljava/lang/String;)V

    .line 127
    return-void
.end method
