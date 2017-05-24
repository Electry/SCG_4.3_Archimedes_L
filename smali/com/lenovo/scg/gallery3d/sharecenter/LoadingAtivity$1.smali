.class Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity$1;
.super Ljava/lang/Object;
.source "LoadingAtivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "LoadingActivity_finishactivity_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity$1;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;->finish()V

    .line 24
    return-void
.end method
