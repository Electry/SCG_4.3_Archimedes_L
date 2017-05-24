.class Lcom/lenovo/scg/camera/PhotoModule$NegativeOnClickListener;
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
    name = "NegativeOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$NegativeOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1718
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_user_open_gps"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1719
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NegativeOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$4000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/LightRotateDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NegativeOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$4000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/LightRotateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/LightRotateDialog;->dismissDialog()Z

    .line 1722
    :cond_0
    return-void
.end method
