.class Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutAntibandingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    const-string v0, "ShortcutAntibandingAdapter"

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
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    const-string v1, "camera_setting_pin_shan_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mNameValue:[Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;->access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    move-result-object v0

    const-string v1, "antibanding"

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;->hideBigPanel(Ljava/lang/String;)V

    .line 93
    return-void
.end method
