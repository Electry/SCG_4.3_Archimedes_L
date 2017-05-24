.class Lcom/lenovo/scg/camera/way/VoiceWay$3;
.super Ljava/lang/Thread;
.source "VoiceWay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/way/VoiceWay;->checkDB()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/VoiceWay;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/VoiceWay;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VoiceWay$3;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 288
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 289
    .local v2, "t1":J
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VoiceWay$3;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$300(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v4, "voicedb.zip"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->DB_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lenovo/scg/common/utils/file/ZipUtils;->unzip(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 290
    const-string v1, "VREngineVoiceWay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "upzip db cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VoiceWay$3;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$700(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    .end local v2    # "t1":J
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VoiceWay$3;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$700(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lcom/lenovo/scg/camera/way/VoiceWay$3;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$700(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v1
.end method
