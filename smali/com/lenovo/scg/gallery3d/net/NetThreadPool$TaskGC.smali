.class Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;
.super Ljava/lang/Object;
.source "NetThreadPool.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/net/NetThreadTask$TaskGcListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskGC"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/net/NetThreadPool;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;->this$0:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/net/NetThreadPool;Lcom/lenovo/scg/gallery3d/net/NetThreadPool$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/net/NetThreadPool;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/net/NetThreadPool$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;-><init>(Lcom/lenovo/scg/gallery3d/net/NetThreadPool;)V

    return-void
.end method


# virtual methods
.method public onTaskGc(Lcom/lenovo/scg/gallery3d/net/NetThreadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/lenovo/scg/gallery3d/net/NetThreadTask;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;->this$0:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    # getter for: Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->access$100(Lcom/lenovo/scg/gallery3d/net/NetThreadPool;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 130
    .local v0, "nIndex":I
    if-ltz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/net/NetThreadPool$TaskGC;->this$0:Lcom/lenovo/scg/gallery3d/net/NetThreadPool;

    # getter for: Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->mArrTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/net/NetThreadPool;->access$100(Lcom/lenovo/scg/gallery3d/net/NetThreadPool;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method
