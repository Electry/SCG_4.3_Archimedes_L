.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$12;
.super Ljava/lang/Thread;
.source "BoxControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->startWorker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$12;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->workerRun()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$2100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V

    .line 688
    return-void
.end method
