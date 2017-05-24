.class Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;
.super Ljava/lang/Object;
.source "RewindMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/rewind/DecodeTool$OnDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDecode([B)V
    .locals 4
    .param p1, "outData"    # [B

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1200(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1374
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1362
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mGroupShot:Lcom/morpho/core/GroupShot;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1300(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Lcom/morpho/core/GroupShot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/morpho/core/GroupShot;->attach([BI)I

    .line 1364
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1200(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mSaveInput:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1400(Lcom/lenovo/scg/camera/mode/RewindMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1366
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rewind_input"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1500(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1600(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mPreSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1600(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    move-result-object v3

    iget v3, v3, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".nv21"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->saveFile([BLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1700(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;[BLjava/lang/String;Ljava/lang/String;)V

    .line 1369
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # operator++ for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1508(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)I

    .line 1370
    const-string v0, "REwindWorkThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_IMG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1500(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mbInit:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1200(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->mCaptureNum:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1500(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread$1;->this$1:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    # invokes: Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->onDetectImage()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->access$1800(Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
