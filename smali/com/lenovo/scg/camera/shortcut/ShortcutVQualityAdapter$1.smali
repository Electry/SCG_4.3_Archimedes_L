.class Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutVQualityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    const-string v0, "ShortcutVQualityAdapter"

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

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v1

    const-string v2, "camera_setting_video_quality_key"

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAllValues:[Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mSupportIndices:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;->access$300(Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    move-result-object v0

    const-string/jumbo v1, "video_quality"

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;->hideBigPanel(Ljava/lang/String;)V

    .line 120
    return-void
.end method
