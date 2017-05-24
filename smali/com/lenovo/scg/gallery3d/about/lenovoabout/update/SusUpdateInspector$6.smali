.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$6;
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


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$6;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$6;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    const-string/jumbo v1, "resultion is EXCEPTION."

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->onError(Ljava/lang/String;)V

    .line 179
    return-void
.end method
