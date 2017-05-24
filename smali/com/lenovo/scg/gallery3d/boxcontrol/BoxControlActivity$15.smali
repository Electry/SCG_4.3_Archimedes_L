.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$15;
.super Ljava/lang/Object;
.source "BoxControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->checkScanning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

.field final synthetic val$scanning:Z


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Z)V
    .locals 0

    .prologue
    .line 837
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$15;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$15;->val$scanning:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 841
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Box_control_checkscanning_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$15;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$15;->val$scanning:Z

    # invokes: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->checkScanningFinished(Z)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$2500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Z)V

    .line 843
    return-void
.end method
