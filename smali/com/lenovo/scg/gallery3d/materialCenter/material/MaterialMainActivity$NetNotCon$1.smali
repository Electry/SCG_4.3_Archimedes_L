.class Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$1;
.super Ljava/lang/Object;
.source "MaterialMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->init_net_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 626
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 627
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 633
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon$1;->this$1:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity$NetNotCon;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->mActivity:Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->access$300(Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;)Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/materialCenter/material/MaterialMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 634
    return-void

    .line 629
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .restart local v1    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method
