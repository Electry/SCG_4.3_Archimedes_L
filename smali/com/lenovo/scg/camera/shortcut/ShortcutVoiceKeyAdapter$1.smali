.class Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter$1;
.super Ljava/lang/Object;
.source "ShortcutVoiceKeyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    const-string v0, "ShortcutVoiceKeyAdapter"

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

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;->access$100(Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    const-string v1, "camera_setting_voice_key_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;->mNameValue:[Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;->access$000(Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter$1;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;->access$200(Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;)Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    move-result-object v0

    const-string/jumbo v1, "voicekey"

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;->hideBigPanel(Ljava/lang/String;)V

    .line 95
    return-void
.end method
