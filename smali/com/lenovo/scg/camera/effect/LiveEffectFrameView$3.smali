.class Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;
.super Ljava/lang/Object;
.source "LiveEffectFrameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->startEffectPicTaken(Landroid/os/Handler;[BIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

.field final synthetic val$IsOneShot:Z

.field final synthetic val$effectHandler:Landroid/os/Handler;

.field final synthetic val$height:I

.field final synthetic val$jpegData:[B

.field final synthetic val$orientation:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;[BIIIZLandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    iput-object p2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$jpegData:[B

    iput p3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$width:I

    iput p4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$height:I

    iput p5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$orientation:I

    iput-boolean p6, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$IsOneShot:Z

    iput-object p7, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$effectHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->access$100(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$jpegData:[B

    iget v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$width:I

    iget v3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$height:I

    iget v4, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$orientation:I

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$IsOneShot:Z

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->ReadYUVFBO([BIIIZ)[B

    move-result-object v7

    .line 140
    .local v7, "effectData":[B
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->mFrameManager:Lcom/lenovo/scg/camera/effect/EffectFrameManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->access$100(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Lcom/lenovo/scg/camera/effect/EffectFrameManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->val$effectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v7}, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->sendEffectSaveFinish(Landroid/os/Handler;[B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v7    # "effectData":[B
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v6

    .line 142
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView$3;->this$0:Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;

    # getter for: Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;->access$200(Lcom/lenovo/scg/camera/effect/LiveEffectFrameView;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startEffectPicTaken error, because of OOM"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
