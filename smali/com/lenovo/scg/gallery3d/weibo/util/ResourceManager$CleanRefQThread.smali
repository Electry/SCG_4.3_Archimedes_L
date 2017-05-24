.class Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$CleanRefQThread;
.super Ljava/lang/Thread;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CleanRefQThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 202
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->isRunning:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->access$300(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->access$400(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;

    .line 204
    .local v1, "ref":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;
    :goto_1
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "url":Ljava/lang/String;
    const-string/jumbo v3, "panhui4_ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destory image reference:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mIconCache:Ljava/util/Map;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->access$000(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$CleanRefQThread;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->mRefQ:Ljava/lang/ref/ReferenceQueue;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;->access$400(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .end local v1    # "ref":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;
    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;

    .line 209
    .restart local v1    # "ref":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;
    goto :goto_1

    .line 212
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$CleanRefQThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "ref":Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;
    :cond_1
    return-void
.end method
