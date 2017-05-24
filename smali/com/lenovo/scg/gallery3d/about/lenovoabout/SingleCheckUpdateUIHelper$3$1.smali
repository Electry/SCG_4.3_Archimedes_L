.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;
.super Ljava/lang/Object;
.source "SingleCheckUpdateUIHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mCheckUpdateStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v0

    .line 121
    .local v0, "update_info":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->downloadUpdate()V

    .line 129
    .end local v0    # "update_info":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mCheckUpdateStatus:I

    if-ne v1, v3, :cond_0

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->showToast()V

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->setForceShowPromt(Z)V

    .line 127
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3$1;->this$1:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v1, v3, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->asyncCheckUpdate(ZZ)V

    goto :goto_0
.end method
