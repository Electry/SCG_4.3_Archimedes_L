.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$1;
.super Ljava/lang/Object;
.source "LenovoUpdateInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->createDialog()V
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
    .line 134
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const v1, 0x7f0f0975

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->shortToast(I)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mUpdateManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->downloadUpdate()V

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
