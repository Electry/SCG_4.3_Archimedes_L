.class Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "NetPriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Runnable;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory$1;->this$0:Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory$1;->this$0:Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;

    # getter for: Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;->mPriority:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;->access$000(Lcom/lenovo/scg/gallery3d/net/NetPriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 46
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 47
    return-void
.end method
