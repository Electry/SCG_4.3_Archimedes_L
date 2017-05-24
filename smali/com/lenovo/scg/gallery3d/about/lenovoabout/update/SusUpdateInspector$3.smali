.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$3;
.super Ljava/lang/Object;
.source "SusUpdateInspector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->handleUpdateInfo(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

.field final synthetic val$update_info:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$3;->val$update_info:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$3;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$3;->val$update_info:Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->onUpdateInternal(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    .line 158
    return-void
.end method
