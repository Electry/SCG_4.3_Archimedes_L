.class Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog$1;->this$0:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog$1;->this$0:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog$1;->this$0:Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;

    # invokes: Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->processList()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;->access$000(Lcom/lenovo/scg/gallery3d/util/Profile$Watchdog;)V

    .line 74
    monitor-exit v1

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
