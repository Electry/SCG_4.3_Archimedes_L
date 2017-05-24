.class Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;
.super Ljava/lang/Object;
.source "RemindDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->MOBILE:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$100(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$300(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$200(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindMobile(Z)V

    .line 129
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mBetrueRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$400(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mBetrueRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$400(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 134
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mType:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$100(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$300(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->access$200(Lcom/lenovo/scg/gallery3d/ui/RemindDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindWifi(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$3;->this$0:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->dismiss()V

    goto :goto_2
.end method
