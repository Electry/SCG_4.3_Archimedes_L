.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$2;
.super Ljava/lang/Object;
.source "LenovoUpdateInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->cbDontPromtNext:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setPromtNewVersion(Z)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->finish()V

    .line 168
    return-void
.end method
