.class Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;
.super Ljava/lang/Object;
.source "AutoUpdateDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->access$000(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->access$002(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 81
    :cond_0
    if-eqz p2, :cond_2

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->access$000(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEW_VERSION_REMIND"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCurrentVersionCode:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->access$100(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCurrentVersionCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->access$100(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->access$000(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OLD_VERSION_CODE"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mCurrentVersionCode:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->access$100(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->access$000(Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEW_VERSION_REMIND"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
