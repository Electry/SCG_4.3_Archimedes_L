.class Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$1;
.super Ljava/lang/Object;
.source "TaskThreadPool.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;-><init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Runnable;
    .param p2, "arg1"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 63
    const-string/jumbo v0, "wangwf1_TaskThreadPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectedExecution discard current task. type =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->mType:Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;->access$000(Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool;)Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/weibo/galleryFileManager/TaskThreadPool$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    return-void
.end method
