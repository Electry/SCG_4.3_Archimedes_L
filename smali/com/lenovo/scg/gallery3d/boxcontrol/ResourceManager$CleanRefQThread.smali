.class Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;
.super Ljava/lang/Thread;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CleanRefQThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Puzzle_resourcemanager_release_res_thread"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->isRunning:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;

    .line 202
    .local v1, "ref":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;
    :goto_1
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 204
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destory image reference:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mIconCache:Ljava/util/Map;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .end local v1    # "ref":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;
    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;

    .line 207
    .restart local v1    # "ref":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;
    goto :goto_1

    .line 210
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$CleanRefQThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ref":Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;
    :cond_1
    return-void
.end method
