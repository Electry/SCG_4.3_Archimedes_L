.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;
.super Ljava/lang/Object;
.source "ShortcutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initResetButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V
    .locals 0

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 1418
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideShortcutPanel(Z)Z

    .line 1419
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    new-instance v2, Lcom/lenovo/scg/camera/RotateDialogController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1900(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    const v5, 0x7f04016a

    invoke-direct {v2, v3, v5}, Lcom/lenovo/scg/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    # setter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1802(Lcom/lenovo/scg/camera/shortcut/ShortcutView;Lcom/lenovo/scg/camera/RotateDialogController;)Lcom/lenovo/scg/camera/RotateDialogController;

    .line 1420
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1900(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearAllPopupWindow()V

    .line 1421
    new-instance v4, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7$1;-><init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;)V

    .line 1428
    .local v4, "runnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1800(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/RotateDialogController;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$2100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0136

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$2100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$2100(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1431
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10e

    :goto_0
    # setter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1702(Lcom/lenovo/scg/camera/shortcut/ShortcutView;I)I

    .line 1432
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1800(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)Lcom/lenovo/scg/camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Lcom/lenovo/scg/camera/RotateDialogController;->setOrientation(IZ)V

    .line 1433
    return-void

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$7;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$1700(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)I

    move-result v0

    goto :goto_0
.end method
