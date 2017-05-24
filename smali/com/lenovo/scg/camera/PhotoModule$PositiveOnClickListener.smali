.class Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositiveOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v0, "openGPSIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1734
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "camera_setting_user_open_gps"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1736
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$4000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/LightRotateDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1737
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;
    invoke-static {v1}, Lcom/lenovo/scg/camera/PhotoModule;->access$4000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/LightRotateDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/LightRotateDialog;->dismissDialog()Z

    .line 1739
    :cond_0
    return-void
.end method
